function eta = getCityEta(city)

if(city == "Berlin")
    %if input is Berlin

    eta = [  0  6  5 10 27 10  7 10  8 20  9;
             6  0  6  7 32 14 12 11  9 21 17;
             5  6  0  9 34 16 15 15 12 22 16;
            10  7  9  0 31 16 19 16 14 20 24;
            27 32 24 31  0 26 21 25 23 26 37;
            10 14 16 16 26  0 13 14 12 12 24;
             7 12 15 19 21 13  0  9  9 25 17;
            10 11 15 16 25 14  9  0  5 24 21;
             8  9 12 14 23 12  9  5  0 22 20;
            20 21 22 20 26 12 25 24 22  0 17;
             9 17 16 24 37 24 17 21 20 17  0;
          ];
    
elseif(city == "Paris")
    %if input is Paris
    eta = [];
elseif(city == "Rome")
    %if input is Rome
    eta = [];
elseif(city == "Tokyo")
    %if input is Tokyo
    eta = [];
else
    %if nothing else is true, return a test data set.
    %ST: This method was provided by the original author and has been
    %    adapted to fit our program! (from: genEta.m). It also utilizes the
    %    cityDistance.m file that calculates the euclidean distance between
    %    two sights.
    sights = getCityDataSet(city);
    numSights = length(sights);
    eta = zeros(numSights, numSights);

    % Calculate the upper triangle of eta
    for fromSight = 1:numSights
	    for toSight = fromSight:numSights
		    if (fromSight == toSight)
			    continue;
		    else
			    eta(fromSight, toSight) = 1.0/cityDistance(sights(fromSight), sights(toSight));
		    end
	    end
    end
    
    % Euclidean distance is symetric, upper and lower triangles should be identical
    eta = eta + eta';
end 
end