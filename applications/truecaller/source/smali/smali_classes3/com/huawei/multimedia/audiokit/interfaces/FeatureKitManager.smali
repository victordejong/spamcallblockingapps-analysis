.class public Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BIND_SERVICE_LOCK:Ljava/lang/Object;

.field private static final ENGINE_PACKAGE_NAME:Ljava/lang/String; = "com.huawei.multimedia.audioengine"

.field private static final NEW_FEATUREMANAGER_LOCK:Ljava/lang/Object;

.field private static final PACKAGE_INFO_FLAG:I = 0x0

.field private static final SET_CALL_BACK_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "HwAudioKit.FeatureKitManager"

.field private static final UNBIND_SERVICE_LOCK:Ljava/lang/Object;

.field private static sInstance:Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;


# instance fields
.field private mCallBack:Lcom/huawei/multimedia/audiokit/interfaces/IAudioKitCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;->SET_CALL_BACK_LOCK:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;->NEW_FEATUREMANAGER_LOCK:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;->BIND_SERVICE_LOCK:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;->UNBIND_SERVICE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;->mCallBack:Lcom/huawei/multimedia/audiokit/interfaces/IAudioKitCallback;

    return-void
.end method

.method public static getInstance()Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;->NEW_FEATUREMANAGER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;->sInstance:Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;

    invoke-direct {v1}, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;-><init>()V

    sput-object v1, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;->sInstance:Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;

    .line 4
    :cond_0
    sget-object v1, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;->sInstance:Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;->BIND_SERVICE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 2
    :try_start_0
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.huawei.multimedia.audioengine"

    .line 4
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x1

    :try_start_1
    const-string v2, "HwAudioKit.FeatureKitManager"

    const-string v3, "bindService"

    .line 5
    invoke-static {v2, v3}, Lcom/huawei/multimedia/audiokit/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "HwAudioKit.FeatureKitManager"

    const-string v1, "bindService, SecurityException, {}"

    new-array p3, p3, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-static {p2, v1, p3}, Lcom/huawei/multimedia/audiokit/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public createFeatureKit(ILandroid/content/Context;)Lcom/huawei/multimedia/audiokit/interfaces/AudioFeaturesKit;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/huawei/multimedia/audiokit/interfaces/AudioFeaturesKit;",
            ">(I",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "HwAudioKit.FeatureKitManager"

    const-string v3, "createFeatureKit, type = {}"

    invoke-static {v2, v3, v1}, Lcom/huawei/multimedia/audiokit/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-object v1

    :cond_0
    if-eq p1, v0, :cond_1

    const-string p1, "createFeatureKit, type error"

    .line 2
    invoke-static {v2, p1}, Lcom/huawei/multimedia/audiokit/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_1
    new-instance p1, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-direct {p1, p2}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->initialize(Landroid/content/Context;)V

    return-object p1
.end method

.method public getCallBack()Lcom/huawei/multimedia/audiokit/interfaces/IAudioKitCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;->mCallBack:Lcom/huawei/multimedia/audiokit/interfaces/IAudioKitCallback;

    return-object v0
.end method

.method public isMediaKitSupport(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "HwAudioKit.FeatureKitManager"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    const-string v2, "com.huawei.multimedia.audioengine"

    .line 2
    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "packageInfo is null"

    .line 3
    invoke-static {v0, p1}, Lcom/huawei/multimedia/audiokit/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const-string p1, "isMediaKitSupport ,NameNotFoundException"

    .line 4
    invoke-static {v0, p1}, Lcom/huawei/multimedia/audiokit/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onCallBack(I)V
    .locals 5

    const-string v0, "HwAudioKit.FeatureKitManager"

    const-string v1, "onCallBack, result = {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/huawei/multimedia/audiokit/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;->SET_CALL_BACK_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;->getCallBack()Lcom/huawei/multimedia/audiokit/interfaces/IAudioKitCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;->getCallBack()Lcom/huawei/multimedia/audiokit/interfaces/IAudioKitCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/huawei/multimedia/audiokit/interfaces/IAudioKitCallback;->onResult(I)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCallBack(Lcom/huawei/multimedia/audiokit/interfaces/IAudioKitCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;->mCallBack:Lcom/huawei/multimedia/audiokit/interfaces/IAudioKitCallback;

    return-void
.end method

.method public unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 2

    const-string v0, "HwAudioKit.FeatureKitManager"

    const-string v1, "unbindService"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/multimedia/audiokit/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;->UNBIND_SERVICE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
