function  make_param(obj)


obj.col_DH_xyz = [0   1   2  3  4  ] ;

obj.grd_options = 0     ;
obj.jacknife_data = 'jack.dat' ;
obj.col_jack_xyz = [1   2   0    3    0 ] ;
obj.debug_level = 2 ;
obj.triming_limits = [-1.0e21   1.0e21 ] ;
if isempty(obj.data)
obj.triming_limits = [-1.0e21   1.0e21 ] ;
obj.nx_xmn_xsize  = [50   0.5    1.0]  ;
obj.ny_ymn_ysize  = [50   0.5    1.0]  ; 
obj.nz_zmn_zsize  = [1    0.5    1.0]  ; 
else
    obj.grid_param;
end
obj.blockdiscretn = [1    1      1  ]  ;
obj.min_max_krig  = [4    8]           ; 
obj.max_octant    = 0   ;

% load the ellipsoid data here too to set default parameters
obj.search_radii = [20.0  20.0  20.0] ;
obj.angle_ellipsoid = [ 0.0   0.0   0.0] ;
obj.krigtype_select = [0     2.302 ]    ;
obj.drift = [0 0 0 0 0 0 0 0 0 ] ;
obj.trend = 0  ;
obj.extdrift_dir = 'extdrift.dat' ;
obj.col_num_grid = 4   ;
obj.nugget1 = [1 0.15] ;
obj.ang1 = [1 0.85 0.0   0.0   0.0  ] ;
obj.a_hmax1 = [10.0  10.0  10.0 ]     ;



end