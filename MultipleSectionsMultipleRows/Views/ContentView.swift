//
//  ContentView.swift
//  MultipleSectionsMultipleRows
//
//  Created by David Para on 6/12/20.
//  Copyright © 2020 David Para. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let statesDataViewModel = StatesDataViewModel(bundle: .main)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.statesDataViewModel.tenMostPopulousStates, id: \.state) { stateData in
                    Section(header: Text(stateData.state)) {
                        ForEach(stateData.mostPopulousCities, id: \.city) { cityData in
                            HStack {
                                Text(cityData.city)
                                Spacer()
                                Text("\(cityData.population)")
                                    .foregroundColor(.green)
                            }
                        }
                    }
                }
            }.navigationBarTitle(Text("States"))
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
