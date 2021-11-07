//
//  ContentView.swift
//  Shared
//
//  Created by Girls Who Code at Berkeley
//

import SwiftUI

struct ContentView: View {
    let linkedInProfile = URL.init(string: "http://linkedin.com")
    
    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            // Name and Image
            HStack(alignment: .center) {
                Image("student-stock")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.black, lineWidth: 0))
                                .padding(.trailing, 15)
                VStack(alignment: .leading, spacing: 15) {
                    Text("Hello,\nI'm Nancy!").bold()
                        Text("Aspiring product manager pasionate about sustainable energy")
                    }
                }
            
                // Contact Information
                VStack(alignment: .leading, spacing: 5) {
                    Text("Contact").bold().padding(.bottom, 8)
                    HStack() {
                        Image(systemName: "mail")
                        Text("name@net.com")
                    }
                    HStack() {
                        Image(systemName: "message")
                        Link(destination: linkedInProfile!) {
                            Text("LinkedIn")
                        }
                    }
                }
            
                // Experience
                VStack(alignment: .leading, spacing: 5) {
                    Text("Experience").bold().padding(.bottom, 10)
                    Text("June 2021 - Aug 2021")
                    Text("Girls Who Code Product Intern").bold().padding(.bottom, 10)
                    Text("May 2019 - Present")
                    Text("Girls and Compsci Member").bold().padding(.bottom, 10)
                }
            
                // Languages
                VStack(alignment: .leading, spacing: 5) {
                    Text("Languages").bold().padding(.bottom, 10)
                    HStack(spacing: 30) {
                        Text("HTML/CSS")
                        Text("Javascript")
                        Text("Python")
                    }
                }
            
                // Projects
                VStack(alignment: .leading, spacing: 5) {
                    Text("Projects").bold().padding(.bottom, 10)
                    ScrollView(.horizontal) {
                        HStack() {
                        Image("proj-stock")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 150)
                            .clipShape(Rectangle())
                            .shadow(radius: 10)
                            .overlay(Circle().stroke(Color.black, lineWidth: 0))
                            .padding(.trailing, 15)
                        
                        Image("proj-stock")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 150)
                            .clipShape(Rectangle())
                            .shadow(radius: 10)
                            .overlay(Circle().stroke(Color.black, lineWidth: 0))
                            .padding(.trailing, 15)
                        }
                    }
                }
        }
        .padding(50)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 223, green: 223, blue: 224)).edgesIgnoringSafeArea(.all)
        }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
