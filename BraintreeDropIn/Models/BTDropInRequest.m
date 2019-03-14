#import "BTDropInRequest.h"
#if __has_include("BraintreeCore.h")
#import "BTPostalAddress.h"
#else
#import <BraintreeCore/BTPostalAddress.h>
#endif

@implementation BTDropInRequest

- (instancetype)init {
    self = [super init];
    if (self) {
        _defaultValueForVaulting = YES;
    }

    return self;
}

- (id)copyWithZone:(__unused NSZone *)zone {
    BTDropInRequest *request = [BTDropInRequest new];
    request.amount = self.amount;
    request.payPalRequest = self.payPalRequest;
    request.applePayDisabled = self.applePayDisabled;
    request.paypalDisabled = self.paypalDisabled;
    request.venmoDisabled = self.venmoDisabled;
    request.cardDisabled = self.cardDisabled;
    request.threeDSecureVerification = self.threeDSecureVerification;
    request.cardholderNameSetting = self.cardholderNameSetting;
    request.shouldMaskSecurityCode = self.shouldMaskSecurityCode;
    request.vaultManager = self.vaultManager;
    request.showSaveCardToggle = self.showSaveCardToggle;
    request.defaultValueForVaulting = self.defaultValueForVaulting;
    return request;
}

@end
