function[distance] = dist2(x1, y1, x2, y2)
    % This function calculates a distance between two points
    % syntax: distance = dist2(x1, y1, x2, y2)
    distance = sqrt((x2-x1)^2 + (y2-y1)^2);
end
