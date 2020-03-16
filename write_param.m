function  write_param(obj)


file_in  = strcat(obj.Filedir,obj.kt3d_in_file)  ;
file_out = strcat(obj.Filedir,obj.kt3d_out_file) ;
file_dbg = strcat(obj.Filedir,obj.kt3d_dbg_file) ;
file_par = strcat(obj.Filedir,obj.kt3d_par_file) ;


fid = fopen(file_par,'w');
fprintf(fid,'                   Parameters for K3D\n') ;
fprintf(fid,'                  ********************\n');
fprintf(fid,'                                      \n');
fprintf(fid,'START OF PARAMETERS                   \n');
fprintf(fid,'%s                         -file with data\n',file_in);
fprintf(fid,'%d %3d %3d%3d%3d           - columns for DH,X,Y,Z and variable\n',obj.col_DH_xyz(1,:));
fprintf(fid,'%2.3g %8.3g                -trimming limits\n',obj.triming_limits(1,:));
fprintf(fid,'%d                         -option: 0=grid, 1=cross, 2=jackknife\n',obj.grd_options);
fprintf(fid,'%s                         -file with jackknife data\n',obj.jacknife_data);
fprintf(fid,'%d %3d %3d%3d %3d          -   columns for X,Y,Z,vr\n',obj.col_jack_xyz(1,:));
fprintf(fid,'%d                         -debugging level: 0,1,2,3\n',obj.debug_level);
fprintf(fid,'%s                         -file for debugging output\n',file_dbg);
fprintf(fid,'%s                         -file for kriging output\n',file_out);
fprintf(fid,'%d %8.4f %8.4f             -nx,xmn,xsiz\n',obj.nx_xmn_xsize(1,:));
fprintf(fid,'%d %8.4f %8.4f             -ny,ymn,ysiz\n',obj.ny_ymn_ysize(1,:));
fprintf(fid,'%d %8.4f %8.4f             -nz,zmn,zsiz\n',obj.nz_zmn_zsize(1,:));
fprintf(fid,'%d %3d %3d                 -x,y and z block discretization\n',obj.blockdiscretn(1,:));
fprintf(fid,'%d %3d                      -min, max data for kriging\n',obj.min_max_krig(1,:));
fprintf(fid,'%d                         -max per octant (0-> not used)\n',obj.max_octant(1));
fprintf(fid,'%d %8.4f %8.4f            -maximum search radii\n',obj.search_radii(1,:));
fprintf(fid,'%d %3d %3d                 -angles for search ellipsoid\n',obj.angle_ellipsoid(1,:));
fprintf(fid,'%d %8.4f                     -0=SK, 1=OK\n',obj.krigtype_select(1,:));
fprintf(fid,'%d %d %d %d %d %d %d %d %d         -drift: x,y,z,xx,yy,zz,xy,xz,zy\n',obj.drift(1,:));
fprintf(fid,'%d                        -0=SK, 1=OK\n',obj.trend(1));
fprintf(fid,'%s                        -gridded file with drift/mean\n',obj.extdrift_dir);
fprintf(fid,'%d                        - column number in gridded file\n',obj.col_num_grid(1));
fprintf(fid,'%1.3g  %1.3g                         -One   nst, nugget effect\n',obj.nugget1(1,:));
fprintf(fid,'%1.3g %4.3g %4.3g %4.3g %4.3g        -      it,cc,ang1,ang2,ang3\n',obj.ang1(1,:));
fprintf(fid,'%8d %3d %3d                          -      a_hmax, a_hmin, a_vert\n',obj.a_hmax1(1,:));



fclose(fid);

end