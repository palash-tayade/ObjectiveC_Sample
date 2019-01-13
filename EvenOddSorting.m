#import <Foundation/Foundation.h>

@interface EvenOddSorting:NSObject
/* method declaration */
	-(void)getEvenNumbers:(int*)numbers arraySize:(int) size criteria:(NSString*)criteria;
@end

@implementation EvenOddSorting

/* method returning the numbers based on the criteria specified*/
-(void)getEvenNumbers:(int*)numbers arraySize:(int) size criteria:(NSString*)criteria {
	int counter;
	int index=0;
	//Check if the specified criteria is Even
	if(criteria == @"Even"){
		NSLog(@"Even numbers:");
		
		//Traverse through the input array and print all even numbers
		for(counter=0;counter<size;counter++){
			if((numbers[counter] % 2 == 0) ){
				NSLog(@"%i",numbers[counter]);	
			}	
		}
	}
	//Check if the specified criteria is Odd
	else if(criteria == @"Odd"){
		NSLog(@"Odd numbers:");
		
		//Traverse through the input array and print all odd numbers
		for(counter=0;counter<size;counter++){
			if((numbers[counter] % 2 != 0) ){
				NSLog(@"%i",numbers[counter]);	
			}	
		}
	}
}
@end

//Main method
int main () {
   
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	EvenOddSorting *objEvenOddSorting = [[EvenOddSorting alloc]init];
	
	int numbers[10]={1,2,3,4,5,6,7,8,9,10};
	
   //calling a method to get even numbers
   [objEvenOddSorting getEvenNumbers:numbers arraySize:10 criteria:@"Even"];
   
   //calling a method to get odd numbers
   [objEvenOddSorting getEvenNumbers:numbers arraySize:10 criteria:@"Odd"];
 
 
   [pool drain];
   
}