#import <Foundation/Foundation.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import <netinet/in.h>

typedef enum 
{
	NotReachable = 0,
	ReachableViaWiFi,
	ReachableViaWWAN
} NetworkStatus;
#define kReachabilityChangedNotification @"kNetworkReachabilityChangedNotification"

@interface Reachability: NSObject
{
	BOOL localWiFiRef;
	SCNetworkReachabilityRef reachabilityRef;
}

+ (Reachability*) reachabilityWithHostName: (NSString*) hostName;
+ (Reachability*) reachabilityWithAddress: (const struct sockaddr_in*) hostAddress;
+ (Reachability*) reachabilityForInternetConnection;
+ (Reachability*) reachabilityForLocalWiFi;
- (BOOL) startNotifier;
- (void) stopNotifier;
- (NetworkStatus) currentReachabilityStatus;
- (BOOL) connectionRequired;
+(BOOL)Is_Network_Reachable_To_Me;

@end


