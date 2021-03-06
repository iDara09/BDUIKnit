//
//  BDModalTextField.swift
//  
//
//  Created by Dara Beng on 9/11/19.
//

import SwiftUI


/// A text field that should be used as a sheet to get input.
///
/// The view has title, text field, prompt, and scrollable tokens.
///
public struct BDModalTextField: View {
    
    @Binding var viewModel: BDModalTextFieldModel
    
    
    public init(viewModel: Binding<BDModalTextFieldModel>) {
        self._viewModel = viewModel
    }
    
    
    public var body: some View {
        VStack(spacing: 16) {
            // Title & Text Field
            VStack(alignment: .leading) {
                HStack(alignment: .firstTextBaseline) {
                    Text(viewModel.title)
                        .font(.largeTitle)
                        .bold()
                        .lineLimit(1)
                        .foregroundColor(viewModel.titleColor)
                    Spacer()
                    HStack(spacing: 16) {
                        viewModel.onCancel.map { action in
                            Button("Cancel", action: action)
                        }
                        
                        viewModel.onCommit.map { action in
                            Button(action: action) {
                                Text(LocalizedStringKey(viewModel.commitButtonTitle)).bold()
                            }
                        }
                    }
                }
                
                BDTextFieldWrapper(
                    isActive: $viewModel.isFirstResponder,
                    text: $viewModel.text,
                    placeholder: viewModel.placeholder,
                    textColor: viewModel.textColor,
                    placeholderColor: viewModel.placeholderColor,
                    keyboardType: viewModel.keyboardType,
                    returnKeyType: viewModel.returnKeyType,
                    onCommit: viewModel.onReturnKey,
                    configure: configureTextField
                )
                    .fixedSize(horizontal: false, vertical: true)
                
                if viewModel.characterLimit != nil {
                    makeCharacterLimitBar(limit: viewModel.characterLimit!)
                } else {
                    Divider()
                }
            }
            .padding(.horizontal, 20)
            
            // Prompt & Token
            VStack(alignment: .leading, spacing: 16) {
                if !viewModel.prompt.isEmpty {
                    Text(viewModel.prompt)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(viewModel.promptColor ?? .secondary)
                        .padding(.horizontal, 20)
                }
                
                if !viewModel.tokens.isEmpty {
                    tokenScrollView
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(.vertical, 20)
        .overlay(dragHandle.padding(.top, 8), alignment: .top)
    }
    
    
    // MARK: Component
    
    func makeCharacterLimitBar(limit: Int) -> some View {
        let textCount = viewModel.text.count
        let regularColor = viewModel.characterLimitColor ?? .primary
        let warningColor = viewModel.characterLimitWarningColor ?? .red
        let warning = textCount > limit
        let color = warning ? warningColor : regularColor
        return VStack(spacing: 4) {
            BDCharacterLimitBar(current: textCount, limit: limit, color: color, barHeight: 1)
            BDCharacterLimitText(current: textCount, limit: limit, color: color)
        }
    }
    
    var tokenScrollView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(viewModel.tokens, id: \.self) { token in
                    BDModalTextFieldTokenView(
                        token: token,
                        showClear: self.viewModel.showClearTokenIndicator,
                        color: self.viewModel.tokenColor,
                        backgroundColor: self.viewModel.tokenBackgroundColor,
                        clearColor: self.viewModel.tokenClearIndicatorColor,
                        onSelected: self.viewModel.onTokenSelected
                    )
                }
            }
            .padding(.horizontal, 20)
        }
    }
    
    var dragHandle: some View {
        BDModalDragHandle(color: viewModel.titleColor ?? .primary, hideOnVerticalCompact: true)
    }
    
    
    // MARK: Setup
    
    func configureTextField(_ textField: UITextField) {
        textField.font = .preferredFont(forTextStyle: .largeTitle)
        textField.clearButtonMode = .whileEditing
        viewModel.configure?(textField)
    }
}
