//
//  LocationCell.swift
//  DubDubGrub
//
//  Created by Justin Trautman on 4/22/22.
//

import SwiftUI

struct LocationCell: View {
	
	var location: DDGLocation
	
    fileprivate func extractedFunc() -> HStack<TupleView<(some View, some View)>> {
        return HStack {
            Image(uiImage: location.createSquareImage())
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                    .scaledToFill()
                
                HStack {
                    AvatarView(image: PlaceholderImage.avatar, size: 35)
                    AvatarView(image: PlaceholderImage.avatar, size: 35)
                    AvatarView(image: PlaceholderImage.avatar, size: 35)
                    AvatarView(image: PlaceholderImage.avatar, size: 35)
                    AvatarView(image: PlaceholderImage.avatar, size: 35)
                }
            }
            .padding(.leading)
        }
}

var body: some View {
    extractedFunc()
	}
}

struct LocationCell_Previews: PreviewProvider {
    static var previews: some View {
		LocationCell(location: DDGLocation(record: MockData.location))
    }
}
