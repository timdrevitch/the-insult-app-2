//
//  ViewController.swift
//  The Insult App 2
//
//  Created by Tim Drevitch on 2/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InfoButton: UIButton!
    @IBOutlet weak var StartButton: UIButton!
    @IBOutlet weak var InsultLabel: UILabel!
    @IBOutlet weak var BubbleImage: UIImageView!
    @IBOutlet weak var ShareButton: UIButton!
    @IBOutlet weak var HomeButton: UIButton!
    @IBOutlet weak var CreateInsultButton: UIButton!
    @IBOutlet weak var Background2: UIImageView!
    @IBOutlet weak var Shimmer: UIImageView!
    @IBOutlet weak var Background: UIImageView!
    @IBOutlet weak var ContinueButton: UIButton!
    @IBOutlet weak var Terms: UILabel!
    @IBOutlet weak var TermsQuote: UILabel!
    
    @IBOutlet weak var InfoBackground: UIImageView!
    @IBOutlet weak var LeaveInfoButton: UIButton!
    @IBOutlet weak var InfoLabel: UILabel!
    @IBOutlet weak var InsultApp1Img: UIImageView!
    @IBOutlet weak var InsultApp2Img: UIImageView!
    @IBOutlet weak var InsultApp1Label: UILabel!
    @IBOutlet weak var InsultApp2Label: UILabel!
    @IBOutlet weak var Link1: UIButton!
    @IBOutlet weak var Link2: UIButton!
    
    @IBOutlet weak var arrow: UIImageView!
    
    
    
 
    @IBAction func InfoButtonPressed(_ sender: UIButton) {
        InfoBackground.isHidden = false
        LeaveInfoButton.isHidden = false
        InfoLabel.isHidden = false
        InsultApp1Img.isHidden = false
        InsultApp2Img.isHidden = false
        InsultApp1Label.isHidden = false
        InsultApp2Label.isHidden = false
        Link1.isHidden = false
        Link2.isHidden = false
    }
    
    @IBAction func LeaveInfoScreenPressed(_ sender: UIButton) {
        InfoBackground.isHidden = true
        LeaveInfoButton.isHidden = true
        InfoLabel.isHidden = true
        InsultApp1Img.isHidden = true
        InsultApp2Img.isHidden = true
        InsultApp1Label.isHidden = true
        InsultApp2Label.isHidden = true
        Link1.isHidden = true
        Link2.isHidden = true
        
        rotate(imageView: Background, aCircleTime: 15)
        
        //animate button shimmer
        UIImageView.animate(withDuration: 2, delay: 0, options: [.repeat, .beginFromCurrentState], animations: {
            self.Shimmer.transform = CGAffineTransform(translationX: -self.Shimmer.frame.width + self.view.bounds.width - 25, y: 0)
        }, completion: nil)
        
        //animate 2 size
        UIImageView.animate(withDuration: 3.0, delay: 0, options: [.repeat, .autoreverse, .beginFromCurrentState], animations: {
                self.Two.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }, completion: nil)
    }
    
    
    @IBAction func CreateInsultPressedUp(_ sender: UIButton) {
        
        self.InsultLabel.textColor = UIColor.black
        self.ShareButton.alpha = 1
        self.arrow.isHidden = false
        
        //change text bubble image
        self.BubbleImage.image = UIImage(named: "Bubble\(arc4random_uniform(5) + 1).png")
        
        let array = ["You are such a pathetic, good for nothing, big, fat, stupid, smoldering, fermented pile of swine on the floor!",
                     "You are such a big, fat, stupid, blithering, degenerative, incompetent pile of dung in a ditch!",
                     "You’re a big-footed, blunder-headed, barbaric, blithering buffoon with a worse IQ than an infant donkey!",
                     "You are such a puny little blundering, butt-faced bad guy, who is depriving some poor village of its idiot!",
                     "You are a gargling, ugly, putrid, towering pile of garbage on the ground getting stepped on!",
                     "You’re an utterly idiotic, mangy, uncleaned, moldy, melon-headed moron with no life!",
                     "You are such a gross, overcooked, mud-covered, dirty little dumb person who lives with trolls!",
                     "You are literally a big, ugly, boring, stupid, foolish, inconceivably idiotic, bumbling brainless oaf!",
                     "You’re an absolutely useless, big-headed, ham-fisted, fruitless wise guy capable of less than nothing!",
                     "You are a stupid, ugly, noodle headed, insignificant speck of disgusting, putrid, splattered vomit on the wall!",
                     "You are a babbling, incoherent, unintelligible, indiscernible, bottom of the totem pole bare bumbling baboon!",
                     "You are the most respectable, caring, likable, unselfish, easy going incredible person in the entire world… on opposite day!",
                     "You are a freaking awful, nasty, lame little foolish failure that literally eats straw and stands in a field to scare local birds away!",
                     "You have got to be the most terrible, disgusting, putrid, belligerent, vile, precocious abomination to humankind!",
                     "You’re an absolutely horrid, precocious, pompous, booger-eating futile half-wit capable of tripping and falling while laying on the ground!",
                     "You are undeniably, without a doubt, the one and only literal worst, most foul, deteriorating, clumsy-footed nincompoop in all the lands!",
                     "You’re an annoying, unequivocally atrocious, depreciating, dunderheaded, dimwitted moron comprised of blasphemy and defecation!",
                     "You are such a simple-minded, nauseating, uncivilized, deplorable, decadent, sybaritic calamity to all living creatures!",
                     "You are the biggest, most appalling and disturbing, bubbling bucket of nonsense and filth!",
                     "You’re an acrimoniously bitter, vindictive abyss of collating roaches!",
                     "boi",
                     "You are a batty, big-footed, butt-faced, booger-eating, barbaric blatherskite with an extremely incongruous personality!",
                     "You have got to be the literal worst, annoyingly pathetic, most atrocious, bigot-headed degenerate known to man!",
                     "You are such an uncoordinated, unintelligible, blunder-headed, boring insignificant garbage bag full of toilet paper!",
                     "You are such a demented, dirty discombobulating, dim-witted, disgusting little dumb dude deprived of any good genetically determined characteristics!",
                     "You are a sheepishly despicable, primitive, repugnant, ninny-headed atrocity!",
                     "You are clearly the most detestable, soul crushing, melon-headed monstrosity to ever walk the earth!",
                     "You are a profoundly goofy, dunderheaded, booger-eating, blundering little bottom feeding, yammering ignoramus!",
                     "You’re an ignorant, imbecilic, schemingly spiteful simpleton who is also a big, dumb jerk-face!",
                     "You are such a disturbing, klutzy grotesque, detestable little nocturnal creature living in a dark, foreboding underground lair with trolls and goblins!",
                     "You are a twisted, psychotic, sick and demented, vile wacko who lives in an insane asylum!",
                     "You’re literally an uncultured, repulsively crooked, crusty, dusty, blasphemous fart-sniffer who’s insignificance is unmeasurable!",
                     "You are a diabolically evil, villainous, degenerative, juvenile delinquent who resides in the local penitentiary!",
                     "You’re such a deluded and delusional, humiliatingly hideous, clumsy, indecisive ogre in a public urinal!",
                     "You are a glum, feses-collecting, dreadfully disappointing, repugnant and unorthodox, embarrassing, goofy, depleting amateur!",
                     "You are a disposable little dainty, greedy heathen stricken with irritable bowel movements!",
                     "You are such a horrible, ridiculous, despise-able, diseased and deceased mountain of rotting roadkill who only pulls rookie maneuvers!",
                     "You will now and from here on out be known as the most noncommittal, narcissistic, ninny-headed nincompoop to walk the face of the Earth!",
                     "You’re the most worthless, scummy, ambiguously hypocritical, disgustingly disturbing maggot rotting in some far away lair by yourself and with your rats!",
                     "You’re some sort of ferocious, worm-eating rodent whose only friend is a completely forgettable dweeb!",
                     "You are the most hated, squirmy little weak, parasitic and intolerable saboteur to all good things!",
                     "You are a maniacal and conniving, crooked, crummy, demented egomaniac!",
                     "You are a menacingly seedy bozo who is also not only a calamity, but an imbecile and a nut-job as well!",
                     "You’re a bizarre and dorky, over confident, pretentious, rambling, obnoxious numbskull!",
                     "You’re an unproductive, unmotivated, and unprofessional, donkey-faced, fan-breathing, cretinous imbecile with an empty noggin!"]
        
        let randomIndex = Int(arc4random_uniform(UInt32(array.count)))
        
        self.InsultLabel.text = (array[randomIndex])
        
    }
    
    
    //create insult pushed
    @IBAction func CreateInsultPressed(_ sender: UIButton) {
        self.Shimmer.alpha = 0
    }
    
    //move to conditions page
    @IBAction func StartPressedUp(_ sender: UIButton) {
        
        sender.alpha = 1
        
        self.Shimmer.alpha = 0
        UIImageView.animate(withDuration: 1.0, delay: 0, options: [.beginFromCurrentState], animations: {
                self.Two.transform = CGAffineTransform(scaleX: 200, y: 200)
        }, completion: { _ in
            UIView.animate(withDuration: 1) {
                self.ContinueButton.alpha = 1
                self.Terms.alpha = 1
                self.TermsQuote.alpha = 1
                self.Shimmer.alpha = 0.4
            }
        })
    }
    
    //start button pressed
    @IBAction func StartPressed(_ sender: UIButton) {
        self.Shimmer.alpha = 0
    }
    
    //spins the background
    func rotate(imageView: UIImageView, aCircleTime: Double) { //CABasicAnimation
            
            let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
            rotationAnimation.fromValue = 0.0
            rotationAnimation.toValue = -Double.pi * 2 //Minus can be Direction
            rotationAnimation.duration = aCircleTime
            rotationAnimation.repeatCount = .infinity
            imageView.layer.add(rotationAnimation, forKey: nil)
    }
    
    //return to title screen
    @IBAction func HomeButtonPressed(_ sender: UIButton) {
        self.Background2.alpha = 0
        self.CreateInsultButton.alpha = 0
        self.Shimmer.alpha = 0.4
        self.ShareButton.alpha = 0
        self.HomeButton.alpha = 0
        self.BubbleImage.alpha = 0
        self.InsultLabel.alpha = 0
        self.arrow.isHidden = true
        
        UIImageView.animate(withDuration: 0.01, delay: 0, options: [ .beginFromCurrentState], animations: {
            self.Two.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        }, completion: { _ in UIImageView.animate(withDuration: 3.0, delay: 0, options: [.repeat, .autoreverse, .beginFromCurrentState], animations: {
                self.Two.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }, completion: nil)
        })
    }
    
    //move to insult creation screen
    @IBAction func ContinuePressedUp(_ sender: UIButton) {
        self.Background2.frame = CGRect(x: self.view.frame.size.width / 2, y: self.view.frame.size.height / 2, width: self.view.frame.size.width * 2, height: self.view.frame.size.height * 2)
        UIView.animate(withDuration: 1) {
            self.ContinueButton.alpha = 0
            self.Terms.alpha = 0
            self.TermsQuote.alpha = 0
        }
        UIView.animate(withDuration: 1) {
            self.Background2.alpha = 1
            self.Shimmer.alpha = 0
            self.rotate(imageView: self.Background2, aCircleTime: 15)
            self.CreateInsultButton.alpha = 1
            self.Shimmer.alpha = 0.4
            self.HomeButton.alpha = 1
            self.BubbleImage.alpha = 1
            self.InsultLabel.alpha = 1
            self.InsultLabel.textColor = UIColor.black
            self.InsultLabel.text = "Press CREATE INSULT to generate a random insult!"
        }
    }
    
    //share button pressed
    @IBAction func ShareButtonPressed(_ sender: UIButton) {
        self.arrow.alpha = 0
        
        let activityVC = UIActivityViewController(activityItems: [self.InsultLabel.text! + " https://apps.apple.com/us/app/the-insult-app-2/id1557247107"], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(activityVC, animated: true, completion: nil)
    }
    //Continue pressed
    @IBAction func ContinuePressed(_ sender: UIButton) {
        self.Shimmer.alpha = 0
    }
    
    @IBAction func Insult1LinkPressed(_ sender: UIButton) {
        if let url = NSURL(string: "https://apps.apple.com/us/app/the-insult-app/id1245427737"){
            UIApplication.shared.openURL(url as URL)
            }
    }
    
    @IBAction func Insult2LinkPressed(_ sender: UIButton) {
        let myUrl2 = "https://apps.apple.com/us/app/the-insult-app-2/id1557247107"
        if !myUrl2.isEmpty {
             UIApplication.shared.openURL(URL(string: "\(myUrl2)")!)
        }
    }
    
    @IBOutlet weak var Two: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Background.transform = CGAffineTransform(scaleX: 2, y: 2)
        Background2.transform = CGAffineTransform(scaleX: 2, y: 2)
        Background2.alpha = 0
        ContinueButton.alpha = 0
        Terms.alpha = 0
        TermsQuote.alpha = 0
        CreateInsultButton.alpha = 0
        HomeButton.alpha = 0
        ShareButton.alpha = 0
        BubbleImage.alpha = 0
        InsultLabel.alpha = 0
        arrow.isHidden = true
        
        InfoBackground.isHidden = true
        LeaveInfoButton.isHidden = true
        InfoLabel.isHidden = true
        InsultApp1Img.isHidden = true
        InsultApp2Img.isHidden = true
        InsultApp1Label.isHidden = true
        InsultApp2Label.isHidden = true
        Link1.isHidden = true
        Link2.isHidden = true
        
        InsultLabel.textColor = UIColor.black
        Terms.textColor = UIColor.black
        TermsQuote.textColor = UIColor.black
        CreateInsultButton.setTitleColor(.black, for: .normal)
        HomeButton.setTitleColor(.black, for: .normal)
        ContinueButton.setTitleColor(.black, for: .normal)
        ShareButton.setTitleColor(.black, for: .normal)
        StartButton.setTitleColor(.black, for: .normal)
        
        //animate button shimmer
        UIImageView.animate(withDuration: 2, delay: 0, options: [.repeat, .beginFromCurrentState], animations: {
            self.Shimmer.transform = CGAffineTransform(translationX: -self.Shimmer.frame.width + self.view.bounds.width - 25, y: 0)
        }, completion: nil)
        
        //animate 2 size
        UIImageView.animate(withDuration: 3.0, delay: 0, options: [.repeat, .autoreverse, .beginFromCurrentState], animations: {
                self.Two.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }, completion: nil)
        
        //animate bubble size
        UIImageView.animate(withDuration: 3.0, delay: 0, options: [.repeat, .autoreverse, .beginFromCurrentState], animations: {
                self.BubbleImage.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }, completion: nil)
        
        //animate insult size
        UIImageView.animate(withDuration: 3.0, delay: 0, options: [.repeat, .autoreverse, .beginFromCurrentState], animations: {
                self.InsultLabel.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }, completion: nil)
        
        rotate(imageView: Background, aCircleTime: 15)
        
        let arrowNames = ["arrow1", "arrow2", "arrow3", "arrow4", "arrow5", "arrow6", "arrow7", "arrow8", "arrow9", "arrow10", "arrow11", "arrow12", "arrow13", "arrow14", "arrow15", "arrow16"]
        var arrows = [UIImage]()
        
        for i in 0..<arrowNames.count{
            arrows.append(UIImage(named: arrowNames[i])!)
        }
        
        arrow.animationImages = arrows
        arrow.animationDuration = 2.0
        arrow.startAnimating()
    }


}

