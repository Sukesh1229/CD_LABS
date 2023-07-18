#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#include<string.h>
void Follow(char c);
void First(char c);
void addTores(char c);
int n = 0;
int num;
char productions[10][10];
char followRes[10];

void main()
{
    int choice;
    char c,ch;
    printf("Enter number of Productions: ");
    scanf("%d",&num);
    for(int i=0;i<num;i++){
        scanf("%s%c",productions[i],&ch);
    }
    do{
        n=0;
        printf("Enter Character to find Follow: ");
        scanf("%c",&c);
        Follow(c);
        printf("Follow(%c) = {",c);
        for(int i=0;i<n;i++){
            printf("%c",followRes[i]);
        }
        printf("}");
        printf("Enter 1 to find Follow for some other character: ");
        scanf("%d%c",&choice,&ch);
    }while(choice==1);
}

void Follow(char c)
{
    if(productions[0][0]==c){
        addTores('$');
    }
    for(int i=0;i<num;i++)
    {
        for(int j=2;j<strlen(productions[i]);j++){
            if(productions[i][j]==c){
                if(productions[i][j+1]!='\0'){
                    First(productions[i][j+1]);
                }
                else{
                    Follow(productions[i][0]);
                }
            }
        }
    }
}
void First(char c){
    if(!isupper(c)){
        addTores(c);
    }
    for(int i=0;i<num;i++){
        if(productions[i][0]==c){
            if(productions[i][2]=='$'){
                Follow(productions[i][0]);
            }
            else if(islower(productions[i][2])){
                addTores(productions[i][2]);
            }
            else{
                First(productions[i][2]);
            }
        }
    }
}

void addTores(char c){
    for(int i=0;i<=n;i++){
        if(followRes[i]==c){
            return;
        }
    }
    followRes[n++]=c;
}