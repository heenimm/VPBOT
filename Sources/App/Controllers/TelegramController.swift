//
//  File.swift
//  
//
//  Created by Халимка on 10.04.2024.
//

import Foundation

import Vapor
import TelegramVaporBot

/// Этот контроллер будет обрабатывать веб-хуки от Telegram.
final class TelegramController: RouteCollection {
    let TGBOT: TGBotConnection = .init()
    
    func boot(routes: Vapor.RoutesBuilder) throws {
        routes.post("telegramWebHook", use: telegramWebHook)
    }
}

extension TelegramController {
    
    func telegramWebHook(_ req: Request) async throws -> Bool {
        let update: TGUpdate = try req.content.decode(TGUpdate.self)
        return try await TGBOT.connection.dispatcher.process([update])
    }
}
