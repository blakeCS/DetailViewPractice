//
//  ContentView.swift
//  DetailViewPractice
//
//  Created by Madeline Burton on 12/9/22.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    
    
    
    @State var bookmark : [Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {

        NavigationView{
            List(0..<videoTitles.count, id: \.self) { index in
                    VStack{
                        // Video Title. Should be bold
                        Text(videoData[0])
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            // Image size 100 x 60. Vertical padding of 5
                            Image(videoData[0])
                                .resizable()
                                .frame(width:100, height:60)
                                .padding(.vertical, 5)

                            // Three vertical indexs
                            VStack(alignment: .leading, spacing: 5){



                                // Video Dates. Should be secondary color
                                Text(videoData[1])
                                    .foregroundColor(.secondary)

                                // Video duration. Should be secondary color
                                Text(videoData[2])
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(.secondary)
                            }

                            // Move bookmark to the far right
                            Spacer()

                            // Bookmark Icon
                            Image(systemName: "bookmark.fill")
                                .imageScale(.large)
                            // Change the color based on clicks and dark/light mode
                                .foregroundColor(bookmarkColor(count: bookmark[index], mode: colorScheme))

                            // When the bookmark is tapped, change colors
                                .onTapGesture {

                                    // Update the element in the bookmark list to be the correct count using the updateCount function
                                    bookmark[index] = updateCount(count: bookmark[index])
                                }
                        }
                    }
                }

               // Stylize the list
            }.listStyle(.plain)
             .navigationTitle("SwiftUI Tutorial Videos")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
