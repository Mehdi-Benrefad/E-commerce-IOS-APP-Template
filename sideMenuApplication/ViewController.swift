//
//  ViewController.swift
//  sideMenuApplication
//
//  Created by Mehdi Benrefad on 06/05/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var buttonToMenu: UIBarButtonItem!
    @IBOutlet weak var collectionView: UICollectionView!
    var laptops = [
    UIImage(named: "laptop1"),
    UIImage(named: "laptop2"),
    UIImage(named: "laptop3"),
    UIImage(named: "laptop4")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        pageControl.numberOfPages = laptops.count
        //passer automatiquement d'une image a une autre avec timer
        startTimer()
    }

    @IBAction func swipeHandler(_ gestureRecognizer : UISwipeGestureRecognizer) {
        if gestureRecognizer.state == .ended {
            print("hello")/*
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "SideMenu") as! SideMenuController
                    self.present(newViewController, animated: true, completion: nil)
            */
        }
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return laptops.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "laptopsCell", for: indexPath)as! HomeCollectionViewCell
        cell.productPhoto.image = laptops[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    //Automatisation dupassage d'unproduit a un autre
    var timer:Timer?
    var currentIndex = 0
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(moveToNextIndex), userInfo: nil, repeats: true)
    }
    
    @objc func moveToNextIndex(){
        if currentIndex < laptops.count - 1 {
            currentIndex += 1
        }else{
            currentIndex = 0
        }
        collectionView.scrollToItem(at: IndexPath(item: currentIndex, section: 0), at: .centeredHorizontally, animated: true)
        pageControl.currentPage = currentIndex
    }
}

