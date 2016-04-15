//
//  AppDelegate.swift
//  04-12swift控件使用
//
//  Created by pengli on 16/4/12.
//  Copyright © 2016年 jinxiaomei. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        
        //
        let started = NSUserDefaults.standardUserDefaults().valueForKey("started") as? String
        if started == nil
        {
            let vc = PageViewController()
            self.window?.rootViewController = vc
            // 设置引导页完成时闭包
            vc.startClosure = {
                () -> Void in
                self.startApp()
                NSUserDefaults.standardUserDefaults().setValue("start", forKey: "started")
                NSUserDefaults.standardUserDefaults().synchronize()
            }
        }
        else
        {
            startApp()
        }
        return true
    }
    
    func startApp()
    {
        //声明并实例化一个标签栏控制器
        let tabbar = UITabBarController()
        // 创建4个视图控制器
        let vc1 = FirstViewController()
        var img1 = UIImage(named:"商城_选中@2x.png")
        img1 = img1!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        var img2 = UIImage(named:"商城_未选中@2x.png")
        img2 = img2!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        vc1.tabBarItem.image = img2
        vc1.tabBarItem.selectedImage = img1
        //vc1.tabBarItem.badgeValue = String(0)
        vc1.tabBarItem.title = ""
        
        
        
        let vc2 = SecondViewController()
        var img3 = UIImage(named:"信用卡_选中@2x.png")
        img3 = img3!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        var img4 = UIImage(named: "信用卡_未选中@2x.png")
        img4 = img4!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        let tabbarItem = UITabBarItem(title: "", image: img4, selectedImage: img3)
        vc2.tabBarItem = tabbarItem
        
        
        
        let vc3 = FifthViewController()
        var img5 = UIImage(named:"P2P_选中@2x.png")
        img5 = img5!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        var img6 = UIImage(named: "P2P_未选中@2x.png")
        img6 = img6!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        let tabbarItem1 = UITabBarItem(title: "", image: img6, selectedImage: img5)
        vc3.tabBarItem = tabbarItem1
        
        let vc4 = ThirdViewController()
        vc4.tabBarItem.image = UIImage(named:"羊毛信_选中@2x.png")
        var img7 = UIImage(named:"羊毛信_选中@2x.png")
        img7 = img7!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        var img8 = UIImage(named: "羊毛信_未选中@2x.png")
        img8 = img8!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        let tabbarItem2 = UITabBarItem(title: "", image: img8, selectedImage: img7)
        vc4.tabBarItem = tabbarItem2
        
        
        let vc5 = FourthViewController()
        vc5.tabBarItem.image = UIImage(named:"羊毛党_选中@2x.png")
        var img9 = UIImage(named:"羊毛党_选中@2x.png")
        img9 = img9!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        var img10 = UIImage(named: "羊毛党_未选中@2x.png")
        img10 = img10!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        let tabbarItem3 = UITabBarItem(title: "", image: img10, selectedImage: img9)
        vc5.tabBarItem = tabbarItem3
        let nc5 = UINavigationController(rootViewController: vc5)
        
        
        
        // 设置4个元素的数组给标签栏控制器
        tabbar.viewControllers = [vc1, vc2, vc3, vc4, nc5]
        self.window?.rootViewController = tabbar
        self.window?.backgroundColor = UIColor.whiteColor()
        
        tabbar.selectedIndex = 0
    }
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

