// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation

class ModelFileManager : NSObject {

  static var modelsDirectory : URL {
    get {
      return FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask).first!
    }
  }

  static func isFileReachableAtURL(fileURL : URL) -> Bool {
    do {
      let isReachable = try fileURL.checkResourceIsReachable()
      return isReachable
    } catch {
      /// File unreachable.
      return false
    }
  }

  static func removeFileIfExistsAtURL(sourceURL : URL) {

  }

  static func moveFile(fromURL sourceURL: URL, toURL destinationURL: URL) {

  }
}