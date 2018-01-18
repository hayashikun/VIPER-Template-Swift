//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

protocol ___VARIABLE_Module___View: class {
    var presenter: ___VARIABLE_Module___Presentation! { get set }
}

protocol ___VARIABLE_Module___Presentation: class {
    weak var view: ___VARIABLE_Module___View? { get set }
    var interactor: ___VARIABLE_Module___Interaction! { get set }
    var router: ___VARIABLE_Module___Route! { get set }
}

protocol ___VARIABLE_Module___Interaction: class {
    weak var output: ___VARIABLE_Module___InteractorOutput? { get set }
}

protocol ___VARIABLE_Module___InteractorOutput: class {

}

protocol ___VARIABLE_Module___Route: class {
    weak var viewController: UIViewController? { get set }

    static func assembleModule() -> UIViewController
}
