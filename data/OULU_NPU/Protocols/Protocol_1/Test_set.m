clear all;
clc
Files=[1,2,3,4,5]
%% Protocol_1
cpt=1
for p=1:6
    for s=3
        for u=36:55
             for k=Files
                  filname=strcat(num2str(p),'_',num2str(s),'_',num2str(u,'%02d'),'_',num2str(k))
                  if (k==1) 
                     file_names(cpt,:)=['+1,', filname]                   
                  end
                  if((k==2)||(k==3))
                     file_names(cpt,:)=['-1,', filname]  
                  end 
                  if((k==4)||(k==5))
                     file_names(cpt,:)=['-2,', filname]  
                  end                   
                  cpt=cpt+1;                  
            end 
        end
     end
end
dlmwrite('Test.txt',file_names,'delimiter','');  