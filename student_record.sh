#!/bin/bash
DB="students.txt"
LOG="logs/activity.log"
mkdir -p logs backup
touch "$DB" "$LOG"
log(){ echo "$(date '+%F %T') : $1" >> "$LOG"; }
add_student(){ read -p "Roll: " r; grep -q "^$r|" "$DB"&&{ echo Exists; return;}; read -p "Name: " n; read -p "Course: " c; read -p "Marks: " m; echo "$r|$n|$c|$m">>"$DB"; log "Added $r"; }
view_students(){ cat "$DB"; }
search_student(){ read -p "Roll: " r; grep "^$r|" "$DB"; }
delete_student(){ read -p "Roll: " r; grep -v "^$r|" "$DB">t&&mv t "$DB"; log "Deleted $r"; }
count_students(){ wc -l < "$DB"; }
backup_data(){ cp "$DB" backup/students_$(date +%Y%m%d_%H%M%S).txt; }
while true; do
echo "1 Add 2 View 3 Search 4 Delete 5 Count 6 Backup 7 Exit"
read ch
case $ch in
1)add_student;;2)view_students;;3)search_student;;4)delete_student;;5)count_students;;6)backup_data;;7)exit;;*)echo Invalid;;
esac
done
