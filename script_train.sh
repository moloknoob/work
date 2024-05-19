#!/bin/bash


mysql -u julien -p  banta << EOF 
INSERT INTO letter (a) VALUES ('$(cat /home/molok/work/text.txt)'); 
EOF