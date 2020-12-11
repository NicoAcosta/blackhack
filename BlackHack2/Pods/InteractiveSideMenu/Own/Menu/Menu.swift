//
//  Menu.swift
//  NicoAcosta
//
//  Created by Nicolás Acosta on 02/12/2020.
//

import Foundation
import UIKit

class MenuVC: MenuViewController, Storyboardable {
    
    var myAmountOfMenuItems : Int? {
        return nil
    }
    
    var myUserInterfaceStyle : UIUserInterfaceStyle {
        return .light
    }
    
    var myBackgroundGradientLayerColors : [UIColor]? {
        return nil
    }
    var myBackgroundColor : UIColor? {
        return nil
    }
    
    var myAppName : String? {
        return nil
    }
    
    var myAppNameLabel : UILabel? {
        return nil
    }
    
    var myTableView: UITableView? {
        return nil
    }
    
    override var prefersStatusBarHidden: Bool {
        return false
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        overrideUserInterfaceStyle = myUserInterfaceStyle
        
        myAppNameLabel!.text = myAppName
        
        // Select the initial row
        myTableView!.selectRow(at: IndexPath(row: 0, section: 0), animated: false, scrollPosition: UITableView.ScrollPosition.none)
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if let safeColors = myBackgroundGradientLayerColors {
            gradientLayer(colors: safeColors)
        } else if let safeColor = myBackgroundColor {
            view.backgroundColor = safeColor
        }
        
        
        //  Alto de fila = alto de tableView / cantidad de items -> aprovechar todo el alto posible
        let safeAreaHeight = view.safeAreaLayoutGuide.layoutFrame.size.height
        let tableViewHeight = safeAreaHeight - 400
        myTableView!.rowHeight = tableViewHeight / CGFloat(myAmountOfMenuItems!)
        
    }

    deinit{
        print()
    }
}

extension MenuVC: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuContainerViewController?.contentViewControllers.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SampleTableCell.self), for: indexPath) as? SampleTableCell else {
            preconditionFailure("Unregistered table view cell")
        }
        
        cell.titleLabel.text = menuContainerViewController?.contentViewControllers[indexPath.row].title ?? "A Controller"

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuContainerViewController = self.menuContainerViewController else {
            return
        }

        menuContainerViewController.selectContentViewController(menuContainerViewController.contentViewControllers[indexPath.row])
        menuContainerViewController.hideSideMenu()
    }

    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let v = UIView()
        v.backgroundColor = UIColor.clear
        return v
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.5
    }
    
}
