//
//  ViewController.swift
//  Recipies
//
//  Created by Chakane Shegog on 9/10/23.
//

import UIKit

class ViewController: UIViewController {

    // MARK: -  @IBOutlets
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeDescription: UITextView!
    @IBOutlet weak var recipeName: UILabel!
    
    // MARK: - Recipe Data
    let recipies = Recipe.getRecipes()
    
    // MARK: - viewDidLoad()
    // can be seen as the constructor/initilaizer
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - @IBActions
    @IBAction func recipeChanged(_ sender: UIButton) {
//        print("do we get recipies? : \(recipies)")
        let recipeChosen = sender.tag
        switch recipeChosen {
        case 0:
            updateRecipeAtIndex(index: recipeChosen)
        case 1:
            updateRecipeAtIndex(index: recipeChosen)
        case 2:
            updateRecipeAtIndex(index: recipeChosen)
        default:
            print("error, recipeChosen was: \(recipeChosen)")
        }
    }
    
    // In our UI we have 3 buttons which will have their own value.
    func updateRecipeAtIndex(index: Int) {
        let recipe = recipies[index]
        
        // Update UI elements using the current Recipe instance
        recipeImage.image = recipe.image
        recipeName.text = recipe.name
        recipeDescription.text = recipe.servingProcedure
    }
    
}

