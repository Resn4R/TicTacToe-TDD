//
//  TicTacToe.swift
//  TicTacToe-TDD
//
//  Created by Vito Borghi on 11/01/2024.
//

import Foundation

struct TicTacToe {
    
    private var grid = [[""]]
    private var isFirstMove = true
    
    func getGrid() -> [[String]] {
        grid
    }
    
    mutating func place(symbol: String, in location: (row: Int, col: Int)) {
        
        guard firstMoveIsX(symbol) else { return }
        
        grid[location.row][location.col] = symbol        
    }
    
    private mutating func firstMoveIsX(_ symbol: String) -> Bool {
        
        if isFirstMove && symbol == "X" {
            isFirstMove = false
            return true
        }
        else { return false }
    }

}
