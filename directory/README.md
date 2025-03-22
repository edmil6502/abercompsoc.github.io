# Guide to aberCompSoc Automatic Directory Maintenance
## What's this for?
The aberCompSoc directory stores contact information on active members. Because it would be a massive pain in the neck to curate/maintain this information manually, a few automated tools have been developed. This document aims to explain them. If you have any questions, contact me (Eddie Millichip) at *"edmil6502"* on Discord, or via the contact information on my personal website, [edmil.net](http://edmil.net).

## Files
### "index.md"
This is the markdown source file for the 'Directory' page itself. This is parsed by Jekyll to generate the actual HTML page. You probably knew that already, though.

### "committee", "students", "staff", "alumni"
These files are simple tab-separated value files containing (at minimum) the following information for each member registered on the directory:

- Name
- Discord handle
- Interests
- Website

### "tablegen.awk"
Reads one of the tab-separated value files (see above) and outputs a markdown table. Use in conjunction with ANOTHER AWK SCRIPT, like so:

```bash
$ awk -f tablegen.awk committee | addtable.awk
```

### "addtable.awk"
Takes the output of "tablegen.awk" and inserts it into the appropriate table in "index.md".