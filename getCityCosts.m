function costs = getCityCosts(city)


if(city == "Berlin")
    %if input is Berlin

    costs = [  0  1  1  1  1  1 21 10  9  8 16;
               1  0  1  1  1  1 21 10  9  8 16;
               1  1  0  1  1  1 21 10  9  8 16;
               1  1  1  0  1  1 21 10  9  8 16;
               1  1  1  1  0  1 21 10  9  8 16;
               1  1  1  1  1  0 21 10  9  8 16;
              21 21 21 21 21 21  0 10  9  8 16;
              10 10 10 10 10 10 10  0  9  8 16;
               9  9  9  9  9  9  9  9  0  8 16;
               8  8  8  8  8  8  8  8  8  0 16;
              16 16 16 16 16 16 16 16 16 16  0;
          ];
end