#include <stdio.h>
int main(){

  int k;                              //atmost numebr of elements in subset S
  int n;                              //total test cases in T.in
  int b;                              //total number of branches

  scanf("%d %d %d ", &k, &n, &b);     //taking input values from input file generated in script.sh
  
  int arr[n][b];                      //array for storing branch coverage of each test case
  int i,j;
  for (i=0; i<n; i++){
    for (j=0; j<b; j++){
        scanf("%d",&arr[i][j]);       //taking input values from input file generated in script.sh
    } 
  }

  int br[b];                          //array to keep check which branches are covered
  int best[k];                        //array to store index of test case with maximum branch coverage
  int best_size = 0;                  //size of array best i.e. size od subset S
  for (i = 0; i < b; i++) br[i] = 1;  //initialising all elements of br array with 1

  for (i = 0; i < b; i++){            //for loop to check if there is any branch which is never executed for all test case in T.in
    int flag = 0;                     

    for (j = 0; j < n; j++){

      if (arr[j][i] == 1){           //if branch is executed atleast then flag variable will become 1       
        flag = 1;
        break;
      }
    }

    if (flag==0){                    //flag will be 0 if branch is never executed
      br[i] = 0;                     //then set value of br for that branch to be 0
    }
  }

  int s,t;
  for (i = 0; i < k; i++ ) {         //loop on maximum size of subset S to take atmost k testcase in S.in
    int flag=0;

    for (s=0; s<b; s++){            //loop for checking if all branches are covered or not
      if (br[s] == 1){              
        flag = 1;                   //if branch is nt covered then set value of flag to 0
      }
    }

    if (flag==0) break;             //all branches are covered, hence break

    int index=-10;                  //variable to store index of test case with maximum number of branch coverage
    int cntmax = 0;                 //variable to store maximum number of branch covered by a test case

    for (j = 0; j < n; j++){        //for loop on number of testcases
      int cnt = 0;                  //counting number of branches covered

      for (t = 0; t < b; t++){      //for loop on branches

        if (arr[j][t] && br[t]){    //increasing count by 1 if branch number t is not covered already and it is covered by jth testcase
          cnt++;
        }
      }

      if (cntmax <= cnt){           //updating cntmax if cnt>=cntmax
        cntmax = cnt;               //setting value of cntmax
        index = j;                  //storing index of testcase with maximum branch coverage
      }

    }
    for (s=0; s<b; s++){            //loop to update br
      if (arr[index][s] == 1){      //reset value of br for branches that are covered in selscted testcase to 0 
        br[s] = 0;
      }
    }

    best[best_size++] = index;      //storing index of selected testcase in array
  }

  printf("%d\n",best_size);         //printing size of array best

  for(int i=0; i < best_size; i++){ 
    printf("%d\n",best[i] + 1);     //adding 1 to all indices store in best as our indexing is starting from 0
  }
 
  return 0;
}