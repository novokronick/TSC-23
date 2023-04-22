//
//  BaseComponent.swift
//  TSC-23
//
//  Created by KroNick on 22.04.2023.
//

import UIKit

struct BaseComponent<P, V: UIView>: Component {
  init(_ build: @escaping (P) -> (TokensProvider) -> V) {
    self.build = build
  }
  var build: (P) -> (TokensProvider) -> V
}

extension BaseComponent where BaseComponent.View: UIView {
  func compConfigured(transform: @escaping (V, TokensProvider) -> ()) -> Self {
    BaseComponent { props in
      { provider in
        let view = self.build(props)(provider)
        transform(view, provider)
        return view
      }
    }
  }
}
