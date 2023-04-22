//
//  BasicComponents.swift
//  TSC-23
//
//  Created by KroNick on 22.04.2023.
//

import UIKit

enum BasicComponents {
  static let spacer: BaseComponent<(), UIView> = BaseComponent { _ in
    { _ in
      UIView().configured { (view: UIView) in
        view.alpha = 0
        view.setContentHuggingPriority(.defaultLow, for: .horizontal)
        view.setContentHuggingPriority(.defaultLow, for: .vertical)
      }
    }
  }

  static let label: BaseComponent<String, UILabel> = BaseComponent { title in
    { _ in
      UILabel()
        .configured { (label: UILabel) in label.text = title }
    }
  }
  
  static let button: BaseComponent<String, UIButton> = BaseComponent { title in
    { _ in
      UIButton().configured { (button: UIButton) in
        button.setTitle(title, for: .normal)
      }
    }
  }
  
  static let dummy: BaseComponent<(), UIView> = BaseComponent { _ in
    { provider in
      UIView().configured { (view: UIView) in
        view.backgroundColor = .purple
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
          view.widthAnchor.constraint(equalToConstant: 50),
          view.heightAnchor.constraint(equalToConstant: 50)
        ])
        view.layer.cornerRadius = 25
      }
    }
  }
}
