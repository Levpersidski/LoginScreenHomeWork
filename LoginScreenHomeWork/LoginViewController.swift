//
//  ViewController.swift
//  LoginScreenHomeWork
//
//  Created by Роман Бакаев on 07.09.2023.
//

import UIKit

//MARK: - LoginViewController
class LoginViewController: UIViewController {

    //MARK: - Private property
    private let logoImage = UIImageView()
    private let  mainLabel = UILabel()
    
    private let rejectButton = CustomButton(title: "REJECT", backgroundColor: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), isShadow: true)
    private let acceptButton = CustomButton(title: "ACCEPT", backgroundColor: .white, isShadow: true,titleColor: .black)
    private let logOutButton = CustomButton(title: "Log Out", backgroundColor: .red, isShadow: false)
    
    
    private let buttonContainer = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubviews()
        setupLogoImage()
        setupButtonContainer()
        setupMainLAbel()
        setupHover()
       setupLayout()
    }


}

//MARK: - Settings
private extension LoginViewController {
    
    func addSubviews() {
        [logoImage, buttonContainer, logOutButton, mainLabel].forEach { subView in
            view.addSubview(subView)
            
        }
    }
        func setupLogoImage() {
            logoImage.image = UIImage(named: "spider")
            logoImage.contentMode = .scaleAspectFit
        }
    
    func setupMainLAbel() {
        mainLabel.text = """
Spider-Man, also known as Peter Parker, is a beloved Marvel superhero.
  He gained incredible spider-like abilities after a radioactive spider bite.
"""
        mainLabel.font = .systemFont(ofSize: 15)
            mainLabel.textColor = .black
        mainLabel.numberOfLines = 5
    }
    
    func setupButtonContainer() {
        buttonContainer.axis = .horizontal
        buttonContainer.spacing = 30
        buttonContainer.alignment = .fill
        buttonContainer.distribution = .fillProportionally
        buttonContainer.addArrangedSubview(rejectButton)
        buttonContainer.addArrangedSubview(acceptButton)
        


     }
    
    //MARK: - HoverSettings
    func setupHover() {
        acceptButton.addTarget(self, action: #selector(acceptButtonHovered), for: .touchDown)
               acceptButton.addTarget(self, action: #selector(acceptButtonUnhovered), for: [.touchUpInside, .touchUpOutside])
        
        rejectButton.addTarget(self, action: #selector(rejectButtonHovered), for: .touchDown)
               rejectButton.addTarget(self, action: #selector(rejectButtonUnhovered), for: [.touchUpInside, .touchUpOutside])
   
        
    }
    
    @objc func acceptButtonHovered() {
           // Устанавливаем цвет фона при наведении
        acceptButton.layer.shadowColor = UIColor.green.cgColor
            acceptButton.layer.shadowRadius = 10
            acceptButton.layer.shadowOpacity = 0.7
            acceptButton.layer.shadowOffset = CGSize(width: 7, height: 7)
        
        
        
       }
       
       @objc func acceptButtonUnhovered() {
           // Возвращаем обычный цвет фона после наведения
           acceptButton.layer.shadowColor = UIColor.black.cgColor
        
       }
    
    
    @objc func rejectButtonHovered() {
           // Устанавливаем цвет фона при наведении
        rejectButton.layer.shadowColor = UIColor.red.cgColor
            rejectButton.layer.shadowRadius = 10
            rejectButton.layer.shadowOpacity = 0.7
            rejectButton.layer.shadowOffset = CGSize(width: 7, height: 7)
        
        
        
       }
       
       @objc func rejectButtonUnhovered() {
           // Возвращаем обычный цвет фона после наведения
           rejectButton.layer.shadowColor = UIColor.black.cgColor
       }


    
    }
//MARK: - Layout

private extension LoginViewController {
    func setupLayout() {
        [logoImage, logOutButton, rejectButton, acceptButton, buttonContainer, mainLabel].forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
        }
            NSLayoutConstraint.activate([
                logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
                logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                logoImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.66),
                logoImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.33),
    
                buttonContainer.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 130),
                buttonContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                    buttonContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),

            
                logOutButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
                logOutButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
                    logOutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80),
                
                
                mainLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 10),
                mainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                    mainLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
            ])
        
    }
    
}

