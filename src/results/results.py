import xlsxwriter
import sys
import os
import datetime

current=datetime.datetime.time(datetime.datetime.now())

filename=str(sys.argv[1]+"-"+sys.argv[3]+"-"+sys.argv[2]+"-"+str(current.hour)+":"+str(current.minute)+".xlsx")

workbook = xlsxwriter.Workbook(filename)
worksheet = workbook.add_worksheet(sys.argv[1])	

worksheet.set_column('A:A', 30)
worksheet.set_column('B:B', 30)
worksheet.set_column('C:C', 30)
worksheet.set_column('D:D', 30)

bold = workbook.add_format({'bold': True})

worksheet.write('A1', 'FILENAME:- '+ sys.argv[1], bold)
worksheet.write('A2', "STRATEGY:- "+sys.argv[3], bold)
worksheet.write('A3', 'ITERATIONS:- '+ sys.argv[2], bold)

if len(sys.argv)==5:
	worksheet.write('B3', 'GIVEN TEST CASES:- '+ sys.argv[4], bold)
	givenTestCases=int(sys.argv[4])
else:
	worksheet.write('B3', 'GIVEN TEST CASES:- 0', bold)


numIterations=int(sys.argv[2])

after=open("resultAfter.txt","r");
resultData2=after.readlines();

numFunctions=int(resultData2[len(resultData2)-1].split()[0])
totalBranches=int(resultData2[len(resultData2)-1].split()[1])

worksheet.write('A5', 'FUNCTIONS:- '+ str(numFunctions))
worksheet.write('A6', 'BRANCHES:- '+ str(totalBranches))

if len(sys.argv)==5:
	before=open("resultBefore.txt","r");
	resultData1=before.readlines();

	worksheet.write('A8', 'S.NO ',bold)

	worksheet.write('B8', 'BRANCHES COVERED',bold)

	worksheet.write('C8', 'COVERAGE PERCENTAGE',bold)

	worksheet.write('D8', 'GIVEN TEST CASES',bold)

	for i in range(0,givenTestCases):
		temp=9+i
		worksheet.write("A"+str(temp),i+1)
		tempBranches=int(resultData1[givenTestCases-i-1].split()[1])
		worksheet.write("B"+str(temp),tempBranches)
		if totalBranches > 0:
			percentage=tempBranches*100.0/totalBranches
			worksheet.write("C"+str(temp),round(percentage,2))
		cases=open("given."+str(i+1),"r")
		j=0
		for line in cases:
			worksheet.write(str(chr(ord('D')+j))+str(temp), int(line.split()[0]))
			j=j+1

	if givenTestCases>0:
		worksheet.write('C4', 'INITIAL COVERAGE:- '+str(round(percentage,2))+'%',bold)
	else:
		temp=11
else:
	temp=11

worksheet.write("A"+str(temp+3), 'ITERATIONS',bold)

worksheet.write("B"+str(temp+3), 'BRANCHES COVERED',bold)

worksheet.write("C"+str(temp+3), 'COVERAGE PERCENTAGE',bold)

worksheet.write("D"+str(temp+3), 'GENERATED TEST CASES',bold)

setTest=set()

pos=temp+3

for i in range(0,len(resultData2)-1):
	temp=pos+1+i;
	tempBranches=int(resultData2[len(resultData2)-i-2].split()[1])
	worksheet.write("A"+str(temp),i+1)
	worksheet.write("B"+str(temp),tempBranches)
	if totalBranches >0 :
		percentage=tempBranches*100.0/totalBranches
		worksheet.write("C"+str(temp),round(percentage,2))
	inputs=open("input."+str(i+1),"r")
	listTest=[]
	for line in inputs:
		listTest.append(int(line.split()[0]))
	setTest.add(tuple(listTest))

j=0
for element in setTest:
	temp=pos+j+1
	if len(element)>0 :
		for i in range(1,len(element)+1):
			worksheet.write(str(chr(ord('C')+i))+str(temp), element[i-1])
		j=j+1

if totalBranches > 0:
	worksheet.write('C5', 'FINAL COVERAGE:- '+str(round(percentage,2))+'%',bold)

workbook.close()

#open the spreadsheet
#os.system("xdg-open "+filename)
