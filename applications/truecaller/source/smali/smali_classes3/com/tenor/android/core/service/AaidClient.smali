.class public final Lcom/tenor/android/core/service/AaidClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenor/android/core/service/AaidClient$AdvertisingInterface;,
        Lcom/tenor/android/core/service/AaidClient$AdvertisingConnection;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAdvertisingId(Landroid/content/Context;)Lcom/tenor/android/core/service/AaidInfo;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3
    new-instance v0, Lcom/tenor/android/core/service/AaidClient$AdvertisingConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tenor/android/core/service/AaidClient$AdvertisingConnection;-><init>(Lcom/tenor/android/core/service/AaidClient$1;)V

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 6
    :try_start_1
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, -0x4

    if-eqz v1, :cond_0

    .line 7
    :try_start_2
    new-instance v1, Lcom/tenor/android/core/service/AaidClient$AdvertisingInterface;

    invoke-virtual {v0}, Lcom/tenor/android/core/service/AaidClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/tenor/android/core/service/AaidClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 8
    new-instance v4, Lcom/tenor/android/core/service/AaidInfo;

    invoke-virtual {v1}, Lcom/tenor/android/core/service/AaidClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2}, Lcom/tenor/android/core/service/AaidClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v1

    invoke-direct {v4, v5, v1}, Lcom/tenor/android/core/service/AaidInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v4

    .line 10
    :catchall_0
    :try_start_3
    new-instance v1, Lcom/tenor/android/core/service/AaidInfo;

    invoke-direct {v1, v3}, Lcom/tenor/android/core/service/AaidInfo;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    :catchall_1
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 12
    new-instance p0, Lcom/tenor/android/core/service/AaidInfo;

    invoke-direct {p0, v3}, Lcom/tenor/android/core/service/AaidInfo;-><init>(I)V

    return-object p0

    .line 13
    :catchall_2
    new-instance p0, Lcom/tenor/android/core/service/AaidInfo;

    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/tenor/android/core/service/AaidInfo;-><init>(I)V

    return-object p0

    .line 14
    :catchall_3
    new-instance p0, Lcom/tenor/android/core/service/AaidInfo;

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/tenor/android/core/service/AaidInfo;-><init>(I)V

    return-object p0
.end method

.method public static init(Landroid/content/Context;Lcom/tenor/android/core/service/IAaidListener;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/tenor/android/core/service/AaidClient;->isOnMainThread()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    invoke-static {p0}, Lcom/tenor/android/core/service/AaidClient;->getAdvertisingId(Landroid/content/Context;)Lcom/tenor/android/core/service/AaidInfo;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/tenor/android/core/service/AaidInfo;->getState()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/tenor/android/core/service/AaidInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tenor/android/core/util/AbstractSessionUtils;->setAndroidAdvertiseId(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 5
    invoke-static {p0, v1}, Lcom/tenor/android/core/util/AbstractSessionUtils;->setAndroidAdvertiseId(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    const-string v1, "AAID: "

    .line 6
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tenor/android/core/service/AaidInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Opt out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Lcom/tenor/android/core/service/AaidInfo;->isLimitAdTrackingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Lcom/tenor/android/core/service/AaidInfo;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {p0, v1}, Lcom/tenor/android/core/util/AbstractLogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/tenor/android/core/service/AaidInfo;->getState()I

    move-result p0

    if-nez p0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/tenor/android/core/service/AaidInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/tenor/android/core/service/IAaidListener;->success(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/tenor/android/core/service/AaidInfo;->getState()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/tenor/android/core/service/IAaidListener;->failure(I)V

    :cond_3
    :goto_1
    return-void

    .line 13
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot be called from the main thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isOnMainThread()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
