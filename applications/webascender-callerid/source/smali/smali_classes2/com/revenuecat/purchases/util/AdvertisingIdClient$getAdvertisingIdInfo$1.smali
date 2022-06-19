.class final Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/util/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/app/Application;Lkotlin/w/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $application:Landroid/app/Application;

.field final synthetic $completion:Lkotlin/w/b/l;


# direct methods
.method constructor <init>(Landroid/app/Application;Lkotlin/w/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;->$application:Landroid/app/Application;

    iput-object p2, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;->$completion:Lkotlin/w/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-string v0, "Error getting AdvertisingIdInfo"

    const-string v1, "Purchases"

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;->$application:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.android.vending"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    new-instance v3, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingConnection;

    invoke-direct {v3}, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingConnection;-><init>()V

    .line 4
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.google.android.gms"

    .line 5
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v5, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;->$application:Landroid/app/Application;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v3, v6}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    :try_start_1
    new-instance v4, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingInterface;

    invoke-virtual {v3}, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingConnection;->getBinder$purchases_release()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 8
    invoke-virtual {v4}, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 9
    iget-object v6, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;->$completion:Lkotlin/w/b/l;

    new-instance v7, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;

    invoke-virtual {v4}, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled()Z

    move-result v4

    invoke-direct {v7, v5, v4}, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v6, v7}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1$2;

    invoke-direct {v1, p0, v3}, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1$2;-><init>(Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1$2;

    invoke-direct {v1, p0, v3}, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1$2;-><init>(Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingConnection;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 11
    :try_start_2
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1$2;

    invoke-direct {v1, p0, v3}, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1$2;-><init>(Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingConnection;)V

    goto :goto_0

    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1$2;

    invoke-direct {v2, p0, v3}, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1$2;-><init>(Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingConnection;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0

    .line 13
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;->$completion:Lkotlin/w/b/l;

    invoke-interface {v0, v2}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_1
    move-exception v3

    .line 14
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    iget-object v0, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;->$completion:Lkotlin/w/b/l;

    invoke-interface {v0, v2}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
