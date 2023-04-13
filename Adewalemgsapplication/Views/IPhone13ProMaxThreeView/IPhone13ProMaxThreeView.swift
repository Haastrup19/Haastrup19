import SwiftUI

struct IPhone13ProMaxThreeView: View {
    @StateObject var iPhone13ProMaxThreeViewModel = IPhone13ProMaxThreeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .bottomTrailing) {
                    Image("img_image2")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width,
                               height: UIScreen.main.bounds.height,
                               alignment: .topLeading)
                        .scaledToFit()
                        .clipped()
                        .background(RoundedCorners(topLeft: 30.0, topRight: 30.0, bottomLeft: 30.0,
                                                   bottomRight: 30.0))
                    VStack {
                        Image("img_etsyemblemrem")
                            .resizable()
                            .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(204.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kLblWelcomeBack)
                            .font(FontScheme.kInriaSerifRegular(size: getRelativeHeight(24.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(168.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(44.0))
                            .padding(.horizontal, getRelativeWidth(26.0))
                        Button(action: {
                            iPhone13ProMaxThreeViewModel.nextScreen = "IPhone13ProMaxOneView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblGetStarted)
                                    .font(FontScheme.kInriaSerifBold(size: getRelativeHeight(32.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(19.0))
                                    .padding(.vertical, getRelativeHeight(13.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(204.0),
                                           height: getRelativeHeight(59.0), alignment: .topLeading)
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                        .Yellow800A5,
                                                    ColorConstants
                                                        .Amber700A5]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing)))
                                    .padding(.top, getRelativeHeight(263.0))
                                    .padding(.leading, getRelativeWidth(10.0))
                            }
                        })
                        .frame(width: getRelativeWidth(204.0), height: getRelativeHeight(59.0),
                               alignment: .topLeading)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                            .Yellow800A5,
                                        ColorConstants
                                            .Amber700A5]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing)))
                        .padding(.top, getRelativeHeight(263.0))
                        .padding(.leading, getRelativeWidth(10.0))
                        Divider()
                            .frame(width: getRelativeWidth(104.0), height: getRelativeHeight(5.0),
                                   alignment: .leading)
                            .background(ColorConstants.Black90099)
                            .padding(.top, getRelativeHeight(71.0))
                            .padding(.horizontal, getRelativeWidth(60.0))
                    }
                    .frame(width: getRelativeWidth(303.0), height: getRelativeHeight(671.0),
                           alignment: .bottomTrailing)
                    .padding(.top, getRelativeHeight(245.0))
                    .padding(.leading, getRelativeWidth(102.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700F4)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: IPhone13ProMaxOneView(),
                                   tag: "IPhone13ProMaxOneView",
                                   selection: $iPhone13ProMaxThreeViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700F4)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            iPhone13ProMaxThreeViewModel.nextScreen = "IPhone13ProMaxOneView"
        }
    }
}

struct IPhone13ProMaxThreeView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone13ProMaxThreeView()
    }
}
