//
//  VcView.swift
//  Estimator
//
//  Created by salvatore dessena on 27/10/2020.
//

import SwiftUI

struct VcView: View {
    
    //Source of Truth
    @ObservedObject var valoreDiMercato: StartValue
    
    
    //properties per gli elementi edilizi
  /*  @State private var structValue: Double = 0
    @State private var roofValue: Double = 0
    @State private var windowsValue: Double = 0
    @State private var plasterValue: Double = 0
    @State private var floorsValue: Double = 0
    @State private var installationsValue: Double = 0
    
    //valore di test
    @State private var testValue: Double = 10000
    
    //dizionario con coefficienti e definizioni
    
    var factorAndDefinitions: Dictionary = [-0.20: "Scarso",  -0.10: "Mediocre",  0.00: "Ordinario",  0.10: "Buono",  0.20: "Eccellente"]
    
    //calc properties per i componenti
    
    
    
    var calcRoof: Double {
        let calc1 = roofValue * testValue
        let calc2 = calc1 * 0.13
        
        let calc3 = calc2
        return calc3
    }
    var calcWindows: Double {
        let calc1 = windowsValue * testValue
        let calc2 = calc1 * 0.12
        
        let calc3 = calc2
        return calc3
    }
    var calcPlaster: Double {
        let calc1 = plasterValue * testValue
        let calc2 = calc1 * 0.10
        
        let calc3 = calc2
        return calc3
    }
    var calcFloors: Double {
        let calc1 = floorsValue * testValue
        let calc2 = calc1 * 0.25
        
        let calc3 = calc2
        return calc3
    }
    var calcInstallations: Double {
        let calc1 = installationsValue * testValue
        let calc2 = calc1 * 0.15
        
        let calc3 = calc2
        return calc3
    }
    
   
    */
  
    
    var body: some View {
        
        VStack {
            Text("Seleziona il livello qualitativo dei componenti edilizi: otterrai automaticamente i coefficienti migliorativi o peggiorativi e il valore di conservazione finale").foregroundColor(.gray)
            
            Spacer()
            
            Form {
               Section(header: Text("Strutture")) {
                    HStack {
                          Text("Livello selezionato:").foregroundColor(.gray)
                          Spacer()
                        Text("\(valoreDiMercato.factorAndDefinitions[valoreDiMercato.structValue] ?? "Buono" )").bold()
                      }

                Slider(value: $valoreDiMercato.structValue, in: -0.20...0.20, step: 0.10)
                          .accentColor(.orange)
                      
                      HStack {
                          Text("Il valore di incremento è:").foregroundColor(.gray)
                          Spacer()
                        Text("\(valoreDiMercato.calcStruct(), specifier: "%g")").bold()
                      }
                      
                }
                
                /*
                
                Section(header: Text("Solai")) {
                    HStack {
                          Text("Se il livello è:").foregroundColor(.gray)
                          Spacer()
                      Text("\((factorAndDefinitions[roofValue] ?? "Buono"))").bold()
                      }

                      Slider(value: $roofValue, in: -0.20...0.20, step: 0.10)
                          .accentColor(.green)
                      
                      HStack {
                          Text("Il valore di incremento è:").foregroundColor(.gray)
                          Spacer()
                          Text("\(calcRoof, specifier: "%g")").bold()
                      }
                      
                }
                
                Section(header: Text("Infissi")) {
                    HStack {
                          Text("Se il livello è:").foregroundColor(.gray)
                          Spacer()
                      Text("\((factorAndDefinitions[windowsValue] ?? "Buono"))").bold()
                      }

                      Slider(value: $windowsValue, in: -0.20...0.20, step: 0.10)
                          .accentColor(.purple)
                      
                      HStack {
                          Text("Il valore di incremento è:").foregroundColor(.gray)
                          Spacer()
                          Text("\(calcWindows, specifier: "%g")").bold()
                      }
                      
                }
                
                Section(header: Text("Intonaci e finiture")) {
                    HStack {
                          Text("Se il livello è:").foregroundColor(.gray)
                          Spacer()
                      Text("\((factorAndDefinitions[plasterValue] ?? "Buono"))").bold()
                      }

                      Slider(value: $plasterValue, in: -0.20...0.20, step: 0.10)
                          .accentColor(.gray)
                      
                      HStack {
                          Text("Il valore di incremento è:").foregroundColor(.gray)
                          Spacer()
                          Text("\(calcPlaster, specifier: "%g")").bold()
                      }
                      
                }
                
                Section(header: Text("Pavimenti e rivestimenti")) {
                    HStack {
                          Text("Se il livello è:").foregroundColor(.gray)
                          Spacer()
                      Text("\((factorAndDefinitions[floorsValue] ?? "Buono"))").bold()
                      }

                      Slider(value: $floorsValue, in: -0.20...0.20, step: 0.10)
                          .accentColor(.blue)
                      
                      HStack {
                          Text("Il valore di incremento è:").foregroundColor(.gray)
                          Spacer()
                          Text("\(calcFloors, specifier: "%g")").bold()
                      }
                      
                }
                
                Section(header: Text("Impianti")) {
                    HStack {
                          Text("Se il livello è:").foregroundColor(.gray)
                          Spacer()
                      Text("\((factorAndDefinitions[installationsValue] ?? "Buono"))").bold()
                      }

                      Slider(value: $installationsValue, in: -0.20...0.20, step: 0.10)
                        .accentColor(.pink)
                      
                      HStack {
                          Text("Il valore di incremento è:").foregroundColor(.gray)
                          Spacer()
                          Text("\(calcInstallations, specifier: "%g")").bold()
                      }
                      
                }
                
             */
                
            }

            HStack {
                Text("Il valore VC è:")
                Spacer()
                Text("€ \(valoreDiMercato.calcStruct())").bold()
            }.padding()
            
            NavigationLink("Avanti", destination: TownView())
                .padding()
                .font(.title2)
                .foregroundColor(.blue)
            
        }.navigationBarTitle("Valore di Conservazione")
        
    }
}

struct VcView_Previews: PreviewProvider {
    static var previews: some View {
        VcView(valoreDiMercato: StartValue())
    }
}
