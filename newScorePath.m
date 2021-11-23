function score = newScorePath(score, sightPath, sights, eta)
%ST: Instead of using the old function, that calculated distances and added
%them up, we must now use our eta-matrix to count our score.

%ST: OLD: Sum up all distances from the cities in the array
%score = sum(sqrt(abs([fromCities(:).lat] -  [toCities(:).lat]).^2 + abs([fromCities(:).long] - [toCities(:).long]).^2));

%ST: Score function: Iterate over sightPath, for every sight, get the
%travel time between the sight and the next sight in the array and sum them
%in the score function.

    for x = 1:length(sightPath) - 1
        points = eta(sightPath(x), sightPath(x+1));
        score = score + points;
        %disp(score);
    end

end