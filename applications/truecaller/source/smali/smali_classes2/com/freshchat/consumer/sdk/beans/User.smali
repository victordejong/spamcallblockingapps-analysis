.class public Lcom/freshchat/consumer/sdk/beans/User;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEVICE_META_APP_VERSION_CODE:Ljava/lang/String; = "app_version_code"

.field public static final DEVICE_META_APP_VERSION_NAME:Ljava/lang/String; = "app_version"

.field public static final DEVICE_META_MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field public static final DEVICE_META_MODEL:Ljava/lang/String; = "model"

.field public static final DEVICE_META_OS_NAME:Ljava/lang/String; = "os"

.field public static final DEVICE_META_OS_VERSION_CODE:Ljava/lang/String; = "os_version_code"

.field public static final DEVICE_META_OS_VERSION_NAME:Ljava/lang/String; = "os_version"

.field public static final DEVICE_META_SDK_VERSION_CODE:Ljava/lang/String; = "sdk_version_code"

.field public static final NOTIFICATION_TYPE_ANDROID:I = 0x1

.field public static final NOTIFICATION_TYPE_IPHONE:I = 0x2

.field public static final USER_TYPE_AGENT:I = 0x2

.field public static final USER_TYPE_MOBILE:I = 0x0

.field public static final USER_TYPE_OWNER:I = 0x1

.field public static final USER_TYPE_SYSTEM42_SERVICE_ACCOUNT:I = 0x4


# instance fields
.field private alias:Ljava/lang/String;

.field private androidDeviceMeta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "deviceAndroidMeta"
    .end annotation
.end field

.field private email:Ljava/lang/String;

.field private externalId:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "identifier"
    .end annotation
.end field

.field private firstName:Ljava/lang/String;

.field private jwtIdToken:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "jwtUserAuthToken"
    .end annotation
.end field

.field private lastName:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private meta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phone:Ljava/lang/String;

.field private phoneCountry:Ljava/lang/String;

.field private restoreId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/User;->meta:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/User;->androidDeviceMeta:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/User;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidDeviceMeta()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/User;->androidDeviceMeta:Ljava/util/Map;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/User;->externalId:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/User;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getJwtIdToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/User;->jwtIdToken:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/User;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/User;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getMeta()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/User;->meta:Ljava/util/Map;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/User;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/User;->phoneCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getRestoreId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/User;->restoreId:Ljava/lang/String;

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/User;->alias:Ljava/lang/String;

    return-object p0
.end method

.method public setAndroidDeviceMeta(Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/User;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/freshchat/consumer/sdk/beans/User;"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/User;->androidDeviceMeta:Ljava/util/Map;

    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/User;->email:Ljava/lang/String;

    return-object p0
.end method

.method public setExternalId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/User;->externalId:Ljava/lang/String;

    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/User;->firstName:Ljava/lang/String;

    return-object p0
.end method

.method public setJwtIdToken(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/User;->jwtIdToken:Ljava/lang/String;

    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/User;->lastName:Ljava/lang/String;

    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/User;->locale:Ljava/lang/String;

    return-object p0
.end method

.method public setMeta(Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/User;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/freshchat/consumer/sdk/beans/User;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/User;->meta:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->d(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/User;->meta:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public setPhone(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/User;->phone:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneCountry(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/User;->phoneCountry:Ljava/lang/String;

    return-object p0
.end method

.method public setRestoreId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/User;->restoreId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "User{"

    const-string v1, "alias=\'"

    invoke-static {v0, v1}, Le/d/c/a/a;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/User;->alias:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", firstName=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/User;->firstName:Ljava/lang/String;

    const-string v3, ", lastName=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/User;->lastName:Ljava/lang/String;

    const-string v3, ", email=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/User;->email:Ljava/lang/String;

    const-string v3, ", phone=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/User;->phone:Ljava/lang/String;

    const-string v3, ", phoneCountry=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/User;->phoneCountry:Ljava/lang/String;

    const-string v3, ", externalId=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/User;->externalId:Ljava/lang/String;

    const-string v3, ", restoreId=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/User;->restoreId:Ljava/lang/String;

    const-string v3, ", androidDeviceMeta=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/User;->androidDeviceMeta:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", meta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/User;->meta:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/User;->locale:Ljava/lang/String;

    const-string v3, ", jwtIdToken="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/User;->jwtIdToken:Ljava/lang/String;

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
