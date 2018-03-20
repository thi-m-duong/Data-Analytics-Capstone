if ROLE in('INPUT', 'REJECTED') then do;
if upcase(NAME) in(
'AGE'
'CAMPAIGN'
'CCI'
'CONTACT'
'CPI'
'DEFAULT'
'DOW'
'DURATION'
'EDUCATION'
'EMPVAR'
'EURIBOR3M'
'HOUSING'
'JOB'
'LOAN'
'MARITAL'
'MONTH'
'NREMP'
'PDAYS'
'POUTCOME'
'PREVIOUS'
) then ROLE='INPUT';
else delete;
end;
