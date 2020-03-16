 classdef kt3d < handle
     
     properties    
     col_DH_xyz; 
     triming_limits ;
     grd_options; 
     jacknife_data; 
     col_jack_xyz;
     debug_level  ; 
     nx_xmn_xsize ;
     ny_ymn_ysize ;
     nz_zmn_zsize ;
     blockdiscretn;
     min_max_krig;
     max_octant;
     search_radii;
     angle_ellipsoid;
     krigtype_select;
     drift;trend;
     extdrift_dir;
     col_num_grid;
     nugget1;
     ang1;a_hmax1;              
     
     
	 
	       % File
         property;
         kt3d_par_file  ;
         kt3d_out_file  ;
         kt3d_in_file   ;  
         kt3d_dbg_file  ; 		 
          Filedir       ;
          
     %  Data 
        data 
     end
		
     methods
         obj = run_exe(obj,parfile) ;
		 obj = make_param(obj)      ;
         obj = write_param(obj)     ;
         obj = write_data(obj, data,fp) ;
         obj = grid_param(obj)      ;
     end
 end
 