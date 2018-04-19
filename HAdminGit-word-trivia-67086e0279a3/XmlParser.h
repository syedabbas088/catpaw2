#import <Foundation/Foundation.h>
#import "NSData+Base64.h"
#import "DataManager.h"

@interface XmlParser : NSObject <NSXMLParserDelegate>
{
    id          Delegate;
    SEL         CallBack;
    SEL         Error_CallBack;
	NSXMLParser	*objParser;
    
    NSMutableDictionary * pack_dic;
    NSMutableDictionary * mode_dic;
    NSMutableDictionary * level_dic;
    NSMutableDictionary * word_dic;
    
    
    NSMutableArray * mode_list;
    NSMutableArray * level_list;
    NSMutableArray * word_list;
    NSMutableArray * reveal_letter_list;
    int id_count;
   
    
    
}




@property(nonatomic) SEL                    CallBack;
@property(nonatomic) SEL                    Error_CallBack;
@property(nonatomic, strong) id             Delegate;
@property(nonatomic,strong)  NSXMLParser    *objParser;
@property(nonatomic,strong)  NSString       *ParsingMessage;
@property(nonatomic,strong)  NSString       *ParsingCheck;

- (id)init;
+ (XmlParser *)XmlParserSharedInstance;

- (void) startParsingData:(NSData *)content 
         delegate:(id)requestDelegate 
         requestSelector:(SEL)requestSelector
         WithErrorSelector:(SEL)requestErrorSelector;

-(void)Refresh_Me;
-(void)Reset;

@end
