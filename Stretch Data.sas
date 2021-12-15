/* Create a data set(Stretch) where the five scores for each subject are contained in a single observation, */
/* with the variable names S1–S5.  */
/* S1 is the Score at Time 1, S2 is the Score at Time 2,etc. */
data work.stretch(drop=Time Score);
	set upload.narrow;
	by Subj;
	retain S1-S5;

	if Time=1 then S1=Score;
	if Time=2 then S2=Score;
	if Time=3 then S3=Score;
	if Time=4 then S4=Score;
	else if Time=5 then S5=Score;

/* 	output the last row for each value of Subj */
	if last.Subj=1 then output;
run;

