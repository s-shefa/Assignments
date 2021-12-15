/* You have the following seven values for temperatures for each day of the week, starting with  */
/* Monday: 70, 72, 74, 76, 77, 78, 85. Create adata set (Temperatures) with a variable  */
/* (Day) equal to Mon, Tue, Wed, Thu, Fri, Sat, Sun and a variable called  */
/* Temp equal to the listed temperature values.  */
/* Use a DO loop to create the Day variable.  */
data Temperatures;
	do Day="Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun";
		input Temp @@;
		output;
	end;
	datalines;
70
72
74
76
77
78
85
;