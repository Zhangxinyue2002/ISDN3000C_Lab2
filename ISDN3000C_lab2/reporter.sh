#!/bin/bash
# This is a comment. The line above is a "shebang", telling the OS to use bash.

#Move to final_report
cd final_report

#Create analysis_report.md and title
touch analysis_report.md
echo '# Server Analysis Report' > analysis_report.md
date >> analysis_report.md

grep "INFO" ../raw_data/game.log > player_connections.log

a=$(grep "WARN" ../raw_data/game.log | wc -l)
b=$(grep "CRITICAL" ../raw_data/game.log | wc -l)
c=$(grep "LOGIN SUCCESS" ../raw_data/game.log | wc -l)


echo '## Summary ' >> analysis_report.md
echo " " >> analysis_report.md
echo "- Total Warning: $a" >> analysis_report.md
echo "- Total Critical Errors: $b" >> analysis_report.md
echo "- Total Player Logins: $c" >> analysis_report.md