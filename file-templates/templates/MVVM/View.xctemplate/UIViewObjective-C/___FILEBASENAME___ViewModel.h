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

// @class <#type#>;
@interface ___VARIABLE_productName:identifier___ViewModel : NSObject
@property (nullable, nonatomic, weak) IBOutlet id<___VARIABLE_productName___ViewModelDelegate> delegate;

/// 通过模型视图模型构建
/// - Parameter model: <#model description#>
- (instancetype)initWithModel:(NSObject *)model;
@end

NS_ASSUME_NONNULL_END
