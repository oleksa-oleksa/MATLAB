function [ alpha beta ] = leastSquares( x, y )
   x_mean   = sum( x ) / length( x )
   y_mean   = sum( y ) / length( y )

   xy       = sum( x .* y )
   x_square = sum( x.^2 )

   beta     = ( xy - length(x) * y_mean * x_mean )/( x_square - length(x) * x_mean ^2 )
   alpha    = ( y_mean - beta * x_mean )
