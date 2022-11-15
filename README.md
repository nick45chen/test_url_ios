# 測試 URLSession


``` sh
decode error: keyNotFound(CodingKeys(stringValue: "data", intValue: nil), Swift.DecodingError.Context(codingPath: [], debugDescription: "No value associated with key CodingKeys(stringValue: \"data\", intValue: nil) (\"data\").", underlyingError: nil))
```

## Issue
### Description
<!-- 簡述遇到的問題 -->
透過 URLSession 連線後，使用 `JSONDecoder` decode 發現找不到 data 🤔

``` sh
decode error: keyNotFound(CodingKeys(stringValue: "data", intValue: nil), Swift.DecodingError.Context(codingPath: [], debugDescription: "No value associated with key CodingKeys(stringValue: \"data\", intValue: nil) (\"data\").", underlyingError: nil))
```

#### Reproduction Steps
<!-- 簡述問題重現的方式步驟 -->
執行該程式，點擊畫面上 Hello World! 按鈕

#### Expected behavior
<!-- 簡述預期行為為何-->
 `JSONDecoder` decode 能正常解析