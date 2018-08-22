
#import "RNTaptic.h"
#import <React/RCTLog.h>
#import <React/RCTConvert.h>

@implementation RCTConvert (UIImpactFeedbackStyle)
  RCT_ENUM_CONVERTER(UIImpactFeedbackStyle, (@{ @"light" : @(UIImpactFeedbackStyleLight),
                                               @"medium" : @(UIImpactFeedbackStyleMedium),
                                               @"heavy" : @(UIImpactFeedbackStyleHeavy)}),
                      UIImpactFeedbackStyleLight, integerValue)
@end

@implementation RCTConvert (UINotificationFeedbackType)
  RCT_ENUM_CONVERTER(UINotificationFeedbackType, (@{ @"success" : @(UINotificationFeedbackTypeSuccess),
                                               @"warning" : @(UINotificationFeedbackTypeWarning),
                                               @"error" : @(UINotificationFeedbackTypeError)}),
                      UINotificationFeedbackTypeSuccess, integerValue)                      
@end

@implementation RNTaptic

- (NSDictionary *)constantsToExport
{
  return @{ @"light" : @(UIImpactFeedbackStyleLight),
            @"medium" : @(UIImpactFeedbackStyleMedium),
            @"heavy" : @(UIImpactFeedbackStyleHeavy),
            @"success" : @(UINotificationFeedbackTypeSuccess),
            @"warning" : @(UINotificationFeedbackTypeWarning),
            @"error" : @(UINotificationFeedbackTypeError) };
};

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(impact:(UIImpactFeedbackStyle)impactType)
{
  UIImpactFeedbackGenerator *impactGenerator = [[UIImpactFeedbackGenerator alloc] initWithStyle:(impactType)];
  [impactGenerator prepare];
  [impactGenerator impactOccurred];
  impactGenerator = nil;
}

RCT_EXPORT_METHOD(selection)
{
  UISelectionFeedbackGenerator *selectionGenerator = [[UISelectionFeedbackGenerator alloc] init];
  [selectionGenerator prepare];
  [selectionGenerator selectionChanged];
  selectionGenerator = nil;
}

RCT_EXPORT_METHOD(notification:(UINotificationFeedbackType)notificationType)
{
  UINotificationFeedbackGenerator *notificationGenerator = [[UINotificationFeedbackGenerator alloc] init];
  [notificationGenerator prepare];
  [notificationGenerator notificationOccurred:(notificationType)];
  notificationGenerator = nil;
}

@end
