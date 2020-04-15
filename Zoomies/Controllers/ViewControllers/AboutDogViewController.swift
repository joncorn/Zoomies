//
//  AboutDogViewController.swift
//  Zoomies
//
//  Created by Jon Corn on 4/1/20.
//  Copyright © 2020 Jon Corn. All rights reserved.
//

import UIKit

class AboutDogViewController: UIViewController {
  
  // MARK: - OUTLETS
  // Dog breed text field
  @IBOutlet weak var breedView: UIView!
  @IBOutlet weak var breedTextField: UITextField!
  // Dog age text field
  @IBOutlet weak var ageView: UIView!
  @IBOutlet weak var ageTextField: UITextField!
  // Small size check box
  @IBOutlet weak var smallDogSizeView: UIView!
  @IBOutlet weak var smallCheckBoxButton: UIButton!
  // Medium size check box
  @IBOutlet weak var mediumDogSizeView: UIView!
  @IBOutlet weak var mediumCheckBoxButton: UIButton!
  // Large size check box
  @IBOutlet weak var largeDogSizeView: UIView!
  @IBOutlet weak var largeCheckBoxButton: UIButton!
  // Button, error label
  @IBOutlet weak var errorLabel: UILabel!
  @IBOutlet weak var nextButton: UIButton!
  
  // MARK: - VIEW LIFECYCLE
  override func viewDidLoad() {
    super.viewDidLoad()
    // UI
    setupElements()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    // Make error label invisible
    errorLabel.alpha = 0
  }
  
  // MARK: - ACTIONS
  @IBAction func nextButtonTapped(_ sender: Any) {
    // Checks if the text fields have a value, if not, show error
    let error = SignupUtility().validateBreedAge(dogBreed: breedTextField, dogAge: ageTextField)
    if error != nil {
      showError(error!)
      return
    }
  }
  
  // MARK: - METHODS
  func showError(_ message: String) {
    errorLabel.text = message
    errorLabel.alpha = 1
  }
  
  func setupElements() {
    // Hide error label
    errorLabel.alpha = 0
    // Corner radius
    StyleGuide.styleViewsCornerRadius(breedView)
    StyleGuide.styleViewsCornerRadius(ageView)
    StyleGuide.styleViewsCornerRadius(smallDogSizeView)
    StyleGuide.styleViewsCornerRadius(smallCheckBoxButton)
    StyleGuide.styleViewsCornerRadius(mediumDogSizeView)
    StyleGuide.styleViewsCornerRadius(mediumCheckBoxButton)
    StyleGuide.styleViewsCornerRadius(largeDogSizeView)
    StyleGuide.styleViewsCornerRadius(largeCheckBoxButton)
    StyleGuide.styleViewsCornerRadius(nextButton)
  }
  
} // Class end
