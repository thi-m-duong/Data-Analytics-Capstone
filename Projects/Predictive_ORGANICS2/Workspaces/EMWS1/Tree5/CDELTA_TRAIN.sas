if upcase(NAME) = "DEMCLUSTERGROUP" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "DEMREG" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "DEMTVREG" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "PROMCLASS" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "PROMSPEND" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "PROMTIME" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "Q_TARGETBUY0" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "Q_TARGETBUY1" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "_NODE_" then do;
ROLE = "SEGMENT";
LEVEL = "NOMINAL";
end;
