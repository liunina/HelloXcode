//___FILEHEADER___
//  Summary: ___VARIABLE_Summary___

___IMPORTHEADER_cocoaTouchSubclass___

NS_ASSUME_NONNULL_BEGIN

/// 数据协议
@protocol ___VARIABLE_productName___ViewModelDatasource <NSObject>
@end

/// 代理
@protocol ___VARIABLE_productName___ViewModelDelegate <NSObject> 
@end

/// UI 交互的协议,获取所在控制器,进行页面调整或者push
@protocol ___VARIABLE_productName___ViewModelInteractionProvider <NSObject>

@optional

/// 导航或者交互使用的控制器
- (nullable UIViewController *)interactionViewController;

@end

// @class <#type#>;
@interface ___VARIABLE_productName:identifier___ViewModel : NSObject<___VARIABLE_productName___ViewModelDatasource>
/// UI交互架构提供者
@property (nullable, nonatomic, strong) id<___VARIABLE_productName___ViewModelInteractionProvider> interactionProvider;
/// 事件代理回传
@property (nullable, nonatomic, weak) IBOutlet id<___VARIABLE_productName___ViewModelDelegate> delegate;
@property (nonatomic, strong, readonly) NSObject *model;

/// 通过模型视图模型构建
/// - Parameter model: <#model description#>
- (instancetype)initWithModel:(NSObject *)model;

@end

NS_ASSUME_NONNULL_END
