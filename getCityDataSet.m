function sights = getCityDataSet(inputValue)

if(inputValue == 1000)
    %if input is Berlin

    centralStation = struct("y", 52.52514262794553, "x", 13.369401998549902, ...
    "id", 1, "price", 0, "pop", 0, "duration", 0, "name", "station");
    brandenburgGate = struct("y", 52.51640515728868, "x", 13.377704098549703, ...
    "id", 2, "price", 0, "pop", 1, "duration", 30, "name", "gate");
    reichstagBuilding = struct("y", 52.51873769328525, "x", 13.376208656220577, ...
    "id", 3, "price", 0, "pop", 2, "duration", 120, "name", "reichstag");
    memorial = struct("y", 52.514104081035704, "x", 13.378680512043356, ...
    "id", 4, "price", 0, "pop", 3, "duration", 30, "name", "memorial");
    eastSideGallery = struct("y", 52.505257448032204, "x", 13.439771749277382, ...
    "id", 5, "price", 0, "pop", 4, "duration", 45, "name", "eastSide");
    checkpointCharlie = struct("y", 52.5075750694616, "x", 13.390364769714038, ...
    "id", 6, "price", 0, "pop", 10, "duration", 45, "name", "charlie");
    tvTower = struct("y", 52.521069579218974, "x", 13.40920452184171, ...
    "id", 7, "price", 20.5, "pop", 8, "duration", 120, "name", "tvTower");
    oldNationalGallery = struct("y", 52.52096052837539, "x", 13.398309983208197, ...
    "id", 8, "price", 10, "pop", 6, "duration", 150, "name", "oldNational");
    ddrMuseum = struct("y", 52.51971144874204, "x", 13.402700296701948, ...
    "id", 9, "price", 9.8, "pop", 9, "duration", 90, "name", "ddr");
    techMuseum = struct("y", 52.498789620642924, "x", 13.377916785055444, ...
    "id", 10, "price", 8, "pop", 5, "duration", 180, "name", "tech");
    zoo = struct("y", 52.508037121902355, "x", 13.337754698549514, ...
    "id", 11, "price", 16, "pop", 7, "duration", 150, "name", "zoo");

    %ST: return Sights array here like this:
    sights = [centralStation,brandenburgGate,reichstagBuilding,...
        memorial,eastSideGallery,checkpointCharlie,tvTower,oldNationalGallery...
        ddrMuseum,techMuseum,zoo];
    
elseif(inputValue == 2000)
    %if input is Paris

    %SM: All Sights used in PARIS as Data-Structures
    parisEst = struct("y", 48.8758535, "x", 2.3600134, ...
        "id", 21, "price", 0, "pop", 0, "duration", 0, "name", "parisEst");
    eiffelTower = struct("y", 48.8561446, "x", 2.2978204, ...
        "id", 22, "price", 20.0, "pop", 1, "duration", 120, "name", "eiffelTower");
    louvre = struct("y", 48.8624906, "x", 2.3360431, ...
        "id", 23, "price", 17.0, "pop", 6, "duration", 180, "name", "louvre");
    notreDam = struct("y", 48.8527101, "x", 2.3519702, ...
        "id", 24, "price", 0, "pop", 7, "duration", 15, "name", "notreDam");
    arcDeTriomphe = struct("y", 48.8737673, "x", 2.2954441, ...
        "id", 25, "price", 13.0, "pop", 2, "duration", 45, "name", "arcDeTriomphe");
    museeDOrsay = struct("y", 48.8599179, "x", 2.3265828, ...
        "id", 26, "price", 14.0, "pop", 5, "duration", 180, "name", "museeDOrsay");
    centreGP = struct("y", 48.8607767, "x", 2.3517423, ...
        "id", 27, "price", 14.0, "pop", 8, "duration", 180, "name", "centreGeorgesPompidou");
    basilikaSC = struct("y", 48.8868058, "x", 2.3430153, ...
        "id", 28, "price", 8.0, "pop", 4, "duration", 90, "name", "basilikaSacreCoeur");
    avenueDesCE = struct("y", 48.8659369, "x", 2.31967728, ...
        "id", 29, "price", 0, "pop", 3, "duration", 60, "name", "avenueDesCampsElysees");
    
    
    %SM: destSightsParis contains all sight-seeings of Paris above
    sights = [parisEst,eiffelTower,louvre,...
        notreDam,arcDeTriomphe,museeDOrsay,centreGP,basilikaSC...
        avenueDesCE];

elseif(inputValue == 3000)
    %if input is Rome
    sights = 3;
elseif(inputValue == 4000)
    %if input is Tokyo
    sights = 4;
else
    %if nothing is else is true, return a test data set.
    sights = repmat(struct('x', 0, 'y', 0, 'id', 0, 'price', 0, 'pop', 0, 'duration', 0, 'name', ''), 1, 10);

    for i = 1:10
    sights(i).id = i;
    sights(i).pop = i;
    sights(i).x = rand;
    sights(i).y = rand;
    sights(i).price = rand;
    sights(i).duration = rand;
    sights(i).name = "test-data";
    end
end 
end