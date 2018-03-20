if ROLE in('INPUT', 'REJECTED') then do;
if upcase(NAME) in(
'GENDER'
'AGE'
'DEPT'
'EMPLOYED'
'EXEMPT2'
'FTE'
'NONSTSAL'
'POSITION'
'STATESAL'
'STATUS'
'STSERVYR'
) then ROLE='INPUT';
else delete;
end;
