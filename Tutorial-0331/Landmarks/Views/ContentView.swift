//
//  ContentView.swift
//  Tutorial-0331
//
//  Created by κΉνν on 2022/03/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
