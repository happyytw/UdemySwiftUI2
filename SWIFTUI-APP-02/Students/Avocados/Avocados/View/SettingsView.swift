//
//  SettingsView.swift
//  Avocados
//
//  Created by Taewon Yoon on 2023/09/09.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @State private var enableNotification: Bool = false
    @State private var backgroundRefresh: Bool = false
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // MARK: - HEADER
            
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
                // MARK: - SECTION #1
                Section {
                    Toggle(isOn: self.$enableNotification) {
                        Text("Enable notification")
                    }
                } header: {
                    Text("General Settings")
                }
                
                Toggle(isOn: $backgroundRefresh) {
                    Text("Background refresh")
                }

                // MARK: - SECTION #2
                Section(content: {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility").foregroundColor(Color.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack {
                            Text("Developer").foregroundColor(Color.gray)
                            Spacer()
                            Text("John / Jane")
                        }
                        HStack {
                            Text("Designer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Website").foregroundColor(Color.gray)
                            Spacer()
                            Link("swiftuimasterclass.com", destination: URL(string: "swiftuimasterclass.com")!)
//                            Text("swiftuimasterclass.com")
                        }
                        HStack {
                            Text("Version").foregroundColor(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal message").foregroundColor(Color.gray)
                            Spacer()
                            Text("👍 Happy Coding!")
                        }
                    }

                }, header: {
                    Text("Application")
                })
            }
        }

        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
