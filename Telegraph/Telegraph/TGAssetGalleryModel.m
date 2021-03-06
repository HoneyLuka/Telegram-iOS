#import "TGAssetGalleryModel.h"

@implementation TGAssetGalleryModel

- (instancetype)initWithItems:(NSArray *)items focusItem:(id<TGModernGalleryItem>)focusItem
{
    self = [super init];
    if (self != nil)
    {
        [self _replaceItems:items focusingOnItem:focusItem];
    
        _interfaceView = [[TGWebSearchResultsGalleryInterfaceView alloc] init];
    }
    return self;
}

- (UIView<TGModernGalleryInterfaceView> *)createInterfaceView
{
    return _interfaceView;
}

@end
