#import "InAppPurchaseManager.h"

@implementation InAppPurchaseManager

@synthesize ProductIdentifiers  = _ProductIdentifiers;
@synthesize Products            = _Products;
@synthesize Product             = _Product;
@synthesize Request             = _Request;
@synthesize ProductNumber       = _ProductNumber;
@synthesize Delegate            = _Delegate;
@synthesize Selector            = _Selector;
@synthesize ErrorSelector       = _ErrorSelector;

static InAppPurchaseManager *InAppPurchaseManagerSharedInstance;

+ (id ) alloc
{
	@synchronized([InAppPurchaseManager class])
	{
		NSAssert(InAppPurchaseManagerSharedInstance == nil, @"Attempted to allocate a second instance of a singleton.");
		InAppPurchaseManagerSharedInstance = [super alloc];
		return InAppPurchaseManagerSharedInstance;
	}
	return nil;
}

+ (InAppPurchaseManager *) InAppPurchaseManagerSharedInstance
{
	@synchronized ([InAppPurchaseManager class])
	{
		if (!InAppPurchaseManagerSharedInstance)
		{
			InAppPurchaseManagerSharedInstance = [[InAppPurchaseManager alloc] init];
		}
		return InAppPurchaseManagerSharedInstance;
	}
	return nil;
}

- (id)init
{
    
    if ((self = [super init])) 
    {
        self.Products       = nil;
        self.Product        = nil;
        self.Request        = nil;
        self.ProductNumber  = nil;
        self.Delegate       = nil;
        self.Selector       = nil;
        self.ErrorSelector  = nil;
        PurchasedProductsList = [[NSMutableArray alloc] init];
//       // self.ProductIdentifiers = [NSSet setWithObjects:
//                                @"com.horizon.WordinpiecesEnglish.300coins",
//                                   @"com.horizon.WordinpiecesEnglish.650coins"
//                                   , @"com.horizon.WordinpiecesEnglish.2500coins"
//                                   ,
//                                @"com.horizon.WordinpiecesEnglish.7500coins",
//                                   @"com.horizon.WordinpiecesEnglish.20000coins",
//                                   @"com.horizon.WordinpiecesEnglish.80000coins",
//                                   @"com.horizon.WordinpiecesEnglish.removeadspieces"
//                                   ,nil];
        
        self.ProductIdentifiers = [NSSet setWithObjects:
                                   @"com.horizon.wordMaker.5",
                                   @"com.horizon.wordMaker.18",
                                   @"com.horizon.wordMaker.40",
                                   @"com.horizon.wordMaker.200",
                                   @"com.horizon.wordMaker.800",
                                   @"com.horizon.wordMaker.4000",
                                   @"com.horizon.wordMaker.noAds",
                                   @"com.horizon.wordMaker.masterMind",
                                   @"com.horizon.wordMaker.guru",
                                   @"com.horizon.wordMaker.kids",
                                   @"com.horizon.wordMaker.expert",
                                   @"com.horizon.wordMaker.greenPack",
                                   @"com.horizon.wordMaker.bluePack",

                                   nil];

        //@"com.horizon.wordMaker.90",
       
        
        
        [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
    }
    return self;
}
-(void)PurchaseProductWithNumber:(int )Number
        Delegate:(id)del 
        WithSelector:(SEL)callBack
        WithErrorSelector:(SEL)errorCallBack
{    
    self.Selector           = callBack;
    self.Delegate           = del;
    self.ErrorSelector      = errorCallBack;
    self.ProductNumber      = nil;
    self.Product            = nil;
    
    /*
     
     
     
     @"com.horizon.WordinpiecesEnglish.300coins"
     @"com.horizon.WordinpiecesEnglish.650coins"
     @"com.horizon.WordinpiecesEnglish.2500coins"
     @"com.horizon.WordinpiecesEnglish.7500coins"
     @"com.horizon.WordinpiecesEnglish.20000coins"
     @"com.horizon.WordinpiecesEnglish.80000coins"
     @"com.horizon.WordinpiecesEnglish.removeadspieces"
     
     
     */
    
    

    
    if (Number == 1)
    {
        self.ProductNumber = @"com.horizon.wordMaker.5";
    }
    else if(Number == 2)
    {
        self.ProductNumber = @"com.horizon.wordMaker.18";
    }
    else if(Number == 3)
    {
        self.ProductNumber = @"com.horizon.wordMaker.40";
    }
    else if(Number == 4)
    {
        self.ProductNumber = @"com.horizon.wordMaker.200";
    }
    else if(Number == 5)
    {
        self.ProductNumber = @"com.horizon.wordMaker.800";
    }
    else if(Number == 13)
    {
        self.ProductNumber = @"com.horizon.wordMaker.4000";
    }
    else if(Number == 6)
    {
        self.ProductNumber = @"com.horizon.wordMaker.noAds";
    }
    else if(Number == 7)
    {
        self.ProductNumber = @"com.horizon.wordMaker.kids";
    }
    else if(Number == 8)
    {
        self.ProductNumber = @"com.horizon.wordMaker.expert";
    }
    else if(Number == 9)
    {
        self.ProductNumber = @"com.horizon.wordMaker.guru";//SUPER STAR
    }
    else if(Number == 10)
    {
        self.ProductNumber = @"com.horizon.wordMaker.masterMind";
    }
    else if(Number == 11)
    {
        self.ProductNumber = @"com.horizon.wordMaker.greenPack";//KINGPIN
    }
    else if(Number == 12)
    {
        self.ProductNumber = @"com.horizon.wordMaker.bluePack";//LEGENDARY
    }
    else
    {
        self.ProductNumber = nil;
    }
    if (self.ProductNumber != nil)
    {
        if ([self Is_Need_To_Purchase_Product] == YES)
        {
            if ([self Is_Network_Reachable] == YES)
            {
                if (self.Products == nil || [self.Products count] <= 0)
                {
                   
                     NSLog(@"product identifiers:%@",self.ProductIdentifiers);
                    
                    self.Request = [[SKProductsRequest alloc] initWithProductIdentifiers:self.ProductIdentifiers];
                    self.Request.delegate = self;
                    [self.Request start];
                }
                else
                {
                    [self Start_Purchasing];
                }
            }
            else
            {
                [self Return_Back_Error];
            }
        }
        else
        {
            [self Return_Back_Successfully];
        }
    }
    else
    {
        [self Return_Back_Error];
    }
}
-(BOOL)Is_Need_To_Purchase_Product
{
    BOOL Is_Consumeable = YES; // Check Here Selected Product Is Consumeable Or Not
    
    if (Is_Consumeable == YES) // Consumeable
    {
        return YES;
    }
    else // Non Consumeable
    {
        if ([self Is_Product_Already_Purchased] == NO)
        {
            return YES;
        }
        else
        {
            return NO;
        }
    }
}
-(BOOL)Is_Product_Already_Purchased
{
    // Check Is Product Already Purchased
    return NO;
    
   // [self Unlock_Functionality_For:@"NILL"];
    return YES;
}
- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response
{
    self.Request.delegate = nil;
    self.Request = nil;

    if ([response.products count] <= 0)
    {
     //   [[DataManager DataManagerSharedInstance] Show_Error_AlertWithTitle:@"Error !!!" WithMsg:@"Unable To Connect To Itunes"];
        [self Return_Back_Error];
    }
    else
    {
        self.Products = [[NSMutableArray alloc] initWithArray:response.products];
        [self Start_Purchasing];
    }
}
- (void) request:(SKRequest *) request didFailWithError:(NSError *) error
{    
   // [[DataManager DataManagerSharedInstance] Show_Error_AlertWithTitle:@"Error !!!" WithMsg:@"Unable To Connect To Itunes"];
    [self Return_Back_Error];
}
- (void)Start_Purchasing
{
    int Count = [self.Products count];
    if (self.ProductNumber!= nil)
    {
        for (int i = 0; i < Count; i++)
        {
            SKProduct *P = [self.Products objectAtIndex:i];
             if ([P.productIdentifier isEqualToString:self.ProductNumber])
            {
                self.Product = [self.Products objectAtIndex:i];
                SKPayment *Payment = [SKPayment paymentWithProduct:self.Product];
                [[SKPaymentQueue defaultQueue] addPayment:Payment];
                return;
            }
        }
    }
    else
    {
        //[[DataManager DataManagerSharedInstance] Show_Error_AlertWithTitle:@"Error !!!" WithMsg:@"Selected Product Is Not Available In Store, Try Later"];
    }
    [self Return_Back_Error];
}
- (void)Restore_ProductsWithDelegate:(id)del
                        WithSelector:(SEL)callBack
                       WithErrorSelector:(SEL)errorCallBack
{
    self.Selector           = callBack;
    self.Delegate           = del;
    self.ErrorSelector      = errorCallBack;

    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
    [[SKPaymentQueue defaultQueue]restoreCompletedTransactions];
}
- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transactions
{
    for (SKPaymentTransaction *transaction in transactions)
    {
        switch (transaction.transactionState)
        {
            case SKPaymentTransactionStatePurchased:
                {
                    [self Transaction_Completed:transaction];
                    break;
                }
            case SKPaymentTransactionStateRestored:
                {
                    [self Transaction_Restored:transaction];
                    break;
                }
            case SKPaymentTransactionStateFailed:
                {
                    [self Transaction_Failed:transaction];
                    break;
                }
            case SKPaymentTransactionStatePurchasing:
                {
                    break;
                }
            default:
                {
                    break;
                }
        }
    }
}
- (void)Transaction_Completed:(SKPaymentTransaction *)Transaction
{
    NSString *ProductIdentifier = Transaction.payment.productIdentifier;
    [self Unlock_Functionality_For:ProductIdentifier];
    [[SKPaymentQueue defaultQueue] finishTransaction: Transaction];
    [self Return_Back_Successfully];
}
- (void)Transaction_Restored:(SKPaymentTransaction *)Transaction
{	
    NSString *ProductIdentifier = Transaction.originalTransaction.payment.productIdentifier;
    [self Unlock_Functionality_For:ProductIdentifier];
    [[SKPaymentQueue defaultQueue] finishTransaction: Transaction];
    [self Return_Back_Successfully];
}
- (void)Transaction_Failed:(SKPaymentTransaction *)Transaction
{
   // if (Transaction.error.code != SKErrorPaymentCancelled)
    NSLog(@"Transaction error: %@", Transaction.error.localizedDescription);
    [[SKPaymentQueue defaultQueue] finishTransaction: Transaction];
    [self Return_Back_Error];
}
-(void)Unlock_Functionality_For:(NSString *)ProductIdentifier
{
    if([ProductIdentifier isEqualToString:@"com.horizon.wordMaker.masterMind"])
    {
        [[DataManager DataManagerSharedInstance]Set_MasterMind_Free];
    }
    else if([ProductIdentifier isEqualToString:@"com.horizon.wordMaker.guru"])
    {
        [[DataManager DataManagerSharedInstance]Set_SuperStar_Free];
    }
    else if([ProductIdentifier isEqualToString:@"com.horizon.wordMaker.kids"])
    {
        [[DataManager DataManagerSharedInstance]Set_Kids_Free];
    }
    else if([ProductIdentifier isEqualToString:@"com.horizon.wordMaker.expert"])
    {
        [[DataManager DataManagerSharedInstance]Set_Expert_Free];
    }
    else if([ProductIdentifier isEqualToString:@"com.horizon.wordMaker.greenPack"])
    {
        [[DataManager DataManagerSharedInstance]Set_Kingpin_Free];
    }
    else if([ProductIdentifier isEqualToString:@"com.horizon.wordMaker.bluePack"])
    {
        [[DataManager DataManagerSharedInstance]Set_Legendary_Free];
    }
 /*   else if([ProductIdentifier isEqualToString:@"com.horizon.wordMaker.pinkPack"])
    {
        [[DataManager DataManagerSharedInstance]Set_PinkPack_Free];
    }*/
    else if([ProductIdentifier isEqualToString:@"com.horizon.wordMaker.noAds"])
    {
        [[DataManager DataManagerSharedInstance]Set_AdFree];
    }
}
-(BOOL)Is_Network_Reachable
{
    Reachability * reach1 = [Reachability reachabilityForInternetConnection];
    Reachability * reach2 = [Reachability reachabilityForLocalWiFi];
    NetworkStatus netstatus1 = [reach1 currentReachabilityStatus];
    NetworkStatus netstatus2 = [reach2 currentReachabilityStatus];
    if((netstatus1 == NotReachable) && (netstatus2 == NotReachable))
    {
        return NO;
    }
    return YES;
}
- (void)Return_Back_Successfully
{
	if(self.Delegate && self.Selector)
        if([self.Delegate respondsToSelector:self.Selector])
        {
            #pragma clang diagnostic push
            #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
			[self.Delegate performSelector:self.Selector withObject:nil];
            #pragma clang diagnostic pop
        }
        else
        {
            //NSLog(@"No responce");
        }
}
- (void)Return_Back_Error
{
    if(self.Delegate && self.ErrorSelector)
        if([self.Delegate respondsToSelector:self.ErrorSelector])
        {
            #pragma clang diagnostic push
            #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            [self.Delegate performSelector:self.ErrorSelector withObject:nil];
            #pragma clang diagnostic pop
        }
        else
        {
            //NSLog(@"No responce");
        }
}
-(void)dealloc
{
    self.Delegate = nil;
    self.Selector   = nil;
    self.ErrorSelector = nil;
}

@end