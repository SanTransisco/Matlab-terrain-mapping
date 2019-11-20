classdef Drone
    %DRONE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Current_Location
        Drone_Path
        Target_Path
    end
    
    methods
        function obj = Drone(inputArg1,inputArg2)
            %DRONE Construct an instance of this class
            %   Detailed explanation goes here
            obj.Property1 = inputArg1 + inputArg2;
        end
        
        function fly_to(obj, [x,y,z], speed, partitions)
            
        end
             
        function [M,B] = get_linear_approx(X)
            M = zeroes(length(X)-1);
            B = M;
            for i = 1:length(X)-1
               [m,b] = get_line(X(i), X(i-1));
               M(i) = m;
               B(i) = b;
           end
        end
        
        function mag = magnitude(X)
           mag = sqrt(X.*X);
        end
        
        function [m,b] = get_line(x1,x2)
           m = x2-x1;
           b = x1;
        end
    end
end

