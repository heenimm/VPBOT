//
//  File.swift
//  
//
//  Created by Халимка on 10.04.2024.
//

import Foundation

/// Этот актор будет использоваться для управления подключением бота.

import Foundation
import TelegramVaporBot

actor TGBotConnection {
    private var _connection: TGConnectionPrtcl!

    var connection: TGConnectionPrtcl {
        self._connection
    }
    
    func setConnection(_ conn: TGConnectionPrtcl) {
        self._connection = conn
    }
}
