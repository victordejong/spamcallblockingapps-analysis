.class public abstract Lcom/huawei/hms/common/internal/BaseHmsClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/support/api/client/AidlApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;,
        Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;
    }
.end annotation


# static fields
.field private static final BINDING:I = 0x5

.field private static final CONNECTED:I = 0x3

.field private static final DISCONNECTED:I = 0x1

.field private static final DISCONNECTING:I = 0x4

.field private static final LOCK_CONNECT_TIMEOUT_HANDLER:Ljava/lang/Object;

.field private static final MSG_CONN_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BaseHmsClient"


# instance fields
.field private mAppID:Ljava/lang/String;

.field private mBinderAdapter:Lcom/huawei/hms/adapter/BinderAdapter;

.field private final mClientSettings:Lcom/huawei/hms/common/internal/ClientSettings;

.field private final mConnStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mConnectTimeoutHandler:Landroid/os/Handler;

.field private final mConnectionCallbacks:Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;

.field private final mConnectionFailedListener:Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;

.field private final mContext:Landroid/content/Context;

.field private volatile mService:Lcom/huawei/hms/core/aidl/d;

.field public sessionId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->LOCK_CONNECT_TIMEOUT_HANDLER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/common/internal/ClientSettings;Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mConnStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mConnectTimeoutHandler:Landroid/os/Handler;

    .line 4
    iput-object p1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mClientSettings:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 6
    invoke-virtual {p2}, Lcom/huawei/hms/common/internal/ClientSettings;->getAppID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mAppID:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mConnectionFailedListener:Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;

    .line 8
    iput-object p4, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mConnectionCallbacks:Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;

    return-void
.end method

.method public static synthetic access$000(Lcom/huawei/hms/common/internal/BaseHmsClient;)Lcom/huawei/hms/core/aidl/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mService:Lcom/huawei/hms/core/aidl/d;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/huawei/hms/common/internal/BaseHmsClient;Lcom/huawei/hms/core/aidl/d;)Lcom/huawei/hms/core/aidl/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mService:Lcom/huawei/hms/core/aidl/d;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/huawei/hms/common/internal/BaseHmsClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->tryUnBind()V

    return-void
.end method

.method public static synthetic access$200(Lcom/huawei/hms/common/internal/BaseHmsClient;Lcom/huawei/hms/api/ConnectionResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->notifyFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/huawei/hms/common/internal/BaseHmsClient;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/huawei/hms/common/internal/BaseHmsClient;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->setConnectStatus(I)V

    return-void
.end method

.method public static synthetic access$500(Lcom/huawei/hms/common/internal/BaseHmsClient;)Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mConnectionCallbacks:Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/huawei/hms/common/internal/BaseHmsClient;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->notifyFailed(I)V

    return-void
.end method

.method public static synthetic access$700(Lcom/huawei/hms/common/internal/BaseHmsClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->bindCoreService()V

    return-void
.end method

.method private bindCoreService()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mClientSettings:Lcom/huawei/hms/common/internal/ClientSettings;

    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->getInnerHmsPkg()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getServiceAction()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/huawei/hms/utils/Util;->getServiceActionMetadata(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 6
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter bindCoreService, packageName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", serviceAction is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseHmsClient"

    invoke-static {v3, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v2, Lcom/huawei/hms/adapter/BinderAdapter;

    iget-object v3, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0}, Lcom/huawei/hms/adapter/BinderAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mBinderAdapter:Lcom/huawei/hms/adapter/BinderAdapter;

    .line 8
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->newBinderCallBack()Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/huawei/hms/adapter/BinderAdapter;->binder(Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;)V

    return-void
.end method

.method private cancelConnDelayHandle()V
    .locals 3

    .line 1
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->LOCK_CONNECT_TIMEOUT_HANDLER:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mConnectTimeoutHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mConnectTimeoutHandler:Landroid/os/Handler;

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkAvailabilityAndConnect(IZ)V
    .locals 3

    const-string v0, "BaseHmsClient"

    const-string v1, "====== HMSSDK version: 60300303 ======"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mConnStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const-string v2, "Enter connect, Connection Status: "

    .line 3
    invoke-static {v2, v1, v0}, Le/d/c/a/a;->D0(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x5

    if-nez p2, :cond_1

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    if-eq v1, v2, :cond_0

    const/4 p2, 0x4

    if-ne v1, p2, :cond_1

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-direct {p0, v2}, Lcom/huawei/hms/common/internal/BaseHmsClient;->setConnectStatus(I)V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getMinApkVersion()I

    move-result p2

    if-le p2, p1, :cond_2

    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getMinApkVersion()I

    move-result p1

    :cond_2
    const-string p2, "connect minVersion:"

    const-string v1, " packageName:"

    .line 6
    invoke-static {p2, p1, v1}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mClientSettings:Lcom/huawei/hms/common/internal/ClientSettings;

    invoke-virtual {v1}, Lcom/huawei/hms/common/internal/ClientSettings;->getInnerHmsPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mClientSettings:Lcom/huawei/hms/common/internal/ClientSettings;

    invoke-virtual {v1}, Lcom/huawei/hms/common/internal/ClientSettings;->getInnerHmsPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "service packageName is same, bind core service return"

    .line 8
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->bindCoreService()V

    return-void

    .line 10
    :cond_3
    iget-object p2, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 11
    new-instance p2, Lcom/huawei/hms/adapter/AvailableAdapter;

    invoke-direct {p2, p1}, Lcom/huawei/hms/adapter/AvailableAdapter;-><init>(I)V

    .line 12
    iget-object p1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Lcom/huawei/hms/adapter/AvailableAdapter;->isHuaweiMobileServicesAvailable(Landroid/content/Context;)I

    move-result p1

    const-string v1, "check available result: "

    .line 13
    invoke-static {v1, p1, v0}, Le/d/c/a/a;->D0(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_4

    .line 14
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->bindCoreService()V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p2, p1}, Lcom/huawei/hms/adapter/AvailableAdapter;->isUserResolvableError(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "bindCoreService3.0 fail, start resolution now."

    .line 16
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p2, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->resolution(Lcom/huawei/hms/adapter/AvailableAdapter;I)V

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {p2, p1}, Lcom/huawei/hms/adapter/AvailableAdapter;->isUserNoticeError(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "bindCoreService3.0 fail, start notice now."

    .line 19
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p2, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->notice(Lcom/huawei/hms/adapter/AvailableAdapter;I)V

    goto :goto_0

    .line 21
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindCoreService3.0 fail: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not resolvable."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->notifyFailed(I)V

    goto :goto_0

    .line 23
    :cond_7
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object p2

    iget-object v1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1, p1}, Lcom/huawei/hms/api/HuaweiApiAvailability;->isHuaweiMobileServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    const-string p2, "HuaweiApiAvailability check available result: "

    .line 24
    invoke-static {p2, p1, v0}, Le/d/c/a/a;->D0(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_8

    .line 25
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->bindCoreService()V

    goto :goto_0

    .line 26
    :cond_8
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->notifyFailed(I)V

    :goto_0
    return-void
.end method

.method private newBinderCallBack()Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/common/internal/BaseHmsClient$1;

    invoke-direct {v0, p0}, Lcom/huawei/hms/common/internal/BaseHmsClient$1;-><init>(Lcom/huawei/hms/common/internal/BaseHmsClient;)V

    return-object v0
.end method

.method private notice(Lcom/huawei/hms/adapter/AvailableAdapter;I)V
    .locals 3

    const-string v0, "BaseHmsClient"

    const-string v1, "enter notice"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getClientSettings()Lcom/huawei/hms/common/internal/ClientSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->isHasActivity()Z

    move-result v0

    const/16 v1, 0x1a

    if-nez v0, :cond_1

    const/16 p1, 0x1d

    if-ne p2, p1, :cond_0

    const/16 p2, 0x9

    .line 3
    :cond_0
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getErrPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/huawei/hms/api/ConnectionResult;

    invoke-direct {p2, v1, p1}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 5
    invoke-direct {p0, p2}, Lcom/huawei/hms/common/internal/BaseHmsClient;->notifyFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getClientSettings()Lcom/huawei/hms/common/internal/ClientSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/huawei/hms/common/internal/ClientSettings;->getCpActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/huawei/hms/utils/Util;->getActiveActivity(Landroid/app/Activity;Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 7
    new-instance v0, Lcom/huawei/hms/common/internal/BaseHmsClient$2;

    invoke-direct {v0, p0}, Lcom/huawei/hms/common/internal/BaseHmsClient$2;-><init>(Lcom/huawei/hms/common/internal/BaseHmsClient;)V

    invoke-virtual {p1, p2, v0}, Lcom/huawei/hms/adapter/AvailableAdapter;->startNotice(Landroid/app/Activity;Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0, v1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->notifyFailed(I)V

    :goto_0
    return-void
.end method

.method private notifyFailed(I)V
    .locals 2

    const-string v0, "notifyFailed result: "

    const-string v1, "BaseHmsClient"

    .line 1
    invoke-static {v0, p1, v1}, Le/d/c/a/a;->D0(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mConnectionFailedListener:Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/huawei/hms/api/ConnectionResult;

    invoke-direct {v1, p1}, Lcom/huawei/hms/api/ConnectionResult;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    :cond_0
    return-void
.end method

.method private notifyFailed(Lcom/huawei/hms/api/ConnectionResult;)V
    .locals 2

    const-string v0, "notifyFailed result: "

    .line 4
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseHmsClient"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mConnectionFailedListener:Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    :cond_0
    return-void
.end method

.method private resolution(Lcom/huawei/hms/adapter/AvailableAdapter;I)V
    .locals 3

    const-string v0, "BaseHmsClient"

    const-string v1, "enter HmsCore resolution"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getClientSettings()Lcom/huawei/hms/common/internal/ClientSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->isHasActivity()Z

    move-result v0

    const/16 v1, 0x1a

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getErrPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/huawei/hms/api/ConnectionResult;

    invoke-direct {p2, v1, p1}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 5
    invoke-direct {p0, p2}, Lcom/huawei/hms/common/internal/BaseHmsClient;->notifyFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getClientSettings()Lcom/huawei/hms/common/internal/ClientSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/huawei/hms/common/internal/ClientSettings;->getCpActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/huawei/hms/utils/Util;->getActiveActivity(Landroid/app/Activity;Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    new-instance v0, Lcom/huawei/hms/common/internal/BaseHmsClient$3;

    invoke-direct {v0, p0}, Lcom/huawei/hms/common/internal/BaseHmsClient$3;-><init>(Lcom/huawei/hms/common/internal/BaseHmsClient;)V

    invoke-virtual {p1, p2, v0}, Lcom/huawei/hms/adapter/AvailableAdapter;->startResolution(Landroid/app/Activity;Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, v1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->notifyFailed(I)V

    :goto_0
    return-void
.end method

.method private setConnectStatus(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mConnStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private tryUnBind()V
    .locals 2

    const-string v0, "BaseHmsClient"

    const-string v1, "Failed to get service as interface, trying to unbind."

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mBinderAdapter:Lcom/huawei/hms/adapter/BinderAdapter;

    invoke-virtual {v0}, Lcom/huawei/hms/adapter/BinderAdapter;->unBind()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->setConnectStatus(I)V

    const/16 v0, 0xa

    .line 4
    invoke-direct {p0, v0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->notifyFailed(I)V

    return-void
.end method


# virtual methods
.method public final checkConnected()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->checkAvailabilityAndConnect(IZ)V

    return-void
.end method

.method public connect(IZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/internal/BaseHmsClient;->checkAvailabilityAndConnect(IZ)V

    return-void
.end method

.method public final connectionConnected()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->setConnectStatus(I)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mConnectionCallbacks:Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;->onConnected()V

    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mConnStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "Enter disconnect, Connection Status: "

    const-string v2, "BaseHmsClient"

    .line 2
    invoke-static {v1, v0, v2}, Le/d/c/a/a;->D0(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->cancelConnDelayHandle()V

    .line 4
    invoke-direct {p0, v1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->setConnectStatus(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mBinderAdapter:Lcom/huawei/hms/adapter/BinderAdapter;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/huawei/hms/adapter/BinderAdapter;->unBind()V

    .line 7
    :cond_2
    invoke-direct {p0, v1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->setConnectStatus(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getApiNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mClientSettings:Lcom/huawei/hms/common/internal/ClientSettings;

    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->getApiName()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mAppID:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSettings()Lcom/huawei/hms/common/internal/ClientSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mClientSettings:Lcom/huawei/hms/common/internal/ClientSettings;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCpID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mClientSettings:Lcom/huawei/hms/common/internal/ClientSettings;

    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->getCpID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinApkVersion()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x1c9c380

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mClientSettings:Lcom/huawei/hms/common/internal/ClientSettings;

    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lcom/huawei/hms/core/aidl/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mService:Lcom/huawei/hms/core/aidl/d;

    return-object v0
.end method

.method public getServiceAction()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mClientSettings:Lcom/huawei/hms/common/internal/ClientSettings;

    invoke-virtual {v1}, Lcom/huawei/hms/common/internal/ClientSettings;->isUseInnerHms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getInnerServiceAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getServiceAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubAppInfo()Lcom/huawei/hms/support/api/client/SubAppInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mClientSettings:Lcom/huawei/hms/common/internal/ClientSettings;

    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->getSubAppID()Lcom/huawei/hms/support/api/client/SubAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTransportName()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hms/api/IPCTransport;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mConnStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mConnStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isConnecting()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->mConnStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConnecting()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->connectionConnected()V

    return-void
.end method
