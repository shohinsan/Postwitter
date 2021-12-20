//
//  ConversationViewModel.swift
//  Postwitter
//
//  Created by Shohin Abdulkhamidov on 12/18/21.
//

import Foundation

struct ConversationViewModel {
    private let conversation: Conversation
    
    var timestamp: String? {
        guard let date = conversation.message.timestamp else { return nil }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm a"
        return dateFormatter.string(from: date)
    }
    
    init(conversation: Conversation) {
        self.conversation = conversation
    }
}
