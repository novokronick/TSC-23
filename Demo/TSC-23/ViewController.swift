//
//  ViewController.swift
//  TSC-23
//
//  Created by KroNick on 22.04.2023.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .orange
    navigationItem.title = "TSC-23"
    
    [resultsColumn].forEach {
      $0.translatesAutoresizingMaskIntoConstraints = false
      scrollView.addSubview($0)
    }
    [resultsColumn].forEach {
      $0.translatesAutoresizingMaskIntoConstraints = false
      NSLayoutConstraint.activate([
        $0.topAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.topAnchor),
        $0.leadingAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.leadingAnchor),
        $0.trailingAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.trailingAnchor),
        $0.bottomAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.bottomAnchor)
      ])
    }
  }
  
  lazy var resultsColumn: UIStackView = {
    let provider = FooProvider()
    let finalA = FinalComponents.compA.build((("Foo", "Bar"), ()))(provider)
    let finalB = FinalComponents.compB.build(("Foo", ()))(provider)
    let finalC = FinalComponents.compC.build((("Foo", "Bar"), ()))(provider)
    let spacer = Spacer()
    
    let result = UIStackView(arrangedSubviews: [finalA, finalB, finalC, spacer])
    result.spacing = 20
    result.axis = .vertical
    return result
  }()
  
  override func loadView() {
    view = scrollView
  }
  
  let scrollView = UIScrollView()
}

