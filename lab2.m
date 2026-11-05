clear;

s = 5.67e-8;
ex = 0.5*10e-5;
y=0;
k=0;

f = @(Jc,Jh,Tc,Th) [s*Tc^4+17.41*Tc-Jc-5188.18;
    Jc-0.71*Jh+7.46*Tc-2352.71;
    s*Th^4+1.865*Th-Jh-2250;
    Jh-0.71*Jc+7.46*Th-11093];

arx = f(3000,5000,298,298);

X = [Jc,Jh,Tc,Th];

%% Jc Jh Tc Th
J =  [
    -1, 0, 4*s*Tc^3+17.31, 0;
     1, -0.71, 7.46, 0;
     0, -1, 0, 4*s*Tc^3+1.865;
    -0.71,1,0,7.46
    ];

dx = -J\f;

while y <ex
    for j = 1:4
        y = max(abs(f(a(j))^(k+1)-f(a(j))^k));
    end
end
max(abs())

