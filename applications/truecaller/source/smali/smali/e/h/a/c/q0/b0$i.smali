.class public final Le/h/a/c/q0/b0$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/h/a/c/q0/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "i"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Le/h/a/c/q0/b0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lorg/json/JSONObject;

.field public final c:Z

.field public final synthetic d:Le/h/a/c/q0/b0;


# direct methods
.method public constructor <init>(Le/h/a/c/q0/b0;Le/h/a/c/q0/b0;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/q0/b0$i;->d:Le/h/a/c/q0/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean p1, Le/h/a/c/j0;->a:Z

    iput-boolean p1, p0, Le/h/a/c/q0/b0$i;->c:Z

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Le/h/a/c/q0/b0$i;->a:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p3, p0, Le/h/a/c/q0/b0$i;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    new-instance v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    invoke-direct {v0}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;-><init>()V

    iget-object v1, p0, Le/h/a/c/q0/b0$i;->b:Lorg/json/JSONObject;

    iget-boolean v2, p0, Le/h/a/c/q0/b0$i;->c:Z

    const-string v3, "type"

    .line 2
    iput-boolean v2, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->O:Z

    .line 3
    iput-object v1, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->w:Lorg/json/JSONObject;

    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->N:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v4, "custom-html"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, v1}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->a(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->g(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v3, "Invalid JSON : "

    .line 8
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->k:Ljava/lang/String;

    .line 9
    :goto_2
    iget-object v1, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->k:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, p0, Le/h/a/c/q0/b0$i;->d:Le/h/a/c/q0/b0;

    .line 11
    iget-object v2, v1, Le/h/a/c/q0/b0;->i:Le/h/a/c/g0;

    .line 12
    iget-object v1, v1, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 13
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "Unable to parse inapp notification "

    .line 14
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 15
    iget-object v0, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->k:Ljava/lang/String;

    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v2, v1, v0}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_3
    iget-object v1, p0, Le/h/a/c/q0/b0$i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$b;

    iput-object v1, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->a:Lcom/clevertap/android/sdk/inapp/CTInAppNotification$b;

    .line 19
    const-class v1, Le/h/a/c/z0/c;

    const-class v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$c;

    iget-object v4, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    .line 20
    invoke-virtual {v5}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->c()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_d

    .line 21
    sget v6, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$c;->a:I

    monitor-enter v3

    .line 22
    :try_start_1
    sget-object v6, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$c;->c:Landroid/util/LruCache;

    if-nez v6, :cond_5

    .line 23
    sget v6, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$c;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 24
    :try_start_2
    new-instance v9, Le/h/a/c/q0/y;

    invoke-direct {v9, v6}, Le/h/a/c/q0/y;-><init>(I)V

    sput-object v9, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$c;->c:Landroid/util/LruCache;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v6

    .line 25
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 26
    :cond_5
    :goto_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 27
    invoke-virtual {v0, v5}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->c(Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;)[B

    move-result-object v6

    if-eqz v6, :cond_6

    .line 28
    iget-object v1, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->a:Lcom/clevertap/android/sdk/inapp/CTInAppNotification$b;

    invoke-interface {v1, v0}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$b;->a(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;)V

    goto/16 :goto_e

    .line 29
    :cond_6
    iget-object v6, v5, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->d:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 30
    sget-boolean v9, Le/h/a/c/j0;->a:Z

    const-string v9, "///"

    const-string v10, "/"

    .line 31
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "//"

    .line 32
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "http:/"

    const-string v10, "http://"

    .line 33
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "https:/"

    const-string v10, "https://"

    .line 34
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 35
    :try_start_4
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 37
    :try_start_5
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const/16 v10, 0x2000

    new-array v10, v10, [B

    .line 38
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 39
    :goto_5
    invoke-virtual {v9, v10}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_7

    .line 40
    invoke-virtual {v11, v10, v8, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    .line 41
    :cond_7
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v6

    goto :goto_6

    :catchall_2
    move-exception v0

    :goto_6
    if-eqz v2, :cond_8

    .line 42
    :try_start_6
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 43
    :catchall_3
    :cond_8
    throw v0

    :catch_1
    move-object v6, v2

    :catch_2
    move-object v9, v2

    if-eqz v6, :cond_9

    .line 44
    :goto_7
    :try_start_7
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    :cond_9
    if-eqz v9, :cond_4

    .line 45
    iget-object v5, v5, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->b:Ljava/lang/String;

    .line 46
    sget-object v6, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$c;->c:Landroid/util/LruCache;

    if-nez v6, :cond_a

    goto :goto_8

    .line 47
    :cond_a
    invoke-static {v5}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$c;->b(Ljava/lang/String;)[B

    move-result-object v6

    if-nez v6, :cond_c

    .line 48
    monitor-enter v3

    .line 49
    :try_start_8
    array-length v6, v9

    div-int/lit16 v6, v6, 0x400

    .line 50
    invoke-static {}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$c;->a()I

    .line 51
    invoke-static {}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$c;->a()I

    move-result v10

    if-le v6, v10, :cond_b

    .line 52
    monitor-exit v3

    :goto_8
    move v7, v8

    goto :goto_9

    .line 53
    :cond_b
    sget-object v6, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$c;->c:Landroid/util/LruCache;

    invoke-virtual {v6, v5, v9}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    monitor-exit v3

    goto :goto_9

    :catchall_5
    move-exception v0

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    :cond_c
    :goto_9
    if-nez v7, :cond_4

    const-string v5, "Error processing GIF"

    .line 55
    iput-object v5, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->k:Ljava/lang/String;

    goto/16 :goto_3

    :catchall_6
    move-exception v0

    .line 56
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v0

    .line 57
    :cond_d
    invoke-virtual {v5}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->d()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 58
    sget v6, Le/h/a/c/z0/c;->a:I

    monitor-enter v1

    .line 59
    :try_start_a
    sget-object v6, Le/h/a/c/z0/c;->c:Landroid/util/LruCache;

    if-nez v6, :cond_e

    .line 60
    sget v6, Le/h/a/c/z0/c;->b:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 61
    :try_start_b
    new-instance v9, Le/h/a/c/z0/b;

    invoke-direct {v9, v6}, Le/h/a/c/z0/b;-><init>(I)V

    sput-object v9, Le/h/a/c/z0/c;->c:Landroid/util/LruCache;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception v6

    .line 62
    :try_start_c
    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 63
    :cond_e
    :goto_a
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 64
    invoke-virtual {v0, v5}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->d(Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 65
    iget-object v1, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->a:Lcom/clevertap/android/sdk/inapp/CTInAppNotification$b;

    invoke-interface {v1, v0}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$b;->a(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;)V

    goto/16 :goto_e

    .line 66
    :cond_f
    iget-object v6, v5, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->d:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 67
    invoke-static {v6}, Le/h/a/c/j0;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 68
    iget-object v5, v5, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->b:Ljava/lang/String;

    .line 69
    sget-object v9, Le/h/a/c/z0/c;->c:Landroid/util/LruCache;

    if-nez v9, :cond_10

    goto :goto_c

    :cond_10
    if-eqz v5, :cond_11

    .line 70
    invoke-virtual {v9, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    goto :goto_b

    :cond_11
    move-object v9, v2

    :goto_b
    if-nez v9, :cond_13

    .line 71
    monitor-enter v1

    .line 72
    :try_start_d
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v9

    div-int/lit16 v9, v9, 0x400

    .line 73
    invoke-static {}, Le/h/a/c/z0/c;->a()I

    .line 74
    invoke-static {}, Le/h/a/c/z0/c;->a()I

    move-result v10

    if-le v9, v10, :cond_12

    .line 75
    monitor-exit v1

    :goto_c
    move v7, v8

    goto :goto_d

    .line 76
    :cond_12
    sget-object v8, Le/h/a/c/z0/c;->c:Landroid/util/LruCache;

    invoke-virtual {v8, v5, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    monitor-exit v1

    goto :goto_d

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw v0

    :cond_13
    :goto_d
    if-nez v7, :cond_4

    const-string v5, "Error processing image"

    .line 78
    iput-object v5, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->k:Ljava/lang/String;

    goto/16 :goto_3

    :cond_14
    const-string v5, "Error processing image as bitmap was NULL"

    .line 79
    iput-object v5, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->k:Ljava/lang/String;

    goto/16 :goto_3

    :catchall_9
    move-exception v0

    .line 80
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    throw v0

    .line 81
    :cond_15
    invoke-virtual {v5}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->e()Z

    move-result v6

    if-nez v6, :cond_16

    invoke-virtual {v5}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->b()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 82
    :cond_16
    iget-boolean v5, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->O:Z

    if-nez v5, :cond_4

    const-string v5, "InApp Video/Audio is not supported"

    .line 83
    iput-object v5, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->k:Ljava/lang/String;

    goto/16 :goto_3

    .line 84
    :cond_17
    iget-object v1, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->a:Lcom/clevertap/android/sdk/inapp/CTInAppNotification$b;

    invoke-interface {v1, v0}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$b;->a(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;)V

    :goto_e
    return-void
.end method
