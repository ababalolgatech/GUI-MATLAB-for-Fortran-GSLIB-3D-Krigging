function  grid_param(obj)

X = obj.data(:,1) ;
Y = obj.data(:,2) ;
Z = obj.data(:,3) ;
prop = obj.data(:,4) ;


min_x = min(X) ;
min_y = min(Y) ;
min_z = min(Z) ;

max_x = max(X) ;
max_y = max(Y) ;
max_z = max(Z) ;

xsize = (max_x - min_x)/50 ;
ysize = (max_y - min_y)/50 ;
zsize = (max_z - min_z)/50 ;

obj.nx_xmn_xsize  = [50 min_x xsize] ;
obj.ny_ymn_ysize  = [50 min_y ysize] ;
obj.nz_zmn_zsize  = [50 min_z zsize] ;

%obj.triming_limits = [2*min(prop)  2*max(prop)] ;




end