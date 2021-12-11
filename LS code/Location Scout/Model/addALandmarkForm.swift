//
//  addALandmarkForm.swift
//  Location Scout
//
//  Created by Zavien Kellum, Samuel Weiner, Robert Williamson, and Andrew Ellender
//
// This the view that you will see when you click the "add" button on the ContentView page.
//  This view contains a form that the user can fill out that updates the ContetntView.
//  There is a submit button at the end, that saves the data and displays the data collects and stores it in the correct

import SwiftUI

struct addALandmarkForm: View {
    @Environment(\.presentationMode) var presentatoinMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var newLocationName: String = ""
    @State var texts: String = "Enter a Description"
    @State public var newPropertyType1 = false
    @State public var propertyPrice: String = ""
    @State var email: String = ""
    @State var ownerName: String = ""
    @State var alerTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {        
        NavigationView {
            Form {
                TextField("Location Name", text: $newLocationName)
                Toggle("Property is Private ",
                       isOn: $newPropertyType1)
                if newPropertyType1{
                    TextField("Asking/Starting Price", text: $propertyPrice)
                        .keyboardType(.numberPad)
                }
                TextEditor(text: $texts )
                Section(header: Text("Owner")){
                    TextField("Enter an Email", text: $email)
                    TextField("Owner's First Name", text: $ownerName)
                }
                Section(header: Text("Submit")){
                    Button (action: saveButtonPressed, label:{
                        Label("Submit New Location", systemImage: "plus.square")
                    })
                }
            }
            .navigationBarTitle("Add a New Location")
            .alert(isPresented: $showAlert, content: getAlert)
            
        }
    }
        func saveButtonPressed() {
            if textIsAppropriate() {
                listViewModel.addItem(title: newLocationName, descrip: texts, price: propertyPrice, mail: email, owner: ownerName)
                presentatoinMode.wrappedValue.dismiss()
            }
        }
        func textIsAppropriate() -> Bool {
            if newLocationName.count < 3 {
                alerTitle = "Your request must be 3 characherts long."
                showAlert.toggle()
                return false
            }
            return true
        }
        func getAlert() -> Alert {
            return Alert(title: Text(alerTitle))
        }
    }
struct addALandmarkForm_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            addALandmarkForm()
        }
        .environmentObject(ListViewModel())
    }
}
