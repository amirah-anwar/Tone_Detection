function [y]=number(x1)

y1=filter(filter1,x1);
%subplot(331)
%calfft(y1)
y1e=calenergy(y1);

y2=filter(filter2,x1);
%subplot(332)
%calfft(y2)
y2e=calenergy(y2);

y3=filter(filter3,x1);
%subplot(333)
%calfft(y3)
y3e=calenergy(y3);

y4=filter(filter4,x1);
%subplot(334)
%calfft(y4)
y4e=calenergy(y4);

y5=filter(filter5,x1);
%subplot(335)
%calfft(y5)
y5e=calenergy(y5);

y6=filter(filter6,x1);
%subplot(336)
%calfft(y6)
y6e=calenergy(y6);

y7=filter(filter7,x1);
%subplot(337)
%calfft(y7)
y7e=calenergy(y7);

ye=[y1e y2e y3e y4e y5e y6e y7e]
if (50<y1e && 400<y2e)
    
     y= 1;

elseif(57<y1e && 13<y5e)
    
   y= 2;
    

elseif(57<y1e && 406<y6e)
    
    y= 3;

elseif (400<y3e && 403<y2e)
    
    y= 4;
    

elseif (403<y3e && 13<y5e)
    
   y= 5;
    

elseif (403<y3e && 407<y6e)
    
   y= 6;
    

elseif (416<y4e && 418<y2e)
    
   y= 7;
    

elseif (416<y4e && 13<y5e)
    
   y= 8;
    

elseif (416<y4e && 407<y6e)
    
   y= 9;
    

elseif(412<y2e && 378<y7e)
    
   y='*';
    

elseif (10<y5e && 350<y7e)
    
    y=0;
    

elseif (400<y6e && 350<y7e)
    
   y='#';
    


end
end