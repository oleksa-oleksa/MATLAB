/********************************************************************************/
/*******	Labor für Automatisierungstechnik						*************/
/*******    Regler - AKTORIK
/********************************************************************************/
/*******	Datei:	Regler.c    enhält verschiedene Reglertypen        **********/
/********************************************************************************/

// Allgemeine Festlegungen für den Präprozessor                         
#pragma small	// Speichermodell: 'small'
typedef unsigned int WORD;       // 16-Bit Wort
#define DA_OG 0x7FFF              // DA-Wandler obere Grenze
#define DA_NULL 0x8000            // DA-Wandler Null
#include <absacc.h>				// Makros zum Zugriff auf absol. Speicheradressen
#include <REG167.H>					// Register-Satz des C167ers
  // Definition der DA-Wandler-Register
#define   CS_DA 0x080000							// CS\-Basis-Adresse für DA
#define	DA1_W MVAR(int,CS_DA + 0x0)	// DA-Wandler 1: Write
#define	DA2_W MVAR(int,CS_DA + 0x2)	// DA-Wandler 1: Write
#define	DA3_W MVAR(int,CS_DA + 0x4)	// DA-Wandler 1: Write
#define	LDAC MVAR( int,CS_DA + 0x6)	// Convert
// Einbinden von Include-Dateien 
#include <REG167.H>					// Register-Satz des C167ers
#include <stdio.h>            		// Standard I/O Funktionen
#include <math.h>       			 /* Mathe Bibliothek */
extern int  drift_time;		// Driftkompensations Zeit
extern int  Zaehler_neu; 		// neuer Zaehlerstand
extern int  Zaehler_alt;		// alter Zaehlerstand
extern int  Teilistwert;		// Teilistwert (Drehzahl des Motors)
extern WORD T3IMAGE;       // Inkremental-Geber Abbild      
extern int BTIMER,		// Basis Zeit
           Auto;       // Automatik
extern long Ist_Position,Ist_Pos_alt;		// gemessene Position und alte Position
extern float Diff_Pos;		  // Führungsgröße
//long Soll_Pos		 = 0;	  // vorgegebene Position

extern long x1s,x2s,           // Position Sollwert
 			x1,               // Position Istwert
 			xe;               // Regelfehler
extern float xeI,             // Integral des Regelfehlers
			x1sv,x2sv,         // Ausgang des Vorfilters GV
            x1se,x2se;        // Fehler des Vorfilters GV
extern float T_TV;            // Abtaszeit/ Zeitkonstante Beobachter;
extern long		x2;           // Geschwindigkeit

extern int PZ;                  // Pulszahl
extern float pi,F2pi_PZ,F2pi_PZT,F10_3FFF,FPZT_2pi,FPZ_2PI;        // pi
extern long  U,UI;				// Stellgröße
extern long  U_alt;			// alte Stellgröße
extern long  U1;			// Stellgröße
extern long  U2;			// Stellgröße
extern float k1,				// Zustandsregler Verstärkung k1 
	        k2,  		    // Zustandsregler Verstärkung k2
	        k3,  		    // Zustandsregler Verstärkung k3
            kr,T_TR,        // PI-Drehzahlregler
    		I_Anteil_OG;    // I-Anteil oberer Grenzwert

extern  float k1e,k2e;      // Zustandsregler
extern float T_TB;        // Abtaszeit: Zeitkonstante Beobachter;
extern float x1B,                   // x1 des Beobachters
      		x1BA,                  // alter Wert davon
	  		x1eB,  					// Beobachter-Fehler
	 		x2B,					// x2 des Beobachters
	  		L1;             	     // Beobachter-Verstärkung
// Vollständiger Beobachter VB2
extern float  x2BA,           // alter Wert davon
	  SL1,             	     // Beobachter-Verstärkung
	  SL2,             	     // Beobachter-Verstärkung
	  H1,             	     // Modell: Eingangs Matrix
	  H2,             	     // Modell: Eingangs Matrix
	  phi12,             	     // Modell: System Matrix
	  phi22;             	     // Modell: System Matrix

extern float T;			// Abtastzeit


extern int 	Rechenzeit_T0,
 			Rechenzeit_T6,
 			Rechenzeit_T0, 
 			Rechenzeit_T6A;

/*
 **************************************************** 
 *  Zustandsreger Starre Mechanik                   *
 **************************************************** 
*/
void Drehzahlregler_P(void)  // Drehzahlregler P
{                            // P Regler
	xe=x2s-x2;               // Regelabweichung
        U=(long)xe*43.5;     // Stellgroesse        
}

void Drehzahlregler_PI(void)  // Drehzahlregler PI 
                              // PI-Anteil
{
	int DAC_15bit = 3272 // (2**15) / 10
    
    
    xe = (x2s-x2) * 3.1415;   // Regelabweichung
                              // mit PI multiplizieren, da wir in der Similation Omega schicken,
                              // aber programmieren mit den Inkremente
    
    // Werte aus Programm, die man verwenden muss
    xeI = xeI + ( xe * (1.0 / 1000.0)); // 1 ms Abtastezeit
    
    // Werte aus Matlab
    float ke = 0.0032;
    float ki = 0.371;
    
	U = (long)xe * ke * DAC_15bit + xeI * ki * DAC_15bit;   // Stellgröße U
}


void Winkel_Messung(void)
{
	T3IMAGE=T3;                // T3:Inkremental-Geber lesen
	Zaehler_neu  = T3IMAGE;
	Teilistwert	 =	Zaehler_neu - Zaehler_alt;
	Zaehler_alt	 =	Zaehler_neu;
    Ist_Pos_alt  = Ist_Position;
	Ist_Position =	Ist_Position + Teilistwert;
	x1=Ist_Position;     // Istposition in ink
	x2=Ist_Position-Ist_Pos_alt;     // Geschwindigkeit in ink/T

}

void Stellgroesse_Ausgabe(void)
{

	// Begrenzung der Stellgröße 
	if (U >=  DA_OG) U =  DA_OG;
	if (U <= -DA_OG) U = -DA_OG;
		// Ausgabe der Stellgröße
	DA1_W =(int)(U+DA_NULL);      // Auf DA-Wandler 1 Stellgröße Ausgeben
//	DA2_W=(Teilistwert+DA_NULL); 				// Geschwindigkeit Ausgeben
	DA2_W=(int)( ((int)(xe)<<4 ) + DA_NULL); // Regelfehler Ausgeben
//	DA2_W=(int)( ((int)(x2B*FPZT_2pi)<<8 ) + DA_NULL); // Regelfehler Ausgeben
	DA3_W=((Teilistwert<<8)+DA_NULL); 				// Geschwindigkeit Ausgeben
	LDAC = 0x0001;           // und Wert wandeln
}



