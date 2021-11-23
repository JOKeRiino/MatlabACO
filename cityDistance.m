%Transpone Cities to Coordinate-System
function distance = cityDistance(city1, city2)
distance = sqrt(abs([city1(:).lat] -  [city2(:).lat]).^2 + abs([city1(:).long] - [city2(:).long]).^2);
end