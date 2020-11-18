//
//  HostViewController.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 13/11/2020.
//

import Foundation
import InteractiveSideMenu

class HostVC: MenuContainerViewController {

    override var prefersStatusBarHidden: Bool {
        return false
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let screenSize: CGRect = UIScreen.main.bounds
        self.transitionOptions = TransitionOptions(duration: 0.4, visibleContentWidth: screenSize.width / 6)

        // Instantiate menu view controller by identifier
        self.menuViewController = MenuVC.storyboardViewController()
        self.menuViewController.modalPresentationStyle = .fullScreen

        // Gather content items controllers
        self.contentViewControllers = contentControllers()

        // Select initial content controller. It's needed even if the first view controller should be selected.
        self.selectContentViewController(contentViewControllers.first!)

        self.currentItemOptions.cornerRadius = 10.0
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)

        // Options to customize menu transition animation.
        var options = TransitionOptions()

        // Animation duration
        options.duration = size.width < size.height ? 0.4 : 0.6

        // Part of item content remaining visible on right when menu is shown
        options.visibleContentWidth = size.width / 6
        self.transitionOptions = options
    }

    private func contentControllers() -> [UIViewController] {
        let play = PlayViewController.storyboardViewController()
        let support = SupportVC.storyboardViewController()
        let coffee = CoffeeVC.storyboardViewController()
        let privacy = PrivacyVC.storyboardViewController()
        let terms = TermsVC.storyboardViewController()

        return [play, support, coffee, privacy, terms]
    }
}