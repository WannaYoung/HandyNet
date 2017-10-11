# HandyNet
网络库Networking和json映射对象库HandyJSON的封装

安装


``` bash
cd HandyNet

carthage update --platform iOS
```

调用方法

``` swift
NetWork.share.getDataWith(path: "", parama: [:], successHandler: { (getData: GetData) in

        }, failureHandler: { (error: NSError) in

        })
```
