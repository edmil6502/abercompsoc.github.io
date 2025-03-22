# This program takes a tab-separated value file containing the name, Discord handle, interests, and website of each member wishing to be on the directory, and outputs a complete markdown table.

BEGIN {
	FS = "	";
	print "";
	print "| Name | Discord | Interests | Website |";
	print "| ---- | ------- | --------- | ------- |";
}

{print "| " $1 " | " $2 " | " $3 " | " $4 " |"}

END {
	print "";
}
