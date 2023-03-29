import Foundation
import SwiftUI

struct Ios
{
    var tile: Tile
    //sets the icon for each tile
    func displayTile() -> String
    {
        switch(tile)
        {
        case Tile.Cat:
            return "🐱"
        case Tile.Dog:
            return "🐶"
        default:
            return ""
        }
    }
    //sets outline color of tiles
func tileColor() -> Color
    {
        switch(tile)
        {
        case Tile.Cat:
            return Color.red
            case Tile.Dog:
            return Color.black
        default:
            return Color.black
    
        }
    }
}
enum Tile
{
    case Cat
    case Dog
    case Empty
}
