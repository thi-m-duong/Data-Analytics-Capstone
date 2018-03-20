if ROLE in('INPUT', 'REJECTED') then do;
if upcase(NAME) in(
'DEMAFFL'
'DEMAGE'
'DEMCLUSTERGROUP'
'DEMGENDER'
'DEMREG'
'DEMTVREG'
'PROMCLASS'
'PROMSPEND'
'PROMTIME'
) then ROLE='INPUT';
else delete;
end;
