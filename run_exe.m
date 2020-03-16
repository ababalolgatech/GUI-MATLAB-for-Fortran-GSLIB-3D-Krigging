function run_exe(obj)
      fp = what('@kt3d') ;
      fp = fp.path       ;
kt3d_bin = strcat(fp,'\','kt3d.exe');

parfile = strcat(obj.Filedir,obj.kt3d_par_file) ; 
file_out = strcat(obj.Filedir,obj.kt3d_out_file) ;
file_dbg = strcat(obj.Filedir,obj.kt3d_dbg_file) ;


 if exist(file_out)
         delete(file_out)  ; % delete previous file
 end
if exist(file_dbg)
         delete(file_dbg)  ;
end
if ~exist (parfile)
      error("Parameter file does not exist on disk") ;
 end
 
      [status,result]=system(sprintf('"%s" %s',kt3d_bin,parfile));
      
      if ~exist(file_out)
          result
          error("Program did not run successfully")
      else
          disp("kt3d ran succesfully")
          disp("---------------------")
      end      
