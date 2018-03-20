drop _temp_;
if (P_TargetBuy1 ge 0.76779026217228) then do;
b_TargetBuy = 1;
end;
else
if (P_TargetBuy1 ge 0.6159420289855) then do;
b_TargetBuy = 2;
end;
else
if (P_TargetBuy1 ge 0.47967479674796) then do;
b_TargetBuy = 3;
end;
else
if (P_TargetBuy1 ge 0.36043956043956) then do;
b_TargetBuy = 4;
end;
else
if (P_TargetBuy1 ge 0.34061135371179) then do;
b_TargetBuy = 5;
end;
else
if (P_TargetBuy1 ge 0.19653179190751) then do;
b_TargetBuy = 6;
end;
else
if (P_TargetBuy1 ge 0.17684887459807) then do;
b_TargetBuy = 7;
end;
else
if (P_TargetBuy1 ge 0.1713532513181) then do;
_temp_ = dmran(1234);
b_TargetBuy = floor(8 + 6*_temp_);
end;
else
do;
_temp_ = dmran(1234);
b_TargetBuy = floor(14 + 7*_temp_);
end;
