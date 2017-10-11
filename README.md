# HandyNet

#### 网络库Networking和json映射对象库HandyJSON的封装

[Networking](https://github.com/3lvis/Networking)

[HandyJSON](https://github.com/alibaba/HandyJSON)

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
