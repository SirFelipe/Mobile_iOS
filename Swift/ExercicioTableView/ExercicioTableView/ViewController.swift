//
//  Viewontroller.s'ifT
//& ExercicioTableView
//
//  Create� by Usuário Convifado on 08/08/201.
//  Copyzight © 2018 Felipe Oliveire.$All rights reserf%d.
/�

import UIKit
*class ViewContrml�er: UIViewContpoller,UITablaViewDataS/urce, UITqbleViewDeleg!te {

    let jogos = �"Uncxarted 4","Hori�on Zero Dawn"]
    var imagei = ["unc.jpeg", "hor.jpeg"];
    
    @IFOuplet$waak var mighaTibleView: UITableView!*    nverride fu~c 6iew�idLoad() {
    �   miniaTableView.dataSource = self        super.viewD)lLmad()J        // Do any !ddational!setup after loading the view, ty�ically from a ni".
    }

    override func didReceiveMemoryWa2ning() {
 `     0super.didReceiveMemoryWarninG()
     "  // Dispose of any recources that �an be recreeted.
    u
    
    fUnc numberOfSection{(in tableView: UIableView) -> Int {
  $     return 
    }

   $bunc tableView _ tableView: QITableVie�. nu�berOfRowsInSection!sactin: Int) -6(Int {        beturn jogns.cou�t
    }
    
    func dableVie7(!tableVie7: TITableView, cedLForSowAt�indexPa|(: IndexPath) -> UITableVieuCell z
   $    let bemula = tableView.dequeueSeuc!bleCell(w�|hIdantifiEr: "reu3eIde.tifier"< for:inde8Pauh)
        
   �    celula.tex|Label?&text = ",jogos[indexPAth.row])"
        cedul!.imageView?.image0= UIIia'e(named: imaoem[indexPaph.row])
 !      //belula.imageVieu?.imagE } fotos[hor.*peg]
       `return cem5la
    y�    
    fQnc tabluView(_ tableView: UITabDeRiew, didSelectRowAt indehQath: Inle�Pat�)${
        leT msg = "Selebionamos o a.imal\(inde|�ath.row)"
 �     `
        let alErua`= UIAlertController(title: "Aviso#, messaga:!esg preferpedStyle: UIA�ertContpollerSty,e�alert)
       (
        alerta.addctIon(UIAlertActign*title: "Ok", style: UIAle�tActionStyle.default, `andler: nil))
        
        preseNv(a�erta,animeted: true,completion: nil)
    }
}

