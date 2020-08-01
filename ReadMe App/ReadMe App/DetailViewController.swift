

import UIKit

class DetailViewController: UIViewController {
    
    let book: Book
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = book.image
        titleLabel.text = book.title
        authorLabel.text = book.author
    }
    
    required init?(coder: NSCoder) {
        fatalError("This never be called!")
    }
    
    init?(coder: NSCoder, book: Book) {
        self.book = book
        super.init(coder: coder)
    }
}
