//
//  File.swift
//  
//
//  Created by KroNick on 22.04.2023.
//

import UIKit

public final class Spacer: UIView {
  override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func setup() {
    self.setContentHuggingPriority(.defaultLow, for: .horizontal)
    self.setContentHuggingPriority(.defaultLow, for: .vertical)
  }
}
