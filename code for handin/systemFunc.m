% Function describing the system equation used in the UKF
function state = systemFunc(state, noise)
    state = state + ...
        [state(4)*cos(state(3))*0.1; state(4)*sin(state(3))*0.1; ...
            0.1*state(5); 0.1*state(6); 0; 0] ...
        + [0;0;0;0;noise(1);noise(2)];
end