% simulate glider, bacterial respiration, predatorprey, bar magnets, shear
% flow, van der Pol, Lotka-Volterra
time_span = 10;
samp_time = 0.1;
n=100;

%% bacterial respiration (pg 288, strogatz)
outstr = {'20-u(1) - (u(1)*u(2)/(1+0.5*u(1)^2))';
          '10 - (u(1)*u(2)/(1+0.5*u(1)^2))'};
for i=1:4      
    IC(1) = 5+wgn(1,1,1);
    IC(2) = 10 +wgn(1,1,.1);
    sim('physic_mods_2state');
    bacres1((i-1)*n+1:i*n,:) = [df_s(1:n) f_s(1:n) y_s(1:n)];
    bacres2((i-1)*n+1:i*n,:) = [dy_s(1:n) f_s(1:n) y_s(1:n)];
end

%% bar magnets p 286
outstr = {'0.5*sin(u(1)-u(2))-sin(u(1))';
          '0.5*sin(u(2)-u(1)) - sin(u(2))'};
for i=1:4      
    IC(1) = 2*pi*rand(1,1);
    IC(2) = 2*pi*rand();
    sim('physic_mods_2state');
    barmag1((i-1)*n+1:i*n,:) = [df_s(1:n) f_s(1:n) y_s(1:n)];
    barmag2((i-1)*n+1:i*n,:) = [dy_s(1:n) f_s(1:n) y_s(1:n)];

end  

%% glider (pg 188, strogatz)
outstr = {'-0.05*u(1)^2-sin(u(2))';
          'u(1) - cos(u(2))/u(1)'};
for i=1:4      
    IC(1) = 5+wgn(1,1,1);
    IC(2) = 0 + wgn(1,1,.1);
    sim('physic_mods_2state');
    glider1((i-1)*n+1:i*n,:) = [df_s(1:n) f_s(1:n) y_s(1:n)];
    glider2((i-1)*n+1:i*n,:) = [dy_s(1:n) f_s(1:n) y_s(1:n)];
end

%% Lotka-Volterra model of competition (pg 156, Strogatz)
outstr = {'3*u(1)-2*u(1)*u(2)-u(1)^2';
          '2*u(2)-u(1)*u(2)-u(2)^2'};

for i=1:4
    switch i
        case 1
            IC = [1,3];
%             break;
        case 2
            IC = [4, 1];
%             break;
        case 3
            IC = [8,2];
%             break;
        case 4
            IC = [3,3];
%             break;
    end
% IC = [round(10*rand()),round(10*rand())];
%     try 
        sim('physic_mods_2state');
%         if (all(f_s>1) && all(y_s>1))
        plot(f_s,y_s,'--x'); hold on; plot(f_s(1),y_s(1),'or'); xlabel('rabbit'); ylabel('sheep')
            lotkavolterra1((i-1)*n+1:i*n,:) = [df_s(1:n) f_s(1:n) y_s(1:n)];
            lotkavolterra2((i-1)*n+1:i*n,:) = [dy_s(1:n) f_s(1:n) y_s(1:n)];
%         else 
%             i=i-1;
%         end
%     catch
%         i=i-1;
%     end
%     tries=tries+1;
end     

%% predator-prey pg 288, strogatz
outstr = {'u(1)*(4-u(1)-u(2)/(1+u(1)))';
          'u(2)*(u(1)/(1+u(1))-0.075*u(2))'};
for i=1:4      
    IC(1) = 5+wgn(1,1,1);
    IC(2) = 10 + wgn(1,1,.1);
    sim('physic_mods_2state');
    predprey1((i-1)*n+1:i*n,:) = [df_s(1:n) f_s(1:n) y_s(1:n)];
    predprey2((i-1)*n+1:i*n,:) = [dy_s(1:n) f_s(1:n) y_s(1:n)];
end     

%% shear flow (p 192, strogatz)
outstr = {'cot(u(2))*cos(u(1))';
          '(cos(u(2))^2+0.1*sin(u(2))^2)*sin(u(1))'};
for i=1:4      
    IC(1) = 2*pi*rand()-pi;
    IC(2) = pi*rand()-pi/2;
    sim('physic_mods_2state');
    shearflow1((i-1)*n+1:i*n,:) = [df_s(1:n) f_s(1:n) y_s(1:n)];
    shearflow2((i-1)*n+1:i*n,:) = [dy_s(1:n) f_s(1:n) y_s(1:n)];
end   

%% van der Pol (p 212, strogatz)
outstr = {'10*(u(2)-(1/3*u(1)^3-u(1)))';
          '-1/10*u(1)'};
for i=1:4      
    IC = rand(2,1);
    try
     sim('physic_mods_2state');
        vdp1((i-1)*n+1:i*n,:) = [df_s(1:n) f_s(1:n) y_s(1:n)];
        vdp2((i-1)*n+1:i*n,:) = [dy_s(1:n) f_s(1:n) y_s(1:n)];
    catch
        i=i-1;
    end
end  

  
      
