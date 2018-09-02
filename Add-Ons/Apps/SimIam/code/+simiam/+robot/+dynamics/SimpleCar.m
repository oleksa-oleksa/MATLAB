classdef SimpleCar < simiam.robot.dynamics.Dynamics

% Copyright (C) 2013, Georgia Tech Research Corporation
% see the LICENSE file included with this software
    
    properties
        car_base_length
    end
    
    methods
        function obj = SimpleCar(car_base_length)
            obj = obj@simiam.robot.dynamics.Dynamics();
            obj.car_base_length = car_base_length;
        end
        
        function pose_t_1 = apply_dynamics(obj, pose_t, dt, v, sigma)
            
            options = odeset('RelTol',1e-8,'AbsTol',1e-8);
            [t,z] = ode45(@obj.dynamics, [0 dt], [x_k, y_k, theta_k, v, psi], options);
            
            pose_t_1 = simiam.ui.Pose2D(z(end,1),z(end,2),z(end,3));
        end
        
        function dz = dynamics(obj, t, z)
            dz = zeros(5,1);
                        
            dz(1:2) = z(4)*[cos(z(3));sin(z(3))];
            dz(3) = z(4)/obj.car_base_length*sin(z(5));
        end
        
        function [v, psi] = uni_to_car(obj,v,w)
            L = obj.car_base_length;
            
            psi = atan2(w*L/v, cos(asin((w*L)/v)));
        end
        
        function [v,w] = car_to_uni(obj,v, psi)
            L = obj.car_base_length;
            
            w = v/L*sin(psi);
        end
    end
    
end

