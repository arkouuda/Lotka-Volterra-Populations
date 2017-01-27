function plotPopulation
    t = 10000;
    dt = 0.01;
    T = linspace(0,1,t);
    prey = 1*ones(1,t);
    pred = 0.8*ones(1,t);
    a = 0.2;
    b = 0.3;
    c = 0.2;
    d = 0.1;
    for k = 1:(t - 1)
        prey(k + 1) = prey(k) + (a*prey(k) - b*prey(k)*pred(k))*dt; 
        pred(k + 1) = pred(k) + (c*prey(k)*pred(k) - d*pred(k))*dt; 
    end
    figure;
    subplot(2,1,1);
    plot(T,prey,'g',T,pred,'y');
    axis([0,1,0,1.5]);
    grid on;
    grid minor;
    legend('prey','predator');
    xlabel('time');
    ylabel('relative population');
    set(gca,'YTickLabel',[]);
    set(gca,'XTickLabel',[]);
    title('Evolution of prey and predator population');
    
    subplot(2,1,2);
    plot(pred,prey,'r');
    grid on;
    grid minor;
    xlabel('predator population');
    ylabel('prey population');
    set(gca,'YTickLabel',[]);
    set(gca,'XTickLabel',[]);
    title('Prey population as a function of predator population');
    
    whitebg('black');
end
