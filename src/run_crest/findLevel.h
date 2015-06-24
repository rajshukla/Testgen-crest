#ifndef RUN_CREST_FINDLEVEL_H__
#define RUN_CREST_FINDLEVEL_H__


#include <iostream>
#include <stdlib.h>
#include <bits/stdc++.h>
#include <vector>
#define iterator int

using namespace std;

typedef pair<int,int> int2;
vector<int2> branchLevel;
int numBranches;

void readLevels(){
	iterator i=0;

	FILE* f=fopen("level1","r");

	int2 temp;

	while(!feof(f)){
		int numFound=fscanf(f,"%d %d",&temp.first,&temp.second);
		if(numFound==2) branchLevel.push_back(temp);
		i++;
	}

	numBranches=i-1;

	fclose(f);
}

int returnLevel(int branch_id,int start,int end){

	if(branchLevel[(start+end)/2].first==branch_id) return branchLevel[(start+end)/2].second;

	else if(branchLevel[(start+end)/2].first<branch_id){
		return returnLevel(branch_id,(start+end)/2,end);
	}

	else return returnLevel(branch_id,start,(start+end)/2); 

	return 0;
}

int findLevel(int branch_id){
	readLevels();
    return returnLevel(branch_id,0,numBranches);;
}

int maxLevel(){
	FILE* f=fopen("maxLevel.txt","r");
	int maxLev;
	int numFound=fscanf(f,"%d",&maxLev);
	fclose(f);
	if(numFound!=1) return -1;
	return maxLev;
}

#endif