## boss device plugin

kubernetes device plugin 的开发示例。

## 编译

```shell
make build
```

## 部署

```shell
make deploy
```

## 测试

在节点上 `/dev/boss` 文件夹下创建文件代表我们的 `blueoceansmart.com/bxipc_chiplet` 资源。比如:

```shell
$ touch bxipc_chiplet0
$ touch bxipc_chiplet1
```

为节点添加 label

```shell
$ kubectl label nodes test boss-device=enable
```

```shell
kubectl apply -f e2e/pod-with-boss.yaml
```

然后查看 pod 的调度情况或者查看 pod 日志来检查# boss-device-plugin
# boss-device-plugin
