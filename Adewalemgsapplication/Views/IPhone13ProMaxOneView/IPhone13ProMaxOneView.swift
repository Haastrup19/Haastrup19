import SwiftUI

struct IPhone13ProMaxOneView: View {
    @StateObject var iPhone13ProMaxOneViewModel = IPhone13ProMaxOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        ZStack(alignment: .center) {
                            Image("img_image3")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(295.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                           bottomLeft: 20.0, bottomRight: 20.0))
                            Image("img_etsyemblemrem")
                                .resizable()
                                .frame(width: getRelativeWidth(88.0),
                                       height: getRelativeHeight(64.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.bottom, getRelativeHeight(201.23))
                                .padding(.horizontal, getRelativeWidth(170.0))
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(295.0),
                               alignment: .leading)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(295.0),
                           alignment: .leading)
                    VStack {
                        HStack {
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblSignup)
                                        .font(FontScheme
                                            .kInriaSerifRegular(size: getRelativeHeight(28.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(14.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(170.0),
                                               height: getRelativeHeight(56.0),
                                               alignment: .topLeading)
                                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                                   bottomLeft: 10.0,
                                                                   bottomRight: 10.0)
                                                .fill(ColorConstants.Yellow900))
                                }
                            })
                            .frame(width: getRelativeWidth(170.0), height: getRelativeHeight(56.0),
                                   alignment: .topLeading)
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0)
                                    .fill(ColorConstants.Yellow900))
                            Spacer()
                            Button(action: {
                                iPhone13ProMaxOneViewModel.googleSignIn()
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblLogin)
                                        .font(FontScheme
                                            .kInriaSerifRegular(size: getRelativeHeight(28.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(14.0))
                                        .foregroundColor(ColorConstants.Black90082)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(170.0),
                                               height: getRelativeHeight(56.0),
                                               alignment: .topLeading)
                                        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                                bottomLeft: 10.0, bottomRight: 10.0)
                                                .stroke(ColorConstants.Yellow900E0,
                                                        lineWidth: 3))
                                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                                   bottomLeft: 10.0,
                                                                   bottomRight: 10.0)
                                                .fill(ColorConstants.WhiteA700))
                                }
                            })
                            .frame(width: getRelativeWidth(170.0), height: getRelativeHeight(56.0),
                                   alignment: .topLeading)
                            .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                    bottomRight: 10.0)
                                    .stroke(ColorConstants.Yellow900E0,
                                            lineWidth: 3))
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0)
                                    .fill(ColorConstants.WhiteA700))
                        }
                        .frame(width: getRelativeWidth(388.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0))
                        .padding(.horizontal, getRelativeWidth(20.0))
                        HStack {
                            Image("img_name")
                                .resizable()
                                .frame(width: getRelativeWidth(28.0),
                                       height: getRelativeHeight(22.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.bottom, getRelativeHeight(16.0))
                                .padding(.leading, getRelativeWidth(19.0))
                            Text(StringConstants.kLblName)
                                .font(FontScheme.kInriaSerifRegular(size: getRelativeHeight(20.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black900Cc)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(61.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(19.0))
                                .padding(.bottom, getRelativeHeight(16.0))
                        }
                        .frame(width: getRelativeWidth(388.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                bottomRight: 10.0)
                                .stroke(ColorConstants.Yellow900,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(20.0))
                        .padding(.horizontal, getRelativeWidth(20.0))
                        HStack {
                            Image("img_mail")
                                .resizable()
                                .frame(width: getRelativeWidth(28.0),
                                       height: getRelativeHeight(21.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.bottom, getRelativeHeight(15.0))
                                .padding(.leading, getRelativeWidth(19.0))
                            Text(StringConstants.kLblEmail)
                                .font(FontScheme.kInriaSerifRegular(size: getRelativeHeight(20.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black900Cc)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(60.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(18.0))
                                .padding(.bottom, getRelativeHeight(15.0))
                        }
                        .frame(width: getRelativeWidth(388.0), height: getRelativeHeight(54.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                bottomRight: 10.0)
                                .stroke(ColorConstants.Yellow900,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(23.0))
                        .padding(.horizontal, getRelativeWidth(20.0))
                        HStack {
                            Image("img_addressbook")
                                .resizable()
                                .frame(width: getRelativeWidth(28.0),
                                       height: getRelativeHeight(22.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0))
                                .padding(.top, getRelativeHeight(18.0))
                                .padding(.bottom, getRelativeHeight(15.0))
                                .padding(.leading, getRelativeWidth(19.0))
                            Text(StringConstants.kLblPhoneNo)
                                .font(FontScheme.kInriaSerifRegular(size: getRelativeHeight(20.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black900Cc)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(94.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(19.0))
                                .padding(.bottom, getRelativeHeight(16.0))
                        }
                        .frame(width: getRelativeWidth(388.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                bottomRight: 10.0)
                                .stroke(ColorConstants.Yellow900,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(19.0))
                        .padding(.horizontal, getRelativeWidth(20.0))
                        HStack {
                            HStack {
                                Image("img_lock")
                                    .resizable()
                                    .frame(width: getRelativeWidth(28.0),
                                           height: getRelativeHeight(21.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0))
                                Text(StringConstants.kLblPassword)
                                    .font(FontScheme
                                        .kInriaSerifRegular(size: getRelativeHeight(20.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900Cc)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(95.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(124.0), height: getRelativeHeight(21.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(17.0))
                            .padding(.bottom, getRelativeHeight(15.0))
                            .padding(.leading, getRelativeWidth(23.0))
                            Spacer()
                            Text(StringConstants.kLblGetPassword)
                                .font(FontScheme.kInriaSerifBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.DeepPurple800)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(120.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(18.0))
                                .padding(.trailing, getRelativeWidth(50.0))
                                .onTapGesture {
                                    iPhone13ProMaxOneViewModel.nextScreen = "IPhone13ProMaxTwoView"
                                }
                        }
                        .frame(width: getRelativeWidth(388.0), height: getRelativeHeight(55.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                bottomRight: 10.0)
                                .stroke(ColorConstants.Yellow900,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(23.0))
                        .padding(.horizontal, getRelativeWidth(20.0))
                        Button(action: {
                            iPhone13ProMaxOneViewModel.nextScreen = "IPhone13ProMaxTwoView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblProceed)
                                    .font(FontScheme.kInriaSerifBold(size: getRelativeHeight(32.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(11.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(388.0),
                                           height: getRelativeHeight(55.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(ColorConstants.Yellow900))
                                    .padding(.top, getRelativeHeight(21.0))
                                    .padding(.horizontal, getRelativeWidth(20.0))
                            }
                        })
                        .frame(width: getRelativeWidth(388.0), height: getRelativeHeight(55.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.Yellow900))
                        .padding(.top, getRelativeHeight(21.0))
                        .padding(.horizontal, getRelativeWidth(20.0))
                        Text(StringConstants.kMsgWeAreDelighte)
                            .font(FontScheme.kInriaSerifRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900Cc)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(317.0), height: getRelativeHeight(34.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(30.0))
                            .padding(.horizontal, getRelativeWidth(20.0))
                        Divider()
                            .frame(width: getRelativeWidth(104.0), height: getRelativeHeight(5.0),
                                   alignment: .center)
                            .background(ColorConstants.Black90099)
                            .padding(.top, getRelativeHeight(88.0))
                            .padding(.horizontal, getRelativeWidth(20.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(596.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(26.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray100)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: IPhone13ProMaxTwoView(),
                                   tag: "IPhone13ProMaxTwoView",
                                   selection: $iPhone13ProMaxOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Gray100)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct IPhone13ProMaxOneView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone13ProMaxOneView()
    }
}
