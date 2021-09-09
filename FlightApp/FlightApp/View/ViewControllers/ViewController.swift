//
//  ViewController.swift
//  FlightApp
//
//  Created by Raman Krutsiou on 8/13/21.
//

import UIKit

class ViewController: UIViewController {
    
    let airplane = AirplainView(frame: CGRect(x:-100, y: -10, width: 150, height: 100))
    var startButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(airplane)
        self.view.addSubview(startButton)
        startButton.isHidden = true
        startButton.alpha = 0
    }

    
    override func viewWillAppear(_ animated: Bool) {
        layoutButton()
        self.airplane.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi / 4))
        UIView.animate(withDuration: 5) {
            self.airplane.center = CGPoint(x: self.view.center.x - 35, y: self.view.center.y)
        } completion: { (true) in
            UIView.animate(withDuration: 2) {
                self.airplane.transform = CGAffineTransform(rotationAngle: CGFloat(0))
            } completion: { (true) in
                UIView.animate(withDuration: 2) {
                    self.airplane.center.x = self.view.center.x
                    self.airplane.center.y = self.view.center.y
                } completion: { (true) in
                    UIView.animate(withDuration: 2) {
                        self.airplane.alpha = 0
                    } completion: { (true) in
                        self.airplane.isHidden = true
                        UIView.animate(withDuration: 2) {
                            self.startButton.isHidden = false
                            self.startButton.alpha = 1
                        }
                    }

                    }
                }

            }
        }
    }

extension ViewController {
  private func layoutButton()  {
    startButton.translatesAutoresizingMaskIntoConstraints = false
    startButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
    startButton.widthAnchor.constraint(equalToConstant: self.view.bounds.width/2).isActive = true
    startButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    startButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    startButton.backgroundColor = UIColor.systemGreen
    startButton.layer.cornerRadius = 50
    guard let font = UIFont(name: "Baskerville-BoldItalic", size: 20) else { return }
    let attributes = [NSAttributedString.Key.foregroundColor:UIColor.white,NSAttributedString.Key.font:font]
    startButton.setAttributedTitle(NSAttributedString(string: "START", attributes:attributes), for: .normal)
    startButton.addTarget(self, action: #selector(startAction), for: .touchUpInside)
    
    }
    
    @objc func startAction () {
        airplane.isHidden = false
        UIView.animate(withDuration: 2) {
            self.startButton.alpha = 0
        } completion: { (true) in
            UIView.animate(withDuration: 2) {
                self.airplane.alpha = 1
                self.startButton.isHidden = true
            } completion: { (true) in
                UIView.animate(withDuration: 2) {
                    self.airplane.center.x = self.view.center.x + 35
                } completion: { (true) in
                    UIView.animate(withDuration: 2) {
                        self.airplane.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi/4))
                    } completion: { (true) in
                        UIView.animate(withDuration: 5) {
                            self.airplane.center.x = 500
                            self.airplane.center.y = -10
                        } completion: { (true) in
                            let secVC =  SecondVCViewController()
                            secVC.modalPresentationStyle = .fullScreen
                            self.present(secVC, animated: true, completion: nil)
                        }
                    }

                }

            }

        }

    }
}
