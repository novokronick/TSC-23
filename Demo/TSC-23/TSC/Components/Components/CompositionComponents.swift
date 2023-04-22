//
//  CompositionComponents.swift
//  TSC-23
//
//  Created by KroNick on 22.04.2023.
//

import UIKit

enum CompositionComponents {
  static func overlay<T>(content: T) -> BaseComponent<T.Props, UIView> where T: Component {
    BaseComponent { props in
      { provider in
        let contentView = content.build(props)(provider)
        let view = UIView()
        [contentView].forEach {
          $0.translatesAutoresizingMaskIntoConstraints = false
          view.addSubview(contentView)
        }
        NSLayoutConstraint.activate([
          view.layoutMarginsGuide.topAnchor.constraint(equalTo: contentView.topAnchor),
          view.layoutMarginsGuide.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
          view.layoutMarginsGuide.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
          view.layoutMarginsGuide.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        return view
      }
    }
  }
}
