drop _temp_;
if (P_TargetBuy1 ge 0.7993079584775) then do;
b_TargetBuy = 1;
end;
else
if (P_TargetBuy1 ge 0.63841807909604) then do;
b_TargetBuy = 2;
end;
else
if (P_TargetBuy1 ge 0.44607843137254) then do;
b_TargetBuy = 3;
end;
else
if (P_TargetBuy1 ge 0.38049713193116) then do;
b_TargetBuy = 4;
end;
else
if (P_TargetBuy1 ge 0.35169491525423) then do;
b_TargetBuy = 5;
end;
else
if (P_TargetBuy1 ge 0.24859813084112) then do;
b_TargetBuy = 6;
end;
else
do;
_temp_ = dmran(1234);
b_TargetBuy = floor(7 + 14*_temp_);
end;
