clc
clearvars
k1=25; 
 k2=60; 
nb=logspace(14,19); 
n=length(nb); 
for i=1:n 
 vbr1(i)=k1*(nb(i)/1.0e16)^(-0.75); 
 vbr2(i)=k2*(nb(i)/1.0e16)^(-0.75);
end 
semilogx(nb,vbr1,'w',nb,vbr2,'w') 
xlabel('Impurity Concentration,cm-3') 
ylabel('Breakdown Voltage,V') 
title('Breakdown Voltage vs.Impurity Concentration') 
axis([1.0e14,1.0e17,0,2000]) 
text(2.0e14,270,'Ge') 
text(3.0e14,1000,'Si') 