//
//  TicTacToe.swift
//  TicTacToe-TDD
//
//  Created by Vito Borghi on 11/01/2024.
//

import Foundation

struct TicTacToe {
    
    private var grid: [[String]] = Array(repeating: Array(repeating: "", count: 3), count: 3)
    private var isFirstMove = true
    private var previousMove = ""
    
    func getGrid() -> [[String]] {
        grid
    }
    
    mutating func place(symbol: String, in location: (row: Int, col: Int)) {
        
        if isFirstMove { guard firstMoveIsX(symbol) else { return } }
        guard isPositionAvailable(location) else { return }
        guard checkAlternate(symbol: symbol) else { return }
        
        grid[location.row][location.col] = symbol
        previousMove = symbol
    }
    
    private mutating func firstMoveIsX(_ symbol: String) -> Bool {
        
        if isFirstMove && symbol == "X" {
            isFirstMove = false
            return true
        }
        else { return false }
    }
    
    private mutating func checkAlternate(symbol: String) -> Bool {
        if isFirstMove { true }
        else { symbol == previousMove ? false : true }
    }
    
    private func isPositionAvailable(_ position: (row: Int, col: Int)) -> Bool { grid[position.row][position.col].isEmpty ? true : false }
}
