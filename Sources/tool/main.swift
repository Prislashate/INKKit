import Foundation
import INKKit
import Numerics

print("########################################")
print("CommandLine arguments（\(CommandLine.arguments.count)）: \(CommandLine.arguments)")
print("########################################")

#if ENABLE_SOMETHING
print("Define ENABLE_SOMETHING in main.")
#else
print("No define ENABLE_SOMETHING in main.")
#endif

INKPerson.test()
