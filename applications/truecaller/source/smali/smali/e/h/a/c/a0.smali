.class public Le/h/a/c/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Le/h/a/c/b0;


# direct methods
.method public constructor <init>(Le/h/a/c/b0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/a0;->b:Le/h/a/c/b0;

    iput-object p2, p0, Le/h/a/c/a0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/a0;->b:Le/h/a/c/b0;

    iget-object v1, p0, Le/h/a/c/a0;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    iget-object v4, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v5, ":async_deviceID"

    const-string v6, "Called initDeviceID()"

    .line 4
    invoke-static {v3, v4, v5, v2, v6}, Le/d/c/a/a;->R0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Le/h/a/c/g0;Ljava/lang/String;)V

    .line 5
    iget-object v2, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 6
    iget-boolean v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->k:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    const/16 v2, 0x12

    new-array v4, v3, [Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2, v4}, Le/h/a/c/b0;->p(I[Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget-object v2, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v2

    .line 9
    iget v2, v2, Le/h/a/c/g0;->a:I

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/16 v2, 0x13

    new-array v4, v3, [Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v2, v4}, Le/h/a/c/b0;->p(I[Ljava/lang/String;)Ljava/lang/String;

    .line 11
    iget-object v2, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v2

    .line 12
    iget v2, v2, Le/h/a/c/g0;->a:I

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {v0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 14
    iget-object v5, v5, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v6, ":async_deviceID"

    const-string v7, "Calling _getDeviceID"

    .line 15
    invoke-static {v4, v5, v6, v2, v7}, Le/d/c/a/a;->R0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Le/h/a/c/g0;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Le/h/a/c/b0;->a()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 18
    iget-object v6, v6, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v7, ":async_deviceID"

    const-string v8, "Called _getDeviceID"

    .line 19
    invoke-static {v5, v6, v7, v4, v8}, Le/d/c/a/a;->R0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Le/h/a/c/g0;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v5, :cond_2

    .line 21
    invoke-virtual {v0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v7

    iget-object v8, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 22
    iget-object v8, v8, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v9, "CleverTap ID already present for profile"

    .line 23
    invoke-virtual {v7, v8, v9}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_b

    const/16 v7, 0x14

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v3

    aput-object v1, v5, v4

    .line 24
    invoke-virtual {v0, v7, v5}, Le/h/a/c/b0;->p(I[Ljava/lang/String;)Ljava/lang/String;

    .line 25
    invoke-virtual {v0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v1

    iget-object v0, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 26
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 27
    iget v0, v1, Le/h/a/c/g0;->a:I

    goto/16 :goto_7

    .line 28
    :cond_2
    iget-object v2, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 29
    iget-boolean v7, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->k:Z

    if-eqz v7, :cond_3

    .line 30
    invoke-virtual {v0, v1}, Le/h/a/c/b0;->b(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 31
    :cond_3
    iget-boolean v1, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->s:Z

    if-nez v1, :cond_4

    .line 32
    invoke-virtual {v0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 33
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v4, ":async_deviceID"

    const-string v5, "Calling generateDeviceID()"

    .line 34
    invoke-static {v2, v3, v4, v1, v5}, Le/d/c/a/a;->R0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Le/h/a/c/g0;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Le/h/a/c/b0;->d()V

    .line 36
    invoke-virtual {v0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 37
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, ":async_deviceID"

    const-string v4, "Called generateDeviceID()"

    .line 38
    invoke-static {v2, v0, v3, v1, v4}, Le/d/c/a/a;->R0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Le/h/a/c/g0;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 39
    :cond_4
    monitor-enter v0

    .line 40
    :try_start_0
    invoke-virtual {v0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 41
    iget-object v7, v7, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 42
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":async_deviceID"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "fetchGoogleAdID() called!"

    invoke-virtual {v1, v2, v7}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Le/h/a/c/b0;->m()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    iget-boolean v1, v0, Le/h/a/c/b0;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_a

    .line 44
    :try_start_1
    iput-boolean v4, v0, Le/h/a/c/b0;->b:Z

    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 45
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAdvertisingIdInfo"

    new-array v7, v4, [Ljava/lang/Class;

    .line 46
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    .line 47
    iget-object v7, v0, Le/h/a/c/b0;->e:Landroid/content/Context;

    aput-object v7, v2, v3

    invoke-virtual {v1, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v7, "isLimitAdTrackingEnabled"

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v7, v3, [Ljava/lang/Object;

    .line 49
    invoke-virtual {v2, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 50
    iget-object v7, v0, Le/h/a/c/b0;->a:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_5

    .line 51
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_5
    move v4, v3

    :goto_1
    iput-boolean v4, v0, Le/h/a/c/b0;->i:Z

    .line 52
    invoke-virtual {v0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 53
    iget-object v8, v8, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 54
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":async_deviceID"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "limitAdTracking = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v0, Le/h/a/c/b0;->i:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-boolean v2, v0, Le/h/a/c/b0;->i:Z

    if-eqz v2, :cond_6

    .line 56
    invoke-virtual {v0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v1

    iget-object v2, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 57
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "Device user has opted out of sharing Advertising ID, falling back to random UUID for CleverTap ID generation"

    .line 58
    invoke-virtual {v1, v2, v3}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    goto/16 :goto_6

    .line 60
    :cond_6
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getId"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 62
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 63
    :goto_2
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    .line 64
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 65
    invoke-virtual {v0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v2

    iget-object v3, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 66
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get Advertising ID: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v2, v3, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 70
    :cond_7
    invoke-virtual {v0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v2

    iget-object v3, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 71
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get Advertising ID: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_9

    .line 73
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_9

    .line 74
    iget-object v2, v0, Le/h/a/c/b0;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    const-string v3, "00000000"

    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 76
    invoke-virtual {v0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v1

    iget-object v3, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 77
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v4, "Device user has opted out of sharing Advertising ID, falling back to random UUID for CleverTap ID generation"

    .line 78
    invoke-virtual {v1, v3, v4}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit v0

    goto :goto_6

    :cond_8
    :try_start_9
    const-string v3, "-"

    const-string v4, ""

    .line 80
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le/h/a/c/b0;->h:Ljava/lang/String;

    .line 81
    monitor-exit v2

    goto :goto_5

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1

    .line 82
    :cond_9
    :goto_5
    invoke-virtual {v0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 83
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":async_deviceID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fetchGoogleAdID() done executing!"

    invoke-virtual {v1, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 85
    :cond_a
    monitor-exit v0

    .line 86
    :goto_6
    invoke-virtual {v0}, Le/h/a/c/b0;->d()V

    .line 87
    invoke-virtual {v0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 88
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, ":async_deviceID"

    const-string v4, "initDeviceID() done executing!"

    .line 89
    invoke-static {v2, v0, v3, v1, v4}, Le/d/c/a/a;->R0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Le/h/a/c/g0;Ljava/lang/String;)V

    :cond_b
    :goto_7
    return-object v6

    :catchall_3
    move-exception v1

    .line 90
    monitor-exit v0

    throw v1
.end method
