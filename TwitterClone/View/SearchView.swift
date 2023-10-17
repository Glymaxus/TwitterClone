//
//  SearchView.swift
//  TwitterClone
//
//  Created by bastien giat on 22/04/2021.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @ObservedObject var viewModel = SearchViewModel(config: .search)
    var body: some View {
        ScrollView {
            SearchBarView(text: $searchText)
                .padding()
            
            VStack(alignment: .leading) {
                ForEach(searchText.isEmpty ? viewModel.users : viewModel.filteredUsers(searchText)) { user in
                    HStack { Spacer() }
                    
                    NavigationLink(
                        destination: LazyView(UserProfileView(user: user)),
                        label: {
                            UserCellView(user: user)
                        })
                        .buttonStyle(PlainButtonStyle())
                    
                    
                }
            }
            .padding(.leading)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
