import Foundation

class GameState: ObservableObject
{
    @Published var board = [[Ios]]()
    @Published var turn = Tile.Dog
    @Published var catsScore = 0
    @Published var dogsScore = 0
    @Published var showAlert = false
    @Published var alertMessage = "Draw"
    
    init()
    {
        resetBoard()
    }
    //prints text indicating whos turn it currently is
    func turnText() -> String
    {
        return turn == Tile.Dog ? "Turn: Dogs" : "Turn: Cats"
    }
    
    //checks if the tile is empty and can a player can place something
    func placeTile(_ row: Int,_ column: Int)
    {
        if (board[row][column].tile != Tile.Empty)
        {
            return
        }
        
        board[row][column].tile = turn == Tile.Dog ? Tile.Dog : Tile.Cat
        
        //adds a point to whoever has won that round and tracks it
        if(checkForVictory())
        {
            if(turn == Tile.Dog)
            {
                dogsScore += 1
            }
            else
            {
                catsScore += 1
            }
            //prints name of winner
            let winner = turn == Tile.Dog ? "Dogs" : "Cats"
            alertMessage = winner + " Win!"
            showAlert = true
        }
        else
        {
            turn = turn == Tile.Dog ? Tile.Cat : Tile.Dog
        }
        //prints "Draw" instead of winner whenever it is a draw
        if(checkForDraw())
        {
            alertMessage = "Draw"
            showAlert = true
        }
    }
    func checkForDraw() -> Bool
        //checks for whenever no winner is returned and deducts it as a draw
    {
        for row in board
        {
            for Ios in row
            {
                if Ios.tile == Tile.Empty
                {
                    return false
                }
            }
        }
        return true
    }
    func checkForVictory() -> Bool
    {
        //checks for all vertical ways to win
        if isTurnTile(0,0) && isTurnTile(1,0) && isTurnTile(2,0)
        {
            return true
        }
        if isTurnTile(0,1) && isTurnTile(1,1) && isTurnTile(2,1)
           {
               return true
           }
        if isTurnTile(0,2) && isTurnTile(1,2) && isTurnTile(2,2)
           {
               return true
           }
        //checks for all horizontal ways to win
        if isTurnTile(0,0) && isTurnTile(0,1) && isTurnTile(0, 2)
           {
               return true
           }
        if isTurnTile(1,0) && isTurnTile(1,1) && isTurnTile(1, 2)
           {
               return true
           }
        if isTurnTile(2,0) && isTurnTile(2, 1) && isTurnTile(2,2)
           {
               return true
           }
        //checks for all diagonal ways to win
        if isTurnTile(0,0) && isTurnTile(1, 1) && isTurnTile(2, 2)
           {
               return true
           }
        if isTurnTile(0,2) && isTurnTile(1, 1) && isTurnTile(2, 0)
           {
               return true
           }
            return false
    }
    //when one player places an icon it will detect it and go to the next players turn
    func isTurnTile(_ row: Int,_ column: Int) -> Bool
    {
        return board[row][column].tile == turn
    }
    func resetBoard()
    {
        //resets the board whenever a round is over and makes it go back to original empty grid
        var newBoard = [[Ios]]()
        
        for _ in 0...2
        {
            var row = [Ios]()
            for _ in 0...2
            {
                row.append(Ios(tile: Tile.Empty))
            }
            newBoard.append(row)
        }
        board = newBoard
        
    }
}
