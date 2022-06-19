.class public final Lcom/facebook/internal/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0010H\u0002J\u0010\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u00020\u00048\u0000X\u0081T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0011\u0010\u0002\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/facebook/internal/AttributionIdentifiers$Companion;",
        "",
        "()V",
        "ANDROID_ID_COLUMN_NAME",
        "",
        "ATTRIBUTION_ID_COLUMN_NAME",
        "ATTRIBUTION_ID_CONTENT_PROVIDER",
        "getATTRIBUTION_ID_CONTENT_PROVIDER$facebook_core_release$annotations",
        "ATTRIBUTION_ID_CONTENT_PROVIDER_WAKIZASHI",
        "CONNECTION_RESULT_SUCCESS",
        "",
        "IDENTIFIER_REFRESH_INTERVAL_MILLIS",
        "",
        "LIMIT_TRACKING_COLUMN_NAME",
        "TAG",
        "cachedIdentifiers",
        "Lcom/facebook/internal/AttributionIdentifiers;",
        "getCachedIdentifiers$facebook_core_release$annotations",
        "cacheAndReturnIdentifiers",
        "identifiers",
        "getAndroidId",
        "context",
        "Landroid/content/Context;",
        "getAndroidIdViaReflection",
        "getAndroidIdViaService",
        "getAttributionIdentifiers",
        "getInstallerPackageName",
        "isGooglePlayServicesAvailable",
        "",
        "isTrackingLimited",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/facebook/internal/q;)Lcom/facebook/internal/q;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iput-wide v0, p0, Lcom/facebook/internal/q;->b:J

    .line 3
    sput-object p0, Lcom/facebook/internal/q;->g:Lcom/facebook/internal/q;

    return-object p0
.end method

.method public static final b(Landroid/content/Context;)Lcom/facebook/internal/q;
    .locals 15

    const-string v0, "limit_tracking"

    const-string v1, "androidid"

    const-string v2, "aid"

    const-string v3, "context"

    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "android_id"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-array v7, v4, [Ljava/lang/Class;

    .line 1
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v5

    const-string v8, "com.google.android.gms.common.GooglePlayServicesUtil"

    const-string v9, "isGooglePlayServicesAvailable"

    .line 2
    invoke-static {v8, v9, v7}, Lcom/facebook/internal/q0;->t(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    new-array v8, v4, [Ljava/lang/Object;

    aput-object p0, v8, v5

    .line 3
    invoke-static {v6, v7, v8}, Lcom/facebook/internal/q0;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 4
    instance-of v8, v7, Ljava/lang/Integer;

    if-eqz v8, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v5

    :goto_1
    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    const-string v7, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string v8, "getAdvertisingIdInfo"

    new-array v9, v4, [Ljava/lang/Class;

    .line 5
    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v5

    .line 6
    invoke-static {v7, v8, v9}, Lcom/facebook/internal/q0;->t(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    new-array v8, v4, [Ljava/lang/Object;

    aput-object p0, v8, v5

    .line 7
    invoke-static {v6, v7, v8}, Lcom/facebook/internal/q0;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getId"

    new-array v10, v5, [Ljava/lang/Class;

    invoke-static {v8, v9, v10}, Lcom/facebook/internal/q0;->s(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 9
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "isLimitAdTrackingEnabled"

    new-array v11, v5, [Ljava/lang/Class;

    invoke-static {v9, v10, v11}, Lcom/facebook/internal/q0;->s(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    if-eqz v8, :cond_7

    if-nez v9, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    new-instance v10, Lcom/facebook/internal/q;

    invoke-direct {v10}, Lcom/facebook/internal/q;-><init>()V

    new-array v11, v5, [Ljava/lang/Object;

    .line 11
    invoke-static {v7, v8, v11}, Lcom/facebook/internal/q0;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 12
    iput-object v8, v10, Lcom/facebook/internal/q;->a:Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/Object;

    .line 13
    invoke-static {v7, v9, v8}, Lcom/facebook/internal/q0;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    if-nez v7, :cond_6

    move v7, v5

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 14
    :goto_2
    iput-boolean v7, v10, Lcom/facebook/internal/q;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v10

    goto :goto_3

    :catch_0
    move-exception v7

    .line 15
    invoke-static {v3, v7}, Lcom/facebook/internal/q0;->F(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_7
    :goto_3
    if-nez v6, :cond_a

    const-string v6, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    const-string v7, "obtain()"

    .line 16
    new-instance v8, Lcom/facebook/internal/q$b;

    invoke-direct {v8}, Lcom/facebook/internal/q$b;-><init>()V

    .line 17
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "com.google.android.gms"

    .line 18
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    :try_start_1
    invoke-virtual {p0, v9, v8, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v9, :cond_9

    .line 20
    :try_start_2
    invoke-virtual {v8}, Lcom/facebook/internal/q$b;->a()Landroid/os/IBinder;

    move-result-object v9

    const-string v10, "binder"

    .line 21
    invoke-static {v9, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v10, Lcom/facebook/internal/q;

    invoke-direct {v10}, Lcom/facebook/internal/q;-><init>()V

    .line 23
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    invoke-static {v11, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    invoke-static {v12, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 25
    :try_start_3
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 26
    invoke-interface {v9, v4, v11, v12, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    invoke-virtual {v12}, Landroid/os/Parcel;->readException()V

    .line 28
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    :try_start_4
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 30
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 31
    iput-object v13, v10, Lcom/facebook/internal/q;->a:Ljava/lang/String;

    .line 32
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    invoke-static {v11, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    invoke-static {v12, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 34
    :try_start_5
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x2

    .line 36
    invoke-interface {v9, v6, v11, v12, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 37
    invoke-virtual {v12}, Landroid/os/Parcel;->readException()V

    .line 38
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    move v4, v5

    .line 39
    :goto_4
    :try_start_6
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 40
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 41
    iput-boolean v4, v10, Lcom/facebook/internal/q;->e:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 42
    invoke-virtual {p0, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move-object v6, v10

    goto :goto_7

    :catchall_0
    move-exception v4

    .line 43
    :try_start_7
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 44
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw v4

    :catchall_1
    move-exception v4

    .line 45
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v4

    .line 47
    :try_start_8
    invoke-static {v3, v4}, Lcom/facebook/internal/q0;->F(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 48
    invoke-virtual {p0, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_6

    :goto_5
    invoke-virtual {p0, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    :catch_2
    :cond_9
    :goto_6
    const/4 v3, 0x0

    move-object v6, v3

    :goto_7
    if-nez v6, :cond_a

    .line 49
    new-instance v6, Lcom/facebook/internal/q;

    invoke-direct {v6}, Lcom/facebook/internal/q;-><init>()V

    .line 50
    :cond_a
    :try_start_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 51
    sget-object v3, Lcom/facebook/internal/q;->g:Lcom/facebook/internal/q;

    if-eqz v3, :cond_b

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 53
    iget-wide v9, v3, Lcom/facebook/internal/q;->b:J

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x36ee80

    cmp-long v4, v7, v9

    if-gez v4, :cond_b

    return-object v3

    .line 54
    :cond_b
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v9

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.facebook.katana.provider.AttributionIdProvider"

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v7, "com.facebook.wakizashi.provider.AttributionIdProvider"

    invoke-virtual {v4, v7, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-eqz v3, :cond_c

    .line 57
    sget-object v5, Lcom/facebook/internal/y;->a:Lcom/facebook/internal/y;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string v5, "contentProviderInfo.packageName"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/facebook/internal/y;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "content://com.facebook.katana.provider.AttributionIdProvider"

    .line 58
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_8

    :cond_c
    if-eqz v4, :cond_d

    .line 59
    sget-object v3, Lcom/facebook/internal/y;->a:Lcom/facebook/internal/y;

    iget-object v3, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string v4, "wakizashiProviderInfo.packageName"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/facebook/internal/y;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "content://com.facebook.wakizashi.provider.AttributionIdProvider"

    .line 60
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    :goto_8
    move-object v8, v3

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_9

    .line 62
    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_9
    if-eqz v3, :cond_f

    .line 63
    iput-object v3, v6, Lcom/facebook/internal/q;->d:Ljava/lang/String;

    :cond_f
    if-nez v8, :cond_10

    .line 64
    invoke-static {v6}, Lcom/facebook/internal/q$a;->a(Lcom/facebook/internal/q;)Lcom/facebook/internal/q;

    return-object v6

    .line 65
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz p0, :cond_13

    .line 66
    :try_start_a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_a

    .line 67
    :cond_11
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 68
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 69
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 70
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    iput-object v2, v6, Lcom/facebook/internal/q;->c:Ljava/lang/String;

    if-lez v1, :cond_12

    if-lez v0, :cond_12

    .line 72
    invoke-virtual {v6}, Lcom/facebook/internal/q;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    .line 73
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    iput-object v1, v6, Lcom/facebook/internal/q;->a:Ljava/lang/String;

    .line 75
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 76
    iput-boolean v0, v6, Lcom/facebook/internal/q;->e:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 77
    :cond_12
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 78
    invoke-static {v6}, Lcom/facebook/internal/q$a;->a(Lcom/facebook/internal/q;)Lcom/facebook/internal/q;

    return-object v6

    .line 79
    :cond_13
    :goto_a
    :try_start_b
    invoke-static {v6}, Lcom/facebook/internal/q$a;->a(Lcom/facebook/internal/q;)Lcom/facebook/internal/q;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-nez p0, :cond_14

    goto :goto_b

    .line 80
    :cond_14
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :goto_b
    return-object v6

    :catch_3
    move-exception v0

    goto :goto_c

    .line 81
    :cond_15
    :try_start_c
    new-instance p0, Le/j/c0;

    const-string v0, "getAttributionIdentifiers cannot be called on the main thread."

    invoke-direct {p0, v0}, Le/j/c0;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception p0

    const/4 v0, 0x0

    goto :goto_e

    :catch_4
    move-exception p0

    const/4 v0, 0x0

    move-object v14, v0

    move-object v0, p0

    move-object p0, v14

    .line 82
    :goto_c
    :try_start_d
    sget-object v1, Lcom/facebook/internal/q;->f:Ljava/lang/String;

    const-string v1, "Caught unexpected exception in getAttributionId(): "

    .line 83
    invoke-static {v1, v0}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    sget-object v0, Le/j/f0;->a:Le/j/f0;

    .line 85
    sget-boolean v0, Le/j/f0;->i:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-nez p0, :cond_16

    goto :goto_d

    .line 86
    :cond_16
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :goto_d
    const/4 p0, 0x0

    return-object p0

    :catchall_4
    move-exception v0

    move-object v14, v0

    move-object v0, p0

    move-object p0, v14

    :goto_e
    if-nez v0, :cond_17

    goto :goto_f

    :cond_17
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_f
    throw p0
.end method
