//___FILEHEADER___
//  Summary: ___VARIABLE_Summary___

___IMPORTHEADER_cocoaTouchSubclass___

NS_ASSUME_NONNULL_BEGIN

/// 列表数据源
@class ___VARIABLE_productName___CellModel;
@protocol ___VARIABLE_productName:identifier___ViewModelDatasource <NSObject>
 
- (NSInteger)numberOfSections;
 
- (NSInteger)numberOfRowsInSection:(NSInteger)section;

- (___VARIABLE_productName___CellModel *)itemForRowAtIndexPath:(NSIndexPath *)indexPath;

- (CGFloat)heightForRowAtIndexPath:(NSIndexPath *)indexPath;

- (void)onSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@end

/// UI 交互的协议,获取所在控制器,进行页面调整或者push
@protocol ___VARIABLE_productName___ViewModelInteractionProvider <NSObject>

@optional

/// 导航或者交互使用的控制器
- (nullable UIViewController *)interactionViewController;

@end

//@class <#type#>;
@interface ___VARIABLE_productName:identifier___ViewModel : NSObject<___VARIABLE_productName:identifier___ViewModelDatasource>
@property (nonatomic, strong, readonly) NSObject *model;
/// UI交互架构提供者
@property (nullable, nonatomic, weak) id<___VARIABLE_productName___ViewModelInteractionProvider> interactionProvider;

/// 通过模型构建视图模型
/// - Parameter model: <#model description#>
- (instancetype)initWithModel:(NSObject *)model;
@end

NS_ASSUME_NONNULL_END
