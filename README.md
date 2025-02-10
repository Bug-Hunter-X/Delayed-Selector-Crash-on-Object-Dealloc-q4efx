# Delayed Selector Crash in Objective-C

This repository demonstrates a common, yet subtle bug in Objective-C related to using `performSelector:withObject:afterDelay:` and object deallocation.  The bug arises when the target object is deallocated before the delayed selector is executed, leading to a crash.

The `DelayedSelectorCrash.m` file contains the buggy code. The `DelayedSelectorCrashSolution.m` file provides a corrected version.