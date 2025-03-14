function datos = datosentrada()
    clear 
    for i = 1:6
        %ingresamos los datos
        y =  input(strcat('ingrese el angulo de la articulacion:', num2str(i)))   ;

        %aplicamos verificacion de cada articulacion, y de que el angulo 
        %nosea negativo
        while (y < 0 || y > 360)
            disp('Debes ingresar un valor mayor a cero y de acuerdo con la articulacion');
            
            y =  input(strcat('ingrese el angulo de la articulacion:', num2str(i)))   ;

            if i == 2 && y > 210
                y = -32;
                disp("asdasdadsasdasd");
            elseif i == 3 && y > 125
                y = -1;

            elseif i == 4 && y > 40
                y = -1;

            elseif i == 5 && y > 240
                y = -1;   

            elseif i == 6 && y > 80
                y = -1;
            end

        end

        %alamcenamos los datos obtenidos
        vectdatos(i) = y;
    end

        %arreglamos los dtaos en una matriz
        tabla = [vectdatos(1) 615 100 -90;
                vectdatos(2) 0 705 0;
                vectdatos(3) 0 135 -90;
                vectdatos(4) 755 0 90;
                vectdatos(5) 0 0 -90;
                vectdatos(6) 85 0 0]
        
       
    datos = tabla; 
end