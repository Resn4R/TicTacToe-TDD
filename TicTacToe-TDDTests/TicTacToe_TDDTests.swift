//
//  TicTacToe_TDDTests.swift
//  TicTacToe-TDDTests
//
//  Created by Vito Borghi on 11/01/2024.
//

import XCTest
@testable import TicTacToe_TDD

final class TicTacToe_TDDTests: XCTestCase {
    //x goes first
    //alternate x and o
    //cannot play on occupied positions
    //3 x or 3 o wins
    //all boxes full and no win is a draw
    
    func testSpawnGrid() {
        let sample = TicTacToe()
        
        XCTAssertEqual(sample.getGrid(), Array(repeating: Array(repeating: "", count: 3), count: 3))
    }
    
    func testADDSymbolToGrid() {
        var sampleGame = TicTacToe()
        
        let symbol = "X"
        
        sampleGame.place(symbol: symbol, in: (0,0))
        
        XCTAssertEqual(sampleGame.getGrid(), [["X","",""],["","",""],["","",""]])
    }
    
    func testFirstMoveIsX() {
        var sampleGame = TicTacToe()
        
        let symbol = "X"
        
        sampleGame.place(symbol: symbol, in: (0,0))
        
        XCTAssertEqual(sampleGame.getGrid(), [["X","",""],["","",""],["","",""]])
    }
    
    func testAlternateSymbols() {
        var sampleGame = TicTacToe()
                
        sampleGame.place(symbol: "X", in: (0,0))
        sampleGame.place(symbol: "O", in: (0,1))
        
        XCTAssertEqual(sampleGame.getGrid(), [["X","O",""],["","",""],["","",""]])
    }
    
    func testPlayOnOccupiedPosition() {
        var sampleGame = TicTacToe()
                
        sampleGame.place(symbol: "X", in: (0,0))
        sampleGame.place(symbol: "O", in: (0,0))
        
        XCTAssertEqual(sampleGame.getGrid(), [["X","",""],["","",""],["","",""]])
    }
}
