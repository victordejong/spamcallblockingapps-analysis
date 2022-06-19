.class public Lio/agora/rtc/audio/HuaweiHardwareEarback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/audio/IHardwareEarback;


# static fields
.field private static final TAG:Ljava/lang/String; = "HuaweiHardwareEarback"


# instance fields
.field public clsAudioKitCallback:Ljava/lang/Class;

.field public clsHwAudioKaraokeFeatureKit:Ljava/lang/Class;

.field public clsHwAudioKit:Ljava/lang/Class;

.field private latency:I

.field private mClsInited:Z

.field private mContext:Landroid/content/Context;

.field private mEarbackEnabled:Z

.field private mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

.field private mHwAudioKit:Ljava/lang/Object;

.field private mInited:Z

.field private volume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    .line 6
    iput-boolean v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mEarbackEnabled:Z

    .line 7
    iput v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->latency:I

    .line 8
    iput v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->volume:I

    .line 9
    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKit:Ljava/lang/Class;

    .line 10
    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsAudioKitCallback:Ljava/lang/Class;

    .line 11
    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKaraokeFeatureKit:Ljava/lang/Class;

    .line 12
    iput-boolean v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mClsInited:Z

    const-string v0, "HuaweiHardwareEarback"

    const-string v1, ">>ctor"

    .line 13
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {p0}, Lio/agora/rtc/audio/HuaweiHardwareEarback;->initialize()V

    return-void
.end method

.method public static synthetic access$002(Lio/agora/rtc/audio/HuaweiHardwareEarback;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    return p1
.end method

.method public static hasHwAudioKitClass()Z
    .locals 3

    const-string v0, "com.huawei.multimedia.audiokit.interfaces.HwAudioKit"

    .line 1
    invoke-static {v0}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.huawei.multimedia.audiokit.interfaces.IAudioKitCallback"

    .line 2
    invoke-static {v1}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.huawei.multimedia.audiokit.interfaces.HwAudioKaraokeFeatureKit"

    .line 3
    invoke-static {v2}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 6

    const-string v0, "HuaweiHardwareEarback"

    const-string v1, ">>destroy"

    .line 1
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    const-string v1, "destroy"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v3, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKaraokeFeatureKit:Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1, v4, v5}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 5
    iget-object v3, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKit:Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1, v4, v2}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public declared-synchronized enableEarbackFeature(Z)I
    .locals 9

    const-class v0, Ljava/lang/Integer;

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mClsInited:Z

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "HuaweiHardwareEarback"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>enableEarbackFeature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKaraokeFeatureKit:Ljava/lang/Class;

    iget-object v2, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    const-string v3, "isKaraokeFeatureSupport"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v5, v6}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_9

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v5, Ljava/lang/Boolean;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "HuaweiHardwareEarback"

    const-string v0, "karaoke not supported"

    .line 6
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return v2

    .line 8
    :cond_2
    :try_start_1
    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKaraokeFeatureKit:Ljava/lang/Class;

    iget-object v3, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    const-string v5, "enableKaraokeFeature"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v4

    invoke-static {v1, v3, v5, v7, v6}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "HuaweiHardwareEarback"

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableKaraokeFeature failed ret "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    return v2

    .line 13
    :cond_4
    :try_start_2
    iput-boolean p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mEarbackEnabled:Z

    if-eqz p1, :cond_7

    .line 14
    iget-object p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKaraokeFeatureKit:Ljava/lang/Class;

    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    const-string v2, "getKaraokeLatency"

    new-array v3, v4, [Ljava/lang/Class;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3, v5}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 16
    :cond_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->latency:I

    :cond_6
    const-string p1, "HuaweiHardwareEarback"

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "latency "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->latency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :cond_7
    monitor-exit p0

    return v4

    .line 19
    :cond_8
    :goto_0
    monitor-exit p0

    return v2

    .line 20
    :cond_9
    :goto_1
    monitor-exit p0

    return v2

    :cond_a
    :goto_2
    const/4 p1, -0x7

    .line 21
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "HuaweiHardwareEarback"

    const-string v1, ">>finalize"

    .line 1
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/audio/HuaweiHardwareEarback;->destroy()V

    .line 3
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public initialize()V
    .locals 10

    const-string v0, "create HwAudioKit initialize failed"

    .line 1
    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    const-string v2, "HuaweiHardwareEarback"

    if-nez v1, :cond_0

    const-string v0, "mContext is null!"

    .line 2
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, ">>initialize"

    .line 3
    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.huawei.multimedia.audiokit.interfaces.HwAudioKit"

    .line 4
    invoke-static {v1}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKit:Ljava/lang/Class;

    const-string v1, "com.huawei.multimedia.audiokit.interfaces.IAudioKitCallback"

    .line 5
    invoke-static {v1}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsAudioKitCallback:Ljava/lang/Class;

    const-string v1, "com.huawei.multimedia.audiokit.interfaces.HwAudioKaraokeFeatureKit"

    .line 6
    invoke-static {v1}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKaraokeFeatureKit:Ljava/lang/Class;

    .line 7
    iget-object v3, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsAudioKitCallback:Ljava/lang/Class;

    if-eqz v3, :cond_a

    iget-object v4, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKit:Ljava/lang/Class;

    if-eqz v4, :cond_a

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 8
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    iget-object v5, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsAudioKitCallback:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lio/agora/rtc/audio/HuaweiHardwareEarback$1;

    invoke-direct {v5, p0}, Lio/agora/rtc/audio/HuaweiHardwareEarback$1;-><init>(Lio/agora/rtc/audio/HuaweiHardwareEarback;)V

    invoke-static {v1, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 9
    :try_start_0
    iget-object v7, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKit:Ljava/lang/Class;

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v6

    iget-object v9, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsAudioKitCallback:Ljava/lang/Class;

    aput-object v9, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 10
    invoke-virtual {v7}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v7, v5

    :goto_0
    if-nez v7, :cond_2

    const-string v0, "find HwAudioKit constructor failed"

    .line 11
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    .line 12
    iget-object v8, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    aput-object v8, v4, v6

    aput-object v1, v4, v3

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_1
    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Ljava/lang/Object;

    if-nez v1, :cond_3

    const-string v0, "create HwAudioKit failed"

    .line 15
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_3
    :try_start_2
    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKit:Ljava/lang/Class;

    const-string v4, "initialize"

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 17
    iget-object v4, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Ljava/lang/Object;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_4
    const-string v0, "com.huawei.multimedia.audiokit.interfaces.HwAudioKit$FeatureType"

    .line 18
    invoke-static {v0}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "cannot find class  HwAudioKit$FeatureType initialize failed"

    if-nez v0, :cond_5

    .line 19
    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v6

    goto :goto_2

    :cond_6
    move-object v4, v5

    :goto_2
    if-nez v4, :cond_7

    .line 22
    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_7
    :try_start_3
    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKit:Ljava/lang/Class;

    const-string v7, "createFeature"

    new-array v8, v3, [Ljava/lang/Class;

    aput-object v0, v8, v6

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_3
    if-nez v5, :cond_8

    const-string v0, "cannot find method createFeature "

    .line 25
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_8
    :try_start_4
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Ljava/lang/Object;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v4, v1, v6

    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 29
    :goto_4
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    if-nez v0, :cond_9

    const-string v0, " createFeature failed"

    .line 30
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_9
    iput-boolean v3, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mClsInited:Z

    return-void

    :catch_5
    move-exception v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 33
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_6
    move-exception v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 35
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_7
    move-exception v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 37
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public isHardwareEarbackSupported()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mClsInited:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "HuaweiHardwareEarback"

    const-string v2, ">>isHardwareEarbackSupported"

    .line 2
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKaraokeFeatureKit:Ljava/lang/Class;

    iget-object v3, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    const-string v4, "isKaraokeFeatureSupport"

    new-array v5, v1, [Ljava/lang/Class;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5, v6}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v1
.end method

.method public declared-synchronized setHardwareEarbackVolume(I)I
    .locals 11

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mClsInited:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "HuaweiHardwareEarback"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>setHardwareEarbackVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-gez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    :goto_0
    const-string v0, "com.huawei.multimedia.audiokit.interfaces.HwAudioKaraokeFeatureKit$ParameName"

    .line 3
    invoke-static {v0}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_3

    const-string p1, "HuaweiHardwareEarback"

    const-string v0, "cannot find method  ParameName.getParameName"

    .line 4
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return v2

    :cond_3
    :try_start_1
    const-string v3, "getParameName"

    new-array v4, v1, [Ljava/lang/Class;

    .line 6
    invoke-static {v0, v3, v4}, Lio/agora/rtc/audio/ReflectUtils;->safeGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v3, :cond_4

    const-string p1, "HuaweiHardwareEarback"

    const-string v0, "cannot find method  ParameName.getParameName"

    .line 7
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return v2

    :cond_4
    const/4 v4, 0x0

    .line 9
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v5

    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_6

    aget-object v8, v5, v7

    new-array v9, v1, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v3, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 11
    check-cast v9, Ljava/lang/String;

    const-string v10, "Karaoke_volume="

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_5

    move-object v4, v8

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 12
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v3

    .line 13
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_6
    :goto_2
    if-nez v4, :cond_7

    const-string p1, "HuaweiHardwareEarback"

    const-string v0, "cannot find object  ParameName.CMD_SET_VOCAL_VOLUME_BASE"

    .line 14
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    monitor-exit p0

    return v2

    .line 16
    :cond_7
    :try_start_4
    iget-object v3, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKaraokeFeatureKit:Ljava/lang/Class;

    iget-object v5, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    const-string v6, "setParameter"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v0, v8, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v0, v8, v9

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v4, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v9

    invoke-static {v3, v5, v6, v8, v0}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v0

    .line 17
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    :goto_3
    if-eqz v0, :cond_8

    const-string p1, "HuaweiHardwareEarback"

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParameter error number "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 19
    monitor-exit p0

    return v2

    .line 20
    :cond_8
    :try_start_6
    iput p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->volume:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 21
    monitor-exit p0

    return v1

    :cond_9
    :goto_4
    const/4 p1, -0x7

    .line 22
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
