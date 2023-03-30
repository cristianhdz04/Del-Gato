# Del Gato
#### VIDEO DEMO :
#### Description :
  Del Gato is the spanish name for the world reknowend family game known around the world as "Tic Tac Toe", in english it is also known as the "Cat's game", but no one calls it that anymore.
  The goal of this "Tic Tac Toe" program / game is not just to allow you to enjoy the fun that comes in rubbing in the win in yoru friends, its for being able to have acesibility to it.
 While this game may seem like your average crosses and circles game, once you start playing you will see the what it really is.
 Upon pressing on an empty tile you will be greeted with a dog emoji or cat emoji unlike the "X" and "O" you originally expected, this isnt crosses and circles anymore this is cats and dogs. Each side is labeled as "Cats" or "Dogs" and controls their respective emoji / icon
The rules are all the same of as the original Tic Tac Toe game everyone loves, but I wanted to implement something with emojis in this program and what better way than replacing the boring old icons with new bright and playful icons such as the dog and cat ones.
I originally was going to make it some random animals, but I couldnt think of any other 2 that are so widely put against eachother, so I settled for the original rivals in the wild, the Cat and Dog. Personally i'm a cat fan so another idea I had was putting the different cat emojis against eachother such as the ones with different facial expressions, but I thought that would end up being too confusing and similar to eachother, which might make people get the icons mixed up mid round and thats the last thing I want happening.
Now onto the files I made and used --> Ios, GameState, and Content View

#### IOS
This file is intended to choose the icon that will be used to be placed on the tiles, as well as the colo routline of the tiles to make that 3x3 black. This file is a bit shorter than the rest as its purpose was just to set these things up.

#### GameState
In this file is where the magic happens I implemented 6 variables in this file,
(board) - for the board to be called upon, 
(turn) - This gives the turn to whoever is next
(catsScore) - This keeps track and updates the score whenever the cat wins.
(dogsScore) - This keeps track and updates the score whenever the dog wins.
(showAlert) - This prompts a pop up to show up on your screen whenever the round is over.
(alertMessage) - This is what shows up on the pop up whenever the round is over.

Also in this file is where I have the functions to add a point to the winners score, wheter the tile is empty and the player is allowed to place his icon there, "Draw" message for whenever there is no winner, a check for victory function that has every possible combination of winnable posibilities horizontally, vertically, and diaganolllay, and last of them all a function to reset the board after a round is over to start the next one.

#### ContentView 
In this file is where everything is stylized such as the format of the text (turn indicator and scores), also makes the grid and tap function for the tiles. Also has a button that says "Okay" after a round is over to prompt for the board to reset.
