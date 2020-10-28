
import SwiftUI

struct ContentView: View {
    let units = ["Celsius", "Fahrenheit", "Kelvin"]
    let unitsShow = ["C°","F°","K"]
    @State private var inputUnit = 0
    @State private var outputUnit = 1
    @State private var inputTemperature = ""
    var inputValue: Double {
        return Double(inputTemperature) ?? 0
    }
    var inputC: Double {
        if inputUnit == 0{
            return inputValue
        }
        else if inputUnit == 1 {
            return (inputValue - 32)/1.8
        } else {
            return inputValue - 273.15
        }
    }
    
    var convertedTemperature: Double {
        if outputUnit == 0{
            return inputC
        }
        else if outputUnit == 1 {
            return inputC * 1.8 + 32
        } else {
            return inputC + 273.15
        }
    }
    
    var body: some View {
        NavigationView {
            Form {
                
                Section (header: Text("Input temperature")) {
                    TextField("input temperature", text: $inputTemperature)
                        .keyboardType(.decimalPad)
                    
                    Picker("Input Unit", selection: $inputUnit) {
                        ForEach(0 ..< units.count) {
                            Text("\(self.units[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    Text("\(inputValue, specifier: "%.2f") \(unitsShow[inputUnit]) ")
                }

                                
                Section (header: Text("Converted Temperature")) {
                    Text("\(convertedTemperature, specifier: "%.2f") \(unitsShow[outputUnit]) ")
                    Picker("Input Unit", selection: $outputUnit) {
                        ForEach(0 ..< units.count) {
                            Text("\(self.units[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
            
            .navigationBarTitle("Temperature Conversion", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
