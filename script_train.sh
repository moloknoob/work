#!/bin/bash


mysql -u julien -p  banta << EOF 
INSERT INTO letter (a) VALUES ('testeee'); 
EOF