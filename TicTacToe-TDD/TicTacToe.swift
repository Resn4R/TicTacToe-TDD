//
//  TicTacToe.swift
//  TicTacToe-TDD
//
//  Created by Vito Borghi on 11/01/2024.
//

import Foundation

struct TicTacToe {
    
    private var grid = [[""]]
    
    func getGrid() -> [[String]] {
        grid
    }
    
    mutating func place(symbol: String, in location: (row: Int, col: Int)) {
        grid[location.row][location.col] = symbol
    }
    
    

}
