#import "XmlParser.h"

@implementation XmlParser

@synthesize Delegate;
@synthesize CallBack;
@synthesize Error_CallBack;
@synthesize objParser;
@synthesize ParsingMessage;
@synthesize ParsingCheck;

static XmlParser *XmlParserSharedInstance = nil;

- (id) init 
{
	if (self = [super init])
	{    
		Delegate    = nil;
		CallBack = nil;
        Error_CallBack = nil;
        objParser = nil;
    
	}
	return self;
}
+ (XmlParser *) XmlParserSharedInstance
{
	@synchronized ([XmlParser class])
	{
		if (!XmlParserSharedInstance) 
		{
			XmlParserSharedInstance = [[XmlParser alloc] init];
		}
		return XmlParserSharedInstance;
	}
	return nil;
}
- (void) startParsingData:(NSData *)content delegate:(id)requestDelegate 
          requestSelector:(SEL)requestSelector
        WithErrorSelector:(SEL)requestErrorSelector
{
   // NSLog(@"Recieved XML %@",[[NSString alloc] initWithData:content encoding:NSUTF8StringEncoding]);

	Delegate        = requestDelegate;
	CallBack        = requestSelector;
    Error_CallBack  = requestErrorSelector;
    ParsingCheck = nil;
    ParsingMessage = nil;
	objParser	= [[NSXMLParser alloc] initWithData:content];
	objParser.delegate = self;
	[objParser parse];
}
- (void)parserDidStartDocument:(NSXMLParser *)parser
{
    [self Refresh_Me];
    
    
}
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName 
  namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName 
    attributes:(NSDictionary *)attributeDict
{
    
    self.ParsingCheck=elementName;
    if([elementName isEqualToString:@"Pack"])
    {
        id_count++;
        pack_dic=[[NSMutableDictionary alloc] init];
        [pack_dic setObject:[[NSString alloc] initWithFormat:@"%i",id_count] forKey:@"iD"];
        [pack_dic setObject:[[NSString alloc] initWithFormat:@"%i",0] forKey:@"isLocked"];
        [pack_dic setObject:[attributeDict objectForKey:@"Pack_Name"] forKey:@"name"];
        mode_list=[[NSMutableArray alloc] init];
    }
    else if([elementName isEqualToString:@"Mode"])
    {
        mode_dic=[[NSMutableDictionary alloc] init];
        [mode_dic setObject:[attributeDict objectForKey:@"Mode_Name"] forKey:@"name"];
        [mode_dic setObject:[attributeDict objectForKey:@"Mode_Tiles"] forKey:@"tiles"];
        [mode_dic setObject:[attributeDict objectForKey:@"Mode_Difficulty"] forKey:@"difficulty"];
        level_list=[[NSMutableArray alloc] init];
    }
    else if([elementName isEqualToString:@"Level"])
    {
        level_dic=[[NSMutableDictionary alloc] init];
        word_list=[[NSMutableArray alloc] init];
        reveal_letter_list=[[NSMutableArray alloc] init];
    }
    else if([elementName isEqualToString:@"Word"])
    {
        word_dic=[[NSMutableDictionary alloc] init];
    }
    else if([elementName isEqualToString:@"Letter"])
    {
        [reveal_letter_list addObject:[[NSString alloc] initWithFormat:@"%@",[attributeDict objectForKey:@"Letter_Index"]]];
    }
    
    
}
- (void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    
}
- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if([elementName isEqualToString:@"Pack"])
    {
        [pack_dic setObject:mode_list forKey:@"modes_list"];
        [[DataManager DataManagerSharedInstance] SavePackData:pack_dic];
        
    }
    else if([elementName isEqualToString:@"Mode"])
    {
        [mode_dic setObject:level_list forKey:@"levels_list"];
        [mode_list addObject:mode_dic];
    }
    else if([elementName isEqualToString:@"Level"])
    {
        [level_dic setObject:word_list forKey:@"words_list"];
        [level_dic setObject:reveal_letter_list forKey:@"reveal_letters_list"];
        [level_list addObject:level_dic];
    }
    else if([elementName isEqualToString:@"Word"])
    {
        [word_list addObject:word_dic];
    }
}
- (void)parser:(NSXMLParser *)parser foundCDATA:(NSData *)CDATABlock
{
    NSString *string = [[NSString alloc] initWithData:CDATABlock encoding:NSUTF8StringEncoding];
    if([self.ParsingCheck isEqualToString:@"Name"])
    {
        NSData *plainData = [string dataUsingEncoding:NSUTF8StringEncoding];
        NSString *base64String = [plainData base64EncodedString];
        [word_dic setObject:[[NSString alloc] initWithFormat:@"%@",base64String] forKey:@"name"];
    }
   
}
- (void)parserDidEndDocument:(NSXMLParser *)parser
{
   // [[DataManager DataManagerSharedInstance] SetLevelCounter];
	if(Delegate && self.CallBack) 
        if([self.Delegate respondsToSelector:self.CallBack])
        {
            #pragma clang diagnostic push
            #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
			[self.Delegate performSelector:self.CallBack withObject:nil];
            #pragma clang diagnostic pop
        }
        else
            NSLog(@"No responce");
}
- (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError
{
   // NSLog(@"parser check:%@",self.ParsingCheck);
   // NSLog(@"word dic:%@",word_dic);
    NSLog(@"NSXMLParser ERROR: %@ - %@",[parseError localizedDescription], [parseError localizedRecoverySuggestion]);
    	if(Delegate && self.Error_CallBack) 
            if([self.Delegate respondsToSelector:self.Error_CallBack]) 
            {
                #pragma clang diagnostic push
                #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    			[self.Delegate performSelector:self.Error_CallBack withObject:parseError];
                #pragma clang diagnostic pop
                self.Delegate = nil;
                self.CallBack = nil;
                self.Error_CallBack = nil;
            }
            else
                NSLog(@"No responce");
}
-(void)Reset
{
    Delegate = nil;
    CallBack = nil;
    Error_CallBack = nil;
    objParser = nil;
    ParsingMessage = nil;
    ParsingCheck = nil;
}
-(void)Refresh_Me
{
    id_count=0;
    ParsingCheck = nil;
    ParsingMessage = nil;
}

@end
