function retorno = matrizrob(datos)

        %Igualamos una matriz con la posicion del primer angulo de la
        %matriz de inicializacion
        totaldef = [cosd(datos(1,1)) -sind(datos(1,1))*cosd(datos(1,4)) sind(datos(1,1))*sind(datos(1,4)) datos(1,3)*cosd(datos(1,1));
        sind(datos(1,1)) cosd(datos(1,1))*cosd(datos(1,4)) -cosd(datos(1,1))*sind(datos(1,4)) datos(1,3)*sind(datos(1,1));
        0 sind(datos(1,4)) cosd(datos(1,4)) datos(1,2);
        0 0 0 1]

        for i = 2:6
            %empezamos desde la posic 2 debido a que ya tenemos almacenada
            
            aux = [cosd(datos(i,1)) -sind(datos(i,1))*cosd(datos(i,4)) sind(datos(i,1))*sind(datos(i,4)) datos(i,3)*cosd(datos(i,1));
            sind(datos(i,1)) cosd(datos(i,1))*cosd(datos(i,4)) -cosd(datos(i,1))*sind(datos(i,4)) datos(i,3)*sind(datos(i,1));
            0 sind(datos(i,4)) cosd(datos(i,4)) datos(i,2);
            0 0 0 1] 
                

            %acumulamos la multiplicacion
            totaldef = totaldef*aux;
          

        end

    %retornamos    
    retorno = totaldef;


%resultado individual
%      matr = [cosd(datos(1,1)) -sind(datos(1,1))*cosd(datos(1,4)) sind(datos(1,1))*sind(datos(1,4)) datos(1,3)*cosd(datos(1,1));
%         sind(datos(1,1)) cosd(datos(1,1))*cosd(datos(1,4)) -cosd(datos(1,1))*sind(datos(1,4)) datos(1,3)*sind(datos(1,1));
%         0 sind(datos(1,4)) cosd(datos(1,4)) datos(1,2);
%         0 0 0 1]

%ayudas
%            matr = matr * [cosd(datos(i,1)) -sind(datos(i,1))*cosd(datos(i,4)) sind(datos(i,1))*sind(datos(i,4)) datos(i,3)*cosd(datos(i,1));
%             sind(datos(i,1)) cosd(datos(i,1))*cosd(datos(i,4)) -cosd(datos(i,1))*sind(datos(i,4)) datos(i,3)*sind(datos(i,1));
%             0 sind(datos(i,4)) cosd(datos(i,4)) datos(i,2);
%             0 0 0 1] 
end

