function  write_data(obj,data,fp)

%  V = write_sisim(V,parfile)


%dir = '.\_kt3d'  ;
%if ~exist (dir)  ;  mkdir(dir) ;  end
%dirm = strcat(dir,'\',parfile) ;

% fid = fopen(parfile,'w');
fid = fopen(fp,'w');
fprintf(fid,'Data\n');
fprintf(fid,'4\n');
fprintf(fid,'X Position\n');
fprintf(fid,'Y Position\n');
fprintf(fid,'Z Position\n');
fprintf(fid,'Data\n');

if size(data,2) > 3   % 3D Data
for i = 1: size(data,1)
fprintf(fid,'%10.5f %10.5f %10.5f %10.5f \r\n',data(i,:));
end

elseif size(data,2) > 2  % 2D Data
for i = 1: size(data,1)
fprintf(fid,' %10.5f %10.5f %10.5f \r\n',data(i,:));
end

elseif size(data,2) > 1  % 1D Data
for i = 1: size(data,1)
fprintf(fid,' %10.5f %10.5f \r\n',data(i,:));
end

fclose(fid);
end
