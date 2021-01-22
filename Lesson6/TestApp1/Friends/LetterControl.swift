//
//  LetterControl.swift
//  TestApp1
//
//  Created by Danil G. on 18.01.2021.
//

import UIKit

// Доработать (исправить ошибки, переделать letter control)
class LetterControl: UIControl {

    var selectedLetter: String? = nil {
        didSet {
            self.updateSelectedLetter()
            self.sendActions(for: .valueChanged)
        }
    }

    //Массив букв
    var letters = [String]()

    private var buttons: [UIButton] = []
    private var stackView: UIStackView!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    func setupView() {
        setLetters ()
        stackView = UIStackView(arrangedSubviews: self.buttons)

        self.addSubview(stackView)

        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.alignment = .center
        stackView.distribution = .fillEqually
    }

    func setLetters () {
        for letter in letters {
            let button = UIButton(type: .system)
            button.setTitle(letter, for: .normal)
            button.setTitleColor(.lightGray, for: .normal)
            button.setTitleColor(.white, for: .selected)
            button.addTarget(self, action: #selector(selectLetter(_:)), for: .touchUpInside)
            self.buttons.append(button)
        }
    }

    private func updateSelectedLetter() {
        for (index, button) in self.buttons.enumerated() {
            let letter = letters[index]
            button.isSelected = letter == self.selectedLetter
        }
    }

    @objc private func selectLetter(_ sender: UIButton) {
        guard let index = self.buttons.firstIndex(of: sender) else { return }
        let letter = letters[index]
        self.selectedLetter = letter

    }

    override func layoutSubviews() {
        super.layoutSubviews()
        self.stackView.frame = bounds
    }

}

