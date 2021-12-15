data output.Names_And_More;
set upload.names_and_more;

/* Name has only single blanks between the first and last name */
Name = compbl(Name);

/* Phone contains only digits (and is still a character value) */
Phone = compress(Phone, ')');
Phone = compress(Phone, '(');
Phone = compress(Phone, '-');


/* height in inches only */
ft = substr(Height, 1, 1);
inch =scan(Height, 2 , '');
inch =scan(inch, 1 , 'i'); 
if inch = ' ' then HtInches = ft*12;
else HtInches = (ft*12) + inch;

/* (Price) that has decimal values */
Whole = scan(Mixed, 1,'')* 1.0;
Num = substr(Mixed,4, 1) * 1.0;  
Denom = substr(Mixed,6, 1) * 1.0; 
if Num = ' ' then Price = Whole; 
else Price = Whole + Num/Denom;

/* rounded to the nearest .001 */
Price = round(Price, 0.001);

drop inch ft Whole Num Denom; 
run;