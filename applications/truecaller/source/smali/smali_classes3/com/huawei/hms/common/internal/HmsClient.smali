.class public abstract Lcom/huawei/hms/common/internal/HmsClient;
.super Lcom/huawei/hms/common/internal/BaseHmsClient;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/common/internal/AnyClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/common/internal/HmsClient$BaseAdapterCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HmsClient"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/common/internal/ClientSettings;Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hms/common/internal/BaseHmsClient;-><init>(Landroid/content/Context;Lcom/huawei/hms/common/internal/ClientSettings;Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;)V

    return-void
.end method


# virtual methods
.method public post(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;Lcom/huawei/hms/common/internal/AnyClient$CallBack;)V
    .locals 5

    const-string v0, "HmsClient"

    if-nez p3, :cond_0

    const-string p1, "callback is invalid, discard."

    .line 1
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    instance-of v1, p1, Lcom/huawei/hms/common/internal/RequestHeader;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    if-nez p2, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "post failed for no connected."

    .line 4
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcom/huawei/hms/common/internal/ResponseHeader;

    const p2, 0x3611c819

    const-string v0, "Not Connected"

    invoke-direct {p1, v2, p2, v0}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>(IILjava/lang/String;)V

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 6
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-interface {p3, p1, p2}, Lcom/huawei/hms/common/internal/AnyClient$CallBack;->onCallback(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    check-cast p1, Lcom/huawei/hms/common/internal/RequestHeader;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post msg "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getClientSettings()Lcom/huawei/hms/common/internal/ClientSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/common/internal/ClientSettings;->getCpActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    const-string v3, "Activity is null for "

    .line 11
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getClientSettings()Lcom/huawei/hms/common/internal/ClientSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hms/common/internal/ClientSettings;->getAppID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 12
    new-instance v0, Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-direct {v0, p0}, Lcom/huawei/hms/adapter/BaseAdapter;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;)V

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-direct {v0, p0, v1}, Lcom/huawei/hms/adapter/BaseAdapter;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Landroid/app/Activity;)V

    .line 13
    :goto_1
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/RequestHeader;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/RequestHeader;->getParcelable()Landroid/os/Parcelable;

    move-result-object p1

    new-instance v2, Lcom/huawei/hms/common/internal/HmsClient$BaseAdapterCallBack;

    invoke-direct {v2, p0, p3}, Lcom/huawei/hms/common/internal/HmsClient$BaseAdapterCallBack;-><init>(Lcom/huawei/hms/common/internal/HmsClient;Lcom/huawei/hms/common/internal/AnyClient$CallBack;)V

    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/huawei/hms/adapter/BaseAdapter;->baseRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V

    return-void

    :cond_6
    :goto_2
    const-string p1, "arguments is invalid."

    .line 14
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance p1, Lcom/huawei/hms/common/internal/ResponseHeader;

    const p2, 0x3611c818

    const-string v0, "Args is invalid"

    invoke-direct {p1, v2, p2, v0}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>(IILjava/lang/String;)V

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 16
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-interface {p3, p1, p2}, Lcom/huawei/hms/common/internal/AnyClient$CallBack;->onCallback(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;)V

    return-void
.end method

.method public updateSessionId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->sessionId:Ljava/lang/String;

    :cond_0
    return-void
.end method
