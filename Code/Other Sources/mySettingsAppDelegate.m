/*******************************************************************************
 * Copyright (c) 2009 Kåre Morstøl (NotTooBad Software).
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Kåre Morstøl (NotTooBad Software) - initial API and implementation
 *******************************************************************************/ 

#import "mySettingsAppDelegate.h"
#import "SettingsViewController.h"

@implementation mySettingsAppDelegate

@synthesize window;
@synthesize navigationController;

SettingsViewController *settingsviewcontroller;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
//	[[NSUserDefaults standardUserDefaults] setValue:[NSNumber numberWithInt:15] forKey:@"d"];
	
	NSString *plist = [[NSBundle mainBundle] pathForResource:@"Root" ofType:@"plist"];
	SettingsViewController *settingsviewcontroller = [[SettingsViewController alloc] initWithConfigFile:plist];
	[navigationController pushViewController:settingsviewcontroller animated:YES];
	[settingsviewcontroller release];

	// Configure and show the window
	[window addSubview:[navigationController view]];
	[window makeKeyAndVisible];
}

- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
	[[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)dealloc {
	[navigationController release];
	[settingsviewcontroller release];
	[window release];
	[super dealloc];
}

@end
