//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

class ___VARIABLE_Module___Router: ___VARIABLE_Module___Route {
    weak var viewController: UIViewController?

    static func assembleModule() -> UIViewController {
        let view = ___VARIABLE_Module___ViewController.viewController()
        let presenter = ___VARIABLE_Module___Presenter()
        let interactor = ___VARIABLE_Module___Interactor()
        let router = ___VARIABLE_Module___Router()

        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.output = presenter
        router.viewController = view

        return view
    }
}
