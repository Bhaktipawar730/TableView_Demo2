import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    var array1 = ["AAAA", "BBBB", "CCCC", "DDDD", "EEEE", "FFFF", "GGGG", "HHHH","AAAA", "BBBB", "CCCC", "DDDD", "EEEE", "FFFF", "GGGG", "HHHH"]
    var array2 = ["aaaa", "bbbb", "cccc", "dddd", "eeee", "ffff", "gggg", "hhhh","aaaa", "bbbb", "cccc", "dddd", "eeee", "ffff", "gggg", "hhhh"]
    var images = ["G", "G", "G", "G", "G", "G", "G","G","G", "G", "G", "G", "G", "G", "G","G"] // Array for image names
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        cell.arrayOneLabel.text = array1[indexPath.row]
        cell.arrayTwoLabel.text = array2[indexPath.row]
        cell.img.image = UIImage(named: images[indexPath.row]) // Assign image dynamically
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secondViewController.strlabelOne = array1[indexPath.row]
        secondViewController.strlabelTwo = array2[indexPath.row]
        secondViewController.selectedImage = UIImage(named: images[indexPath.row]) // Pass the image
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Remove data from arrays
            array1.remove(at: indexPath.row)
            array2.remove(at: indexPath.row)
            images.remove(at: indexPath.row) // Remove the image
            
            // Delete the row from the table view
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //set initial cell
        cell.alpha = 0
        
        let transform = CATransform3DTranslate(CATransform3DIdentity, -250, 20, 0)
        
        cell.layer.transform = transform
        
        //Final set cell animation
        UIView.animate(withDuration: 1.0){
            cell.alpha = 1.0
            cell.layer.transform = CATransform3DIdentity
        }
        
}
}
