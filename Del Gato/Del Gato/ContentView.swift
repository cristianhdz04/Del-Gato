import SwiftUI

struct ContentView: View
{
    @StateObject var gameState = GameState()
    var body: some View
    {
        let borderSize = CGFloat(5)
        //style for text of the turn
        Text(gameState.turnText())
            .font(.title)
            .bold()
            .padding()
        Spacer()
        //adds a point and stylized the text of score
        Text(String(format: "Dogs: %d", gameState.dogsScore))
            .font(.title)
            .bold()
            .padding()
        
        VStack(spacing: borderSize)
        {
            ForEach(0...2, id: \.self)
            {
                row in
                HStack(spacing: borderSize)
                {
                    ForEach(0...2, id: \.self)
                    {
                        column in
                        
                        let ios = gameState.board[row][column]
                        //prints tiles size and tap funtion of the tiles to add icon
                        Text(ios.displayTile())
                            .font(.system(size: 60))
                            .foregroundColor(ios.tileColor())
                            .bold()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .aspectRatio(1, contentMode: .fit)
                            .background(Color.white)
                            .onTapGesture
                        {
                            gameState.placeTile(row, column)
                        }
                    }
                }
            }
        }
        .background(Color.black)
        .padding()
        .alert(isPresented: $gameState.showAlert)
        {
            //prints button function to advance to next function
            Alert(
            title: Text(gameState.alertMessage),
            dismissButton: .default(Text("Okay"))
                {
                    gameState.resetBoard()
                }
            )
        }
        //adds a point and stylized the text of score
        Text(String(format: "Cats: %d", gameState.catsScore))
            .font(.title)
            .bold()
            .padding()
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
