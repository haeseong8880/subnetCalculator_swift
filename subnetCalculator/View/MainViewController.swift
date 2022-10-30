//
//  ViewController.swift
//  subnetCalculator
//
//  Created by haeseongJung on 2022/10/24.
//

import UIKit

class MainViewController: UIViewController {
    
    
    // IPv4 Network TextField
    @IBOutlet weak var firstNetwork: UITextField!
    @IBOutlet weak var secondNetwork: UITextField!
    @IBOutlet weak var thirdNetwork: UITextField!
    @IBOutlet weak var fourNetwork: UITextField!
    
    // Subnet TextField
    @IBOutlet weak var firstSubnet: UITextField!
    @IBOutlet weak var secondSubnet: UITextField!
    @IBOutlet weak var thirdSubnet: UITextField!
    @IBOutlet weak var fourSubnet: UITextField!
    
    // Subnet Slider
    @IBOutlet weak var subnetSlider: UISlider!
    
    // CIDR Label
    @IBOutlet weak var cideLabel: UILabel!
    
    // Calculator Button
    @IBOutlet weak var calculatorButton: UIButton!
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configure()
        
        self.tableview.delegate = self
        self.tableview.dataSource = self
    }
}

// MARK: - Func
extension MainViewController {
    private func subnetMaskCalculator(cidr: Int) {
        switch cidr {
        case 1:
            self.firstSubnet.text = "128"
            self.secondSubnet.text = nil
            self.thirdSubnet.text = nil
            self.fourSubnet.text = nil
        case 2:
            self.firstSubnet.text = "192"
            self.secondSubnet.text = nil
            self.thirdSubnet.text = nil
            self.fourSubnet.text = nil
        case 3:
            self.firstSubnet.text = "224"
            self.secondSubnet.text = nil
            self.thirdSubnet.text = nil
            self.fourSubnet.text = nil
        case 4:
            self.firstSubnet.text = "240"
            self.secondSubnet.text = nil
            self.thirdSubnet.text = nil
            self.fourSubnet.text = nil
        case 5:
            self.firstSubnet.text = "248"
            self.secondSubnet.text = nil
            self.thirdSubnet.text = nil
            self.fourSubnet.text = nil
        case 6:
            self.firstSubnet.text = "252"
            self.secondSubnet.text = nil
            self.thirdSubnet.text = nil
            self.fourSubnet.text = nil
        case 7:
            self.firstSubnet.text = "254"
            self.secondSubnet.text = nil
            self.thirdSubnet.text = nil
            self.fourSubnet.text = nil
        case 8:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = nil
            self.thirdSubnet.text = nil
            self.fourSubnet.text = nil
        case 9:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "128"
            self.thirdSubnet.text = nil
            self.fourSubnet.text = nil
        case 10:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "192"
            self.thirdSubnet.text = nil
            self.fourSubnet.text = nil
        case 11:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "224"
            self.thirdSubnet.text = nil
            self.fourSubnet.text = nil
        case 12:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "240"
            self.thirdSubnet.text = nil
            self.fourSubnet.text = nil
        case 13:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "248"
            self.thirdSubnet.text = nil
            self.fourSubnet.text = nil
        case 14:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "252"
            self.thirdSubnet.text = nil
            self.fourSubnet.text = nil
        case 15:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "254"
            self.thirdSubnet.text = nil
            self.fourSubnet.text = nil
        case 16:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "255"
            self.thirdSubnet.text = nil
            self.fourSubnet.text = nil
        case 17:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "255"
            self.thirdSubnet.text = "128"
            self.fourSubnet.text = nil
        case 18:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "255"
            self.thirdSubnet.text = "192"
            self.fourSubnet.text = nil
        case 19:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "255"
            self.thirdSubnet.text = "224"
            self.fourSubnet.text = nil
        case 20:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "255"
            self.thirdSubnet.text = "240"
            self.fourSubnet.text = nil
        case 21:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "255"
            self.thirdSubnet.text = "248"
            self.fourSubnet.text = nil
        case 22:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "255"
            self.thirdSubnet.text = "252"
            self.fourSubnet.text = nil
        case 23:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "255"
            self.thirdSubnet.text = "254"
            self.fourSubnet.text = nil
        case 24:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "255"
            self.thirdSubnet.text = "255"
            self.fourSubnet.text = nil
        case 25:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "255"
            self.thirdSubnet.text = "255"
            self.fourSubnet.text = "128"
        case 26:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "255"
            self.thirdSubnet.text = "255"
            self.fourSubnet.text = "192"
        case 27:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "255"
            self.thirdSubnet.text = "255"
            self.fourSubnet.text = "224"
        case 28:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "255"
            self.thirdSubnet.text = "255"
            self.fourSubnet.text = "240"
        case 29:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "255"
            self.thirdSubnet.text = "255"
            self.fourSubnet.text = "248"
        case 30:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "255"
            self.thirdSubnet.text = "255"
            self.fourSubnet.text = "252"
        case 31:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "255"
            self.thirdSubnet.text = "255"
            self.fourSubnet.text = "254"
        case 32:
            self.firstSubnet.text = "255"
            self.secondSubnet.text = "255"
            self.thirdSubnet.text = "255"
            self.fourSubnet.text = "255"
        default: break
        }
    }
}

// MARK: - Configure
extension MainViewController {
    private func configure() {
        [
            firstNetwork,
            secondNetwork,
            thirdNetwork,
            fourNetwork
        ].forEach {
            $0?.keyboardType = .numberPad
            $0?.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        }
        
        [
            firstSubnet,
            secondSubnet,
            thirdSubnet,
            fourSubnet
        ].forEach {
            $0?.keyboardType = .numberPad
            $0?.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        }
    }
}

// MARK: - OBJC
extension MainViewController {
    @objc func textFieldDidChange(_ textField: UITextField) {
        if let textFieldText = textField.text {
            if textFieldText.count == 3 {
                switch textField.tag {
                case 0: secondNetwork.becomeFirstResponder()
                case 1: thirdNetwork.becomeFirstResponder()
                case 2: fourNetwork.becomeFirstResponder()
                case 3: view.endEditing(true)
                case 4: secondSubnet.becomeFirstResponder()
                case 5: thirdSubnet.becomeFirstResponder()
                case 6: fourSubnet.becomeFirstResponder()
                case 7: view.endEditing(true)
                default: break
                }
            } else if textFieldText.count >= 4 {
                textField.text?.removeLast()
            }
        }
    }
}

//MARK: - Event
extension MainViewController {
    @IBAction func networkClearButtonTapped(_ sender: UIButton) {
        [
            firstNetwork,
            secondNetwork,
            thirdNetwork,
            fourNetwork
        ].forEach { $0?.text = nil }
    }
    
    @IBAction func subnetClearButtonTapped(_ sender: UIButton) {
        [
            secondSubnet,
            thirdSubnet,
            fourSubnet
        ].forEach { $0?.text = nil }
        self.firstSubnet.text = "128"
        self.cideLabel.text = "1"
        self.subnetSlider.value = 1
    }
    
    @IBAction func CIDRSlider(_ sender: UISlider) {
        self.cideLabel.text = String(Int(sender.value))
        self.subnetMaskCalculator(cidr: Int(sender.value))
    }
    
    @IBAction func calculatorButtonTapped(_ sender: UIButton) {
        [
            firstNetwork,
            secondNetwork,
            thirdNetwork,
            fourNetwork
        ].forEach {
            if $0?.text?.count == 0 {
                let alert = UIAlertController(title: "Please enter IP ☹️", message: "", preferredStyle: UIAlertController.Style.alert)
                let okAction = UIAlertAction(title: "OK", style: .default) { _ in return self.dismiss(animated: true) }
                alert.addAction(okAction)
                self.present(alert, animated: true)
            }
        }
    }
}

// MARK: - DataSource
extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as? MainTableViewCell else { return UITableViewCell() }
        
        return cell
    }
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
}
