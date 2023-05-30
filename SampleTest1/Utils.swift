//
//  Utils.swift
//  SampleTest1
//
//  Created by Rodrigo Policante Martins on 23/05/23.
//

import Foundation


extension String {

    func htmlAttributed(size: CGFloat) -> NSAttributedString? {
        do {
            let htmlCSSString = "<style>" +
            "html *" +
            "{" +
            "font-size: \(size)pt !important;" +
            "color: #292e36 !important;" +
            "font-family: Helvetica, Helvetica !important;" +
            "}</style> \(self)"

            guard let data = htmlCSSString.data(using: String.Encoding.utf8) else {
                return nil
            }

            return try NSAttributedString(data: data,
                                          options: [.documentType: NSAttributedString.DocumentType.html,
                                                    .characterEncoding: String.Encoding.utf8.rawValue],
                                          documentAttributes: nil)
        } catch {
            print("error: ", error)
            return nil
        }
    }
}

extension Bool {
    var invert: Bool {
        !self
    }
}
