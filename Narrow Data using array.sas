/* Create a data set(Stretch) where the five scores for each subject are contained in a single observation, */
/* with the variable names S1–S5.  */
/* S1 is the Score at Time 1, S2 is the Score at Time 2,etc. */
tItle "Given Data";
proc print data=upload.narrow;
run;
title;
data work.stretch(drop=Time Score i);
	set upload.narrow;
	by Subj;
	retain S1-S5;
	array S[5] S1-S5;
	
	do i=1 to 5;
	if Time=i then S[i]=score;
	end;
	
	/* 	output the last row for each value of Subj */
	if last.Subj=1 then output;

/* 	if Time=1 then S1=Score; */
/* 	if Time=2 then S2=Score; */
/* 	if Time=3 then S3=Score; */
/* 	if Time=4 then S4=Score; */
/* 	else if Time=5 then S5=Score; */

/* 	output the last row for each value of Subj */
/* 	if last.Subj=1 then output; */
run;
title "Expected Result";
proc print data=work.stretch;
run;
