import SwiftUI

struct IPhone13ProMaxTwoView: View {
    @StateObject var iPhone13ProMaxTwoViewModel = IPhone13ProMaxTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    ZStack(alignment: .topTrailing) {
                        Image("img_image1")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(295.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                       bottomLeft: 20.0, bottomRight: 20.0))
                        Image("img_etsyemblemrem")
                            .resizable()
                            .frame(width: getRelativeWidth(79.0), height: getRelativeHeight(63.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.bottom, getRelativeHeight(216.76))
                            .padding(.leading, getRelativeWidth(335.0))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(295.0),
                           alignment: .leading)
                    Text(StringConstants.kMsgEnterTheCode)
                        .font(FontScheme.kInriaSerifRegular(size: getRelativeHeight(18.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Black90099)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(355.0), height: getRelativeHeight(35.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(31.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(362.0),
                       alignment: .leading)
                VStack {
                    HStack {
                        Text(StringConstants.kLbl)
                            .font(FontScheme.kInriaSerifRegular(size: getRelativeHeight(24.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(10.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl)
                            .font(FontScheme.kInriaSerifRegular(size: getRelativeHeight(24.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(10.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl)
                            .font(FontScheme.kInriaSerifRegular(size: getRelativeHeight(24.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(10.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl)
                            .font(FontScheme.kInriaSerifRegular(size: getRelativeHeight(24.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(10.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(360.0), height: getRelativeHeight(24.0),
                           alignment: .center)
                    .padding(.horizontal, getRelativeWidth(24.0))
                    Divider()
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(3.0),
                               alignment: .center)
                        .background(ColorConstants.Black9007f)
                        .padding(.top, getRelativeHeight(12.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                    Text(StringConstants.kMsgDonTGetTheC)
                        .font(FontScheme.kRobotoRomanRegular(size: getRelativeHeight(18.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Yellow900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(289.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(48.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                        .onTapGesture {
                            iPhone13ProMaxTwoViewModel.googleSignIn()
                        }
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblProceed)
                                .font(FontScheme.kInriaSerifBold(size: getRelativeHeight(32.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(10.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(378.0),
                                       height: getRelativeHeight(53.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                        bottomLeft: 10.0, bottomRight: 10.0)
                                        .stroke(ColorConstants.Yellow900,
                                                lineWidth: 2))
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(ColorConstants.Yellow900))
                                .padding(.top, getRelativeHeight(40.0))
                                .padding(.horizontal, getRelativeWidth(24.0))
                        }
                    })
                    .frame(width: getRelativeWidth(378.0), height: getRelativeHeight(53.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                            bottomRight: 10.0)
                            .stroke(ColorConstants.Yellow900,
                                    lineWidth: 2))
                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                               bottomRight: 10.0)
                            .fill(ColorConstants.Yellow900))
                    .padding(.top, getRelativeHeight(40.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                    Divider()
                        .frame(width: getRelativeWidth(104.0), height: getRelativeHeight(5.0),
                               alignment: .center)
                        .background(ColorConstants.Black90099)
                        .padding(.top, getRelativeHeight(306.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(510.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(43.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.Gray101)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.Gray101)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct IPhone13ProMaxTwoView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone13ProMaxTwoView()
    }
}
