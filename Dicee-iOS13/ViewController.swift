
import UIKit

class ViewController: UIViewController {

    //referencias a los imageView
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceImages = [ #imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix") ];
    
    //funcion que arranca al cargar la vista
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    //al pulsar el boton
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //print("Has pulsado el botón");
        
        diceImageView1.image = diceImages.randomElement();
        diceImageView2.image = diceImages[Int.random(in: 1...5)];

        
    }
    
}
