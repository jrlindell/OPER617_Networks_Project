figure
ax = usamap('conus');
states = shaperead('usastatelo', 'UseGeoCoords', true,...
  'Selector',...
  {@(name) ~any(strcmp(name,{'Alaska','Hawaii'})), 'Name'});
faceColors = makesymbolspec('Polygon',...
    {'INDEX', [1 numel(states)], 'FaceColor', ... 
    polcmap(numel(states))}); %NOTE - colors are random
geoshow(ax, states, 'DisplayType', 'polygon', ...
   'SymbolSpec', faceColors)

nb_point = 25
LAT = [39.7]
LON = [105]
h = geoshow(LAT, LON, 'DisplayType', 'Point', 'Marker', '+', 'Color', 'red');
textm(LAT, LON, num2str((1:nb_point)'), 'FontSize',14)

