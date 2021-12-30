//
//  SceneDelegate.swift
//  Message
//
//  Created by Raileny S Lima on 29/12/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    // responsavel pelo que é mostrado na tela, podemos manipular e gerenciar a forma como o app é exibido.

    // esse método irá criar uma nova UIWindow, e definir o controlador de visualização raiz(root) e tornar a window a janela principal a ser exibida.
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
  
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        let viewController: ViewController = ViewController()
        let navigationViewController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationViewController
        window.makeKeyAndVisible()
        self.window = window
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
     
    }

    func sceneDidBecomeActive(_ scene: UIScene) {

    }

    func sceneWillResignActive(_ scene: UIScene) {

    }

    func sceneWillEnterForeground(_ scene: UIScene) {

    }

    func sceneDidEnterBackground(_ scene: UIScene) {
  
    }
}
