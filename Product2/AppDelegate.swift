//
//  AppDelegate.swift
//  Product2
//
//  Created by Mike Saradeth on 6/3/19.
//  Copyright © 2019 Mike Saradeth. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
     
        let productService = ProductService()
        let viewModel = ListViewModel(items: [], productService: productService)
        let vc = ListVC.initWith(title: "Products", viewModel: viewModel)
        let nav = UINavigationController(rootViewController: vc)
        nav.navigationBar.prefersLargeTitles = true
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = nav
        
        
        return true
    }



}

