.class public Lcom/huawei/hms/support/api/opendevice/HuaweiOpendeviceApiImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/support/api/opendevice/HuaweiOpendeviceApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOdid(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            ")",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/opendevice/OdidResult;",
            ">;"
        }
    .end annotation

    const-string v0, "OpenIdentifierApiImpl"

    const-string v1, "Enter getOdid"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/huawei/hms/opendevice/u;

    new-instance v1, Lcom/huawei/hms/support/api/entity/opendevice/OdidReq;

    invoke-direct {v1}, Lcom/huawei/hms/support/api/entity/opendevice/OdidReq;-><init>()V

    const-string v2, "opendevice.getodid"

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/huawei/hms/opendevice/u;-><init>(Lcom/huawei/hms/support/api/opendevice/HuaweiOpendeviceApiImpl;Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method
