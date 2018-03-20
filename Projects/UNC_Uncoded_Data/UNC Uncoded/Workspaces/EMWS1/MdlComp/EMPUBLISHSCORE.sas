drop _temp_;
if (P_totalsal ge 211212.113636363) then do;
b_totalsal = 1;
end;
else
if (P_totalsal ge 154639.080357142) then do;
b_totalsal = 2;
end;
else
if (P_totalsal ge 129185.405) then do;
b_totalsal = 3;
end;
else
if (P_totalsal ge 104409.231372549) then do;
b_totalsal = 4;
end;
else
if (P_totalsal ge 88875.937242327) then do;
b_totalsal = 5;
end;
else
if (P_totalsal ge 82108.2284163135) then do;
b_totalsal = 6;
end;
else
if (P_totalsal ge 72953.8983204588) then do;
b_totalsal = 7;
end;
else
if (P_totalsal ge 61917.4240677414) then do;
b_totalsal = 8;
end;
else
if (P_totalsal ge 56711.6608695652) then do;
b_totalsal = 9;
end;
else
if (P_totalsal ge 50289.2837573385) then do;
_temp_ = dmran(1234);
b_totalsal = floor(11 + 2*_temp_);
end;
else
if (P_totalsal ge 35287.5783709787) then do;
_temp_ = dmran(1234);
b_totalsal = floor(14 + 2*_temp_);
end;
else
do;
b_totalsal = 20;
end;
