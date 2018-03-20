if upcase(NAME) = "AGE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "CAMPUS" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "DEPT" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "EMPLOYED" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "EXEMPT2" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "FTE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GENDER" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "POSITION" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "Q_TOTALSAL" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "STATUS" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "STSERVYR" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "_NODE_" then do;
ROLE = "SEGMENT";
LEVEL = "NOMINAL";
end;
