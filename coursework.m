clear
disp("001.jpg");
im = imread('001.jpg');
gr = rgb2hsv(im);
bw = im2bw(gr, 0.4);

se  = strel('square', 5);    % construct a structural element
imr = imerode(bw, se);  % Erosion

se1 = strel('square', 50);    
ic = imclose(imr, se1);

f=fspecial('gaussian', [5 5], 6);
car_edge = edge(ic, 'zerocross', f);
figure, imshow(car_edge);

stats = regionprops(car_edge, 'BoundingBox', 'Centroid');

    hold on
 
    for object = 1:length(stats)
        bb = stats(object).BoundingBox;
        bc = stats(object).Centroid;
        rectangle('Position',bb,'EdgeColor','r','LineWidth',2)
        plot(bc(1),bc(2), '-m+')
    end
    
    hold off
    
% Getting the width
car_width = stats.BoundingBox(3)/100;
disp("Width: " + car_width + " m");

% Getting the height
car_height = stats.BoundingBox(4)/100;
disp("Height: " + car_height + " m");

% The x and y coordinates of the first car
fcarx1 = stats.Centroid(1)/100;
fcary1 = stats.Centroid(2)/100;
disp("The x coordinate of the car in first image: " + fcarx1);
disp("The y coordinate of the car in first image: " + fcary1);

% Checking if the car is exceeding the width of 2.5m
if car_width > 2.5
    disp("Oversized")
else
    disp("Not Oversized")
end

disp("------------------------------------------------------------------");
%-------------------------------------------------------------------------
% Second car
disp("002.jpg");
im2 = imread('002.jpg');
gr2 = rgb2hsv(im2);
bw2 = im2bw(gr2, 0.4);

se2  = strel('square', 5);    % construct a structural element
imr2 = imerode(bw2, se2);  % Erosion

se3 = strel('square', 50);    
ic2 = imclose(imr2, se3);

f1=fspecial('gaussian', [5 5], 6);
car_edge1 = edge(ic2, 'zerocross', f1);
figure, imshow(car_edge1);

stats = regionprops(car_edge1, 'BoundingBox', 'Centroid');

    hold on
 
    for object = 1:length(stats)
        bb = stats(object).BoundingBox;
        bc = stats(object).Centroid;
        rectangle('Position',bb,'EdgeColor','r','LineWidth',2)
        plot(bc(1),bc(2), '-m+')
    end
    
    hold off
    
% Getting the width
car_width1 = stats.BoundingBox(3)/100;
disp("Width: " + car_width1 + "m");

% Getting the height
car_height1 = stats.BoundingBox(4)/100;
disp("Height: " + car_height1 + "m");

% The x and y coordinates of the second car
fcarx2 = stats.Centroid(1)/100;
fcary2 = stats.Centroid(2)/100;
disp("The x coordinate of the car in second image: " + fcarx2);
disp("The y coordinate of the car in second image: " + fcary2);

% Checking if the car is exceeding the width of 2.5m
if car_width > 2.5
    disp("Oversized")
else
    disp("Not Oversized")
end

disp("-------------------------------------------------------------------");
disp("001.jpg vs 002.jpg");
% Calculating the distance between the two car
f_distance = sqrt((fcarx1+fcarx2)^2 + (fcary1+fcary2)^2) / 1609.344; % divide by 1609.344 to convert meter to miles
% Calculating the speed 
speed = (f_distance/0.000277778);
disp("The speed is " + speed + " mph");

% Check if it is going over the speed limit
if speed > 30
    disp("The car is speeding")
else
    disp("The car is not speeding")
end
disp("-------------------------------------------------------------------");
% Third car
disp("003.jpg");
im3 = imread('003.jpg');
gr3 = rgb2hsv(im3);
bw3 = im2bw(gr3, 0.4);

se3  = strel('square', 5);    % construct a structural element
imr3 = imerode(bw3, se3);  % Erosion

se4 = strel('square', 50);    
ic3 = imclose(imr3, se4);

f2=fspecial('gaussian', [5 5], 6);
car_edge2 = edge(ic3, 'zerocross', f1);
figure, imshow(car_edge2);

stats = regionprops(car_edge2, 'BoundingBox', 'Centroid');

    hold on
 
    for object = 1:length(stats)
        bb = stats(object).BoundingBox;
        bc = stats(object).Centroid;
        rectangle('Position',bb,'EdgeColor','r','LineWidth',2)
        plot(bc(1),bc(2), '-m+')
    end
    
    hold off
    
% Getting the width
car_width2 = stats.BoundingBox(3)/100;
disp("Width: " + car_width2 + "m");

% Getting the height
car_height2 = stats.BoundingBox(4)/100;
disp("Height: " + car_height2 + "m");

% The x and y coordinates of the second car
fcarx3 = stats.Centroid(1)/100;
fcary3 = stats.Centroid(2)/100;
disp("The x coordinate of the car in second image: " + fcarx3);
disp("The y coordinate of the car in second image: " + fcary3);

% Checking if the car is exceeding the width of 2.5m
if car_width > 2.5
    disp("Oversized")
else
    disp("Not Oversized")
end

disp("-------------------------------------------------------------------");
disp("001.jpg vs 003.jpg");
% Calculating the distance between the two car
f_distance = sqrt((fcarx1+fcarx3)^2 + (fcary1+fcary3)^2) / 1609.344; % divide by 1609.344 to convert meter to miles
% Calculating the speed 
speed = (f_distance/0.000277778);
disp("The speed is " + speed + " mph");

% Check if it is going over the speed limit
if speed > 30
    disp("The car is speeding")
else
    disp("The car is not speeding")
end

disp("-------------------------------------------------------------------");
% Fourth car
disp("004.jpg");
im4 = imread('004.jpg');
gr4 = rgb2hsv(im4);
bw4 = im2bw(gr4, 0.4);

se4 = strel('square', 5);    % construct a structural element
imr4 = imerode(bw4, se4);  % Erosion

se5 = strel('square', 50);    
ic4 = imclose(imr4, se5);

f3=fspecial('gaussian', [5 5], 6);
car_edge3 = edge(ic4, 'zerocross', f2);
figure, imshow(car_edge3);

stats = regionprops(car_edge3, 'BoundingBox', 'Centroid');

    hold on
 
    for object = 1:length(stats)
        bb = stats(object).BoundingBox;
        bc = stats(object).Centroid;
        rectangle('Position',bb,'EdgeColor','r','LineWidth',2)
        plot(bc(1),bc(2), '-m+')
    end
    
    hold off
    
% Getting the width
car_width3 = stats.BoundingBox(3)/100;
disp("Width: " + car_width3 + "m");

% Getting the height
car_height3 = stats.BoundingBox(4)/100;
disp("Height: " + car_height3 + "m");

% The x and y coordinates of the second car
fcarx4 = stats.Centroid(1)/100;
fcary4 = stats.Centroid(2)/100;
disp("The x coordinate of the car in second image: " + fcarx4);
disp("The y coordinate of the car in second image: " + fcary4);

% Checking if the car is exceeding the width of 2.5m
if car_width > 2.5
    disp("Oversized")
else
    disp("Not Oversized")
end

disp("-------------------------------------------------------------------");
disp("001.jpg vs 004.jpg");
% Calculating the distance between the two car
f_distance = sqrt((fcarx1+fcarx4)^2 + (fcary1+fcary4)^2) / 1609.344; % divide by 1609.344 to convert meter to miles
% Calculating the speed 
speed = f_distance/0.000277778;
disp("The speed is " + speed + " mph");

% Check if it is going over the speed limit
if speed > 30
    disp("The car is speeding")
else
    disp("The car is not speeding")
end

disp("-------------------------------------------------------------------");
disp("oversized.jpg");
im = imread('oversized.jpg');
gr = rgb2hsv(im);
bw = im2bw(gr, 0.4);

se  = strel('square', 5);    % construct a structural element
imr = imerode(bw, se);  % Erosion

se1 = strel('square', 50);    
ic = imclose(imr, se1);

f=fspecial('gaussian', [5 5], 6);
car_edge = edge(ic, 'zerocross', f);
figure, imshow(car_edge);

stats = regionprops(car_edge, 'BoundingBox', 'Centroid');

    hold on
 
    for object = 1:length(stats)
        bb = stats(object).BoundingBox;
        bc = stats(object).Centroid;
        rectangle('Position',bb,'EdgeColor','r','LineWidth',2)
        plot(bc(1),bc(2), '-m+')
    end
    
    hold off
    
% Getting the width
car_width = stats.BoundingBox(3)/100;
disp("Width: " + car_width + " m");

% Getting the height
car_height = stats.BoundingBox(4)/100;
disp("Height: " + car_height + " m");

% Checking if the car is exceeding the width of 2.5m
if car_width > 2.5
    disp("Oversized")
else
    disp("Not Oversized")
end

disp("-------------------------------------------------------------------");
disp("fire01.jpg");
im = imread('fire01.jpg');

diff_im = imsubtract(im(:,:,1), rgb2gray(im));
figure, imshow(diff_im);
