//
//  Router.swift
//  CoolMix
//
//  Created by Евгений Коузов on 09.07.2021.
//

import UIKit
import SwiftUI

final class Router {
   
    private var navigationController: UINavigationController
    private let assembler: Assembler
    
    init(assembler: Assembler) {
        self.assembler = assembler
        self.navigationController = UINavigationController()
    }
    
    func start() -> UINavigationController {
        let mainView = assembler.mainView(router: self)
        navigationController = UINavigationController(rootViewController: UIHostingController(rootView: mainView))
        navigationController.navigationBar.isHidden = true
        return navigationController
    }
    
    func back(animated: Bool = true) {
        navigationController.popViewController(animated: animated)
    }
    
    func root(animated: Bool = true) {
        navigationController.popToRootViewController(animated: animated)
    }
    
    func showDetailView(with text: String) {
        let detailView = UIHostingController(rootView: assembler.detailView(router: self, text: text))
        navigationController.pushViewController(detailView, animated: true)
    }
}
