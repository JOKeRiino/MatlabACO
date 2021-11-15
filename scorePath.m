function score = scorePath(cityPerm, cities)

fromCities = cities(cityPerm);
toCities = cities(circshift(cityPerm, [0,1]));

%ST: Sum up all distances from the cities in the array
score = sum(sqrt(abs([fromCities(:).lat] -  [toCities(:).lat]).^2 + abs([fromCities(:).long] - [toCities(:).long]).^2));

end