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
    eta = [ 0	32	11	17	18	25	10	16	24;
			32	0	26	26	19	14	37	43	18;
			11	26	0	19	12	9	14	29	13;
			17	26	19	0	20	15	10 	32	21;
			18	19	12	20	0	16	16	21	4; 
			25	14	8	15	16	0	19	24	18;
			10	37	14	12	16	19	0	28	18;
			16	43	29	32	21	24	28	0	24;
			24	18	13	21	4	18	18	24	0;
    ];
    
elseif(city == "Rome")
    %if input is Rome
    eta = [ 0   8  8 14 16 12  7 20 19 18 22;
			8   0  1 11 16 15 17 25 29 28 32;
			8   1  0  5 14 11 17 18 29 28 22;
			14 11  5  0  9  8 14 17 28 28 22;
			16 16 14  9  0  7 13 14 25 25 19;
			12 15 11  8  7  0  8 18 23 22 23;
			7  17 17 14 13  8  0 20 15 14 18;
			20 25 18 17 14 18 20  0 14 14  9;
			19 29 29 28 25 23 15 14  0  1 11;
			18 28 28 28 25 22 14 14  1  0 11;
			22 32 22 22 19 23 18  9 11 11  0;
		];
		
elseif(city == "Tokyo")
    %if input is Tokyo
    eta = [ 0  30 8 29 22 34 41 18;
			30 0  38 6 28 48 40 23;
			8  35 0 33 25 29 37 28;
			33 7  33 0 23 47 39 27;
			20 30 25 29 0 40 36 14;
			32 50 25 46 38 0 19 45;
			45 45 38 40 33 22 0 41;
			17 25 22 22 14 42 35 0;
			];
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