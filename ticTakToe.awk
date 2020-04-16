#! /usr/bin/awk -f
BEGIN{
  for(i=1;i<=9;i++)
    arr[i]=" "
  print"Welcome to the Tic Tac toe \n\n Enter numbers between(1-9)"
  tictac()
  player_input=1
  }
  {
   invalid=player_move()
     if(invalid==1){
       next
     }
     check()
    checkTie()
  }
  function tictac(){
    print arr[1]"  |  "arr[2]"|  " arr[3]
    print"-----------"
    print arr[4]"  |  " arr[5]"|  " arr[6]
    print"-----------"
    print arr[7]"  |  " arr[8]"|  " arr[9]
  }
  function player_move(){
     if(arr[$1]==" "){
    if(player_input==1){
      arr[$1]="x"
      tictac()
      player_input=0
    } else {
    arr[$1]="o"
    tictac()
    player_input=1
  }
  }
  else{
    print "invalid input"
  return 1
}
}
   function check(){
     if(arr[1]==arr[2] && arr[2]==arr[3] && arr[2]!=" " || arr[4]==arr[5] && arr[5]==arr[6] && arr[5]!=" "|| arr[7]==arr[8] && arr[8]==arr[9] && arr[8]!=" " || arr[1]==arr[4] && arr[4]==arr[7] && arr[4]!=" " || arr[2]==arr[5] && arr[5]==arr[8] && arr[5]!=" " || arr[3]==arr[6] && arr[6]==arr[9] && arr[6]!=" " || arr[1]==arr[5] && arr[5]==arr[9] && arr[5]!=" " || arr[3]==arr[5] && arr[5]==arr[7] && arr[5]!=" "){
          if(player_input==1){
            print "Player 2 won the game"
            exit
          }
          else{
            print "Player 1 won the game"
          exit
        }
      }
      }
      function checkTie(){
        for(i=1;i<=9;i++){
          if(arr[i]==" "){
            return 1
          }
        }
        print "Game is Tie"
        exit
      }
      
     


  



