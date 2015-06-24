
branches=open("branches_to_map","r")
branchData=branches.readlines();

levels=open("level.txt","r")
levelData=levels.readlines();

branchlist=list()

maxLev=1

for i in range(0,len(branchData)):
	if int(levelData[i].split()[1])>=maxLev:
		maxLev=int(levelData[i].split()[1])
	branchlist.append((int(branchData[i].split()[0]),int(levelData[i].split()[1])))
	branchlist.append((int(branchData[i].split()[1]),int(levelData[i].split()[1])))

branchlist.sort()

branchLevel=open("level1","w")

for element in branchlist:
	branchLevel.write(str(element[0])+" "+str(element[1])+"\n")

branchLevel.close()

maxLevel=open("maxLevel.txt","w")

maxLevel.write(str(maxLev))

maxLevel.close()