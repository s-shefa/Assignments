/* Using a DATA step, create a temporary SAS data set (Long) using data set Wide as input.  */
/* This data set should contain Subj, Time, X, and Y, with five observations per subject. */
data work.long(rename=(X_col='X'n Y_col='Y'n));
	set upload.wide;
	array X[5] X1-X5;
	array Y[5] Y1-Y5;

	do Time=1 to 5;
		X_col=X[Time];
		Y_col=Y[Time];
		output;
	end;
	
	drop X1-X5 Y1-Y5;

	/* 	Time=1; */
	/* 	'X'n=X1; */
	/* 	'Y'n=Y1; */
	/* 	output; */
	/* 	Time=2; */
	/* 	'X'n=X2; */
	/* 	'Y'n=Y2; */
	/* 	output; */
	/* 	Time=3; */
	/* 	'X'n=X3; */
	/* 	'Y'n=Y3; */
	/* 	output; */
	/* 	Time=4; */
	/* 	'X'n=X4; */
	/* 	'Y'n=Y4; */
	/* 	output; */
	/* 	Time=5; */
	/* 	'X'n=X5; */
	/* 	'Y'n=Y5; */
	/* 	output; */
	/* 	 */
	/* 	drop X1-X5 Y1-Y5; */
run;