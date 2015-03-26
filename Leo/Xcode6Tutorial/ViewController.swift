//
//  ViewController.swift
//  Xcode6Tutorial
//
//  Created by Leonardo Rubio 1 on 3/24/15.
//  Copyright (c) 2015 FantasyName. All rights reserved.
//

import UIKit
import Darwin

class ViewController: UIViewController {
    

    //@IBOutlet weak var setaDireita: UIButton!
    @IBOutlet weak var botaoSair: UIButton!
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var PlayerScore: UILabel!
    @IBOutlet weak var EnemyScore: UILabel!
    @IBOutlet weak var timeVencedor: UILabel!
    
    @IBOutlet weak var viewFinal: UIView!
    @IBOutlet weak var notaJogarNovamente: UIView!
    
    @IBOutlet weak var viewParaAtributos: UIView!
    
    @IBOutlet weak var forcaUm: UILabel!
    @IBOutlet weak var forcaDois: UILabel!
    
    var cardNamesArray:[String] = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
               // Do any additional setup after loading the view, typically from a nib.
        
        self.PlayerScore.text = String(selecionarTime.playerScoreTotal)

        self.EnemyScore.text = String (selecionarTime.enemyScoreTotal)

        //viewFinal.hidden = true
        //notaDeFIM.hidden = true
        
        if(selecionarTime.timeEscolha == 0) {
            //Corinthians
            var cardNamesArray:[String] = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]
        }
        
        else if(selecionarTime.timeEscolha == 1) {
            //Sao Paulo
            
            var cardNamesArray:[String] = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]
        }
        
        else if(selecionarTime.timeEscolha == 2) {
            // Santos
            
            var cardNamesArray:[String] = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]
        }
        else if(selecionarTime.timeEscolha == 3) {
            // 
            
            var cardNamesArray:[String] = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]
        }
        
        
        //self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
    

    }
    
    @IBAction func botaoSair(sender: AnyObject) {
        exit(0);
    }
    
    @IBAction func playRoundTapped(sender: UIButton) {
        
        
        // randomize um numero para o firstImageView
        var firstRandomNumber:Int = Int(arc4random_uniform(13))
        

        
        var secondForca:Int = Int(70 + arc4random_uniform(30))
        
        forcaUm.text = String(format: "%i", selecionarTime.forcaCarta)
        forcaDois.text = String(format: "%i", secondForca)


        
        //Controi uma string com numero randomico
        //var firstCardString:String = String(format: "Card%i", firstRandomNumber)
        
        //Acessa as cartas por array
        var firstCardString:String = self.cardNamesArray[firstRandomNumber]
        
        // Seta a firstCardView com o numero correspondente
        self.firstCardImageView.image = UIImage (named: firstCardString)
        
        
        //randomize a number for secondCardView
        var secondRandomNumber:Int = Int (arc4random_uniform(13))
        
        //constroi string com random number pra secondCardView
        //var secondCardString:String = String(format: "Card%i", secondRandomNumber)
        
        //acessa cartas por array
        var secondCardString:String = self.cardNamesArray [secondRandomNumber]
        
        // Seta secondCardView com numero correspondente
        self.secondCardImageView.image = UIImage (named: secondCardString)
        
        //determina a carta maior
        if selecionarTime.forcaCarta > secondForca {
            selecionarTime.playerScoreTotal += 1
            self.PlayerScore.text = String(selecionarTime.playerScoreTotal)
            
            
        }
        else if selecionarTime.forcaCarta == secondForca {
        
        }
        else {
            selecionarTime.enemyScoreTotal += 1
            self.EnemyScore.text = String (selecionarTime.enemyScoreTotal)
            
        }
        if(selecionarTime.enemyScoreTotal == 10)
        {
            
            NSLog("TesteEnemy")
            timeVencedor.text = "O time adversário ganhou!"
            viewFinal.hidden = false
            notaJogarNovamente.hidden = false
            viewParaAtributos.hidden = true
        }
        
        else if(selecionarTime.playerScoreTotal == 10){
            
            NSLog("TesteScorePlayer")
            timeVencedor.text = "Você ganhou!"
            viewFinal.hidden = false
            notaJogarNovamente.hidden = false
            viewParaAtributos.hidden = true
        }
        else {
        viewParaAtributos.hidden = false
        
        }
    }

}







