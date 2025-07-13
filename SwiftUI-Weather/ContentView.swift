//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Bekarys Maksutbek on 13.07.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("LightBlue")]),            startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Astana, Kazakhstan")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
         
                
                VStack (spacing: 8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                        
                    Text("76°C")
                        .font(.system(size: 38, weight: .heavy, design: .default))
                        .foregroundStyle(.white)
                        .padding(.horizontal)
                        
                }
                .padding(.bottom, 70)
                HStack(spacing: 10){
                    WeatherDayView(dayOfWeek: "MON",
                                   imageName: "cloud.sun.fill",
                                   temperature: 72)
                    
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "sun.max.fill",
                                   temperature: 71)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "wind",
                                   temperature: 50)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "sunset.fill",
                                   temperature: 50)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "moon.stars.fill",
                                   temperature: 50)
                }
         
                
                Spacer()
                
                Button{
                    print("Tapped")
                    
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                   
                        .clipShape(RoundedRectangle(cornerRadius: 10))
            
                }
                
                Spacer()
            }
 
        }

    }
    
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .heavy, design: .default))
                .foregroundStyle(.white)
                .padding(.horizontal)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            Text("\(temperature)°C")
                .font(.system(size: 16, weight: .heavy, design: .default))
                .foregroundStyle(.white)
                .padding(.horizontal)
            
        }
    }
}
