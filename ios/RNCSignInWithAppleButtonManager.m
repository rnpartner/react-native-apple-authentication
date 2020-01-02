#import <React/RCTViewManager.h>
#import <React/RCTUtils.h>
#import "RNCSignInWithAppleButton.h"
@import AuthenticationServices;

@interface RNCSignInWithAppleButtonManager : RCTViewManager
@end

@implementation RNCSignInWithAppleButtonManager

RCT_EXPORT_MODULE(RNCSignInWithAppleButtonManager)


- (UIView *)view
{
  return [[RNCSignInWithAppleButton alloc] initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonStyleWhite authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhiteOutline];
}

RCT_EXPORT_VIEW_PROPERTY(onPress, RCTBubblingEventBlock)

RCT_EXPORT_VIEW_PROPERTY(cornerRadius,CGFloat)

@end
