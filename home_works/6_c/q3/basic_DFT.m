

N=1024;a=10;b=-5;m1=128;m2=164;ph1=9;ph2=34;
    t=0:2*pi/N:2*pi;
    t=t(1:N);
    t=t.';
    x=a*cos(m1*t+ph1)+b*1i*sin(m2*t+ph2);
    x=x(1:N);
    WN = dftmtx(N);
    X1=WN*x;

N=1024;a=15;b=2;m1=16;m2=128;ph1=19;ph2=4;
    t=0:2*pi/N:2*pi;
    t=t(1:N);
    t=t.';
    x=a*cos(m1*t+ph1)+b*1i*sin(m2*t+ph2);
    x=x(1:N);
    WN = dftmtx(N);
    X2=WN*x;


N=1024;a=10;b=26;m1=45;m2=15;ph1=5;ph2=3;
    t=0:2*pi/N:2*pi;
    t=t(1:N);
    t=t.';
    x=a*cos(m1*t+ph1)+b*1i*sin(m2*t+ph2);
    x=x(1:N);
    WN = dftmtx(N);
    X3=WN*x;

figure
subplot(2,1,1)
stem((1:N)/N,abs(X1))
subplot(2,1,2)
stem((1:N)/N,angle( X1))
figure 
subplot(2,1,1)
stem((1:N)/N,abs(X2))
subplot(2,1,2)
stem((1:N)/N,angle(X2))
figure 
subplot(2,1,1)
stem((1:N)/N,abs(X3))
subplot(2,1,2)
stem((1:N)/N,angle(X3))
