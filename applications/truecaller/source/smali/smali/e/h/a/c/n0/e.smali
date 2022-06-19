.class public Le/h/a/c/n0/e;
.super Le/h/a/c/n0/a;
.source "SourceFile"

# interfaces
.implements Le/h/a/c/c0;


# instance fields
.field public a:Ljava/lang/Runnable;

.field public final b:Le/h/a/c/l0/a;

.field public final c:Le/h/a/c/w;

.field public final d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final e:Landroid/content/Context;

.field public final f:Le/h/a/c/m;

.field public final g:Le/h/a/c/b0;

.field public final h:Le/h/a/c/n0/d;

.field public final i:Le/h/a/c/f0;

.field public final j:Le/h/a/c/g0;

.field public k:Le/h/a/c/t0/f;

.field public final l:Le/h/a/c/y0/e;

.field public final m:Le/h/a/c/u0/a;

.field public final n:Le/h/a/c/i0;

.field public final o:Le/h/a/c/a1/b;

.field public p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Le/h/a/c/l0/a;Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/n0/d;Le/h/a/c/i0;Le/h/a/c/k;Le/h/a/c/y0/e;Le/h/a/c/b0;Le/h/a/c/a1/b;Le/h/a/c/u0/b;Le/h/a/c/w;Le/h/a/c/m;Le/h/a/c/f0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/h/a/c/n0/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/h/a/c/n0/e;->a:Ljava/lang/Runnable;

    .line 3
    iput-object v0, p0, Le/h/a/c/n0/e;->p:Ljava/lang/Runnable;

    .line 4
    iput-object p1, p0, Le/h/a/c/n0/e;->b:Le/h/a/c/l0/a;

    .line 5
    iput-object p2, p0, Le/h/a/c/n0/e;->e:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 7
    iput-object p4, p0, Le/h/a/c/n0/e;->h:Le/h/a/c/n0/d;

    .line 8
    iput-object p5, p0, Le/h/a/c/n0/e;->n:Le/h/a/c/i0;

    .line 9
    iput-object p7, p0, Le/h/a/c/n0/e;->l:Le/h/a/c/y0/e;

    .line 10
    iput-object p8, p0, Le/h/a/c/n0/e;->g:Le/h/a/c/b0;

    .line 11
    iput-object p9, p0, Le/h/a/c/n0/e;->o:Le/h/a/c/a1/b;

    .line 12
    iput-object p10, p0, Le/h/a/c/n0/e;->m:Le/h/a/c/u0/a;

    .line 13
    iput-object p13, p0, Le/h/a/c/n0/e;->i:Le/h/a/c/f0;

    .line 14
    invoke-virtual {p3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iput-object p1, p0, Le/h/a/c/n0/e;->j:Le/h/a/c/g0;

    .line 15
    iput-object p11, p0, Le/h/a/c/n0/e;->c:Le/h/a/c/w;

    .line 16
    iput-object p12, p0, Le/h/a/c/n0/e;->f:Le/h/a/c/m;

    .line 17
    check-cast p6, Le/h/a/c/o;

    .line 18
    iput-object p0, p6, Le/h/a/c/o;->c:Le/h/a/c/c0;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Le/h/a/c/n0/c;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "connectivity"

    .line 1
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :catchall_0
    :goto_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_2

    .line 4
    iget-object p1, p0, Le/h/a/c/n0/e;->j:Le/h/a/c/g0;

    iget-object p2, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v0, "Network connectivity unavailable. Will retry later"

    .line 6
    invoke-virtual {p1, p2, v0}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    iget-object v2, p0, Le/h/a/c/n0/e;->c:Le/h/a/c/w;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Le/h/a/c/n0/e;->m:Le/h/a/c/u0/a;

    invoke-virtual {v2, p2}, Le/h/a/c/u0/a;->b(Le/h/a/c/n0/c;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 9
    iget-object v2, p0, Le/h/a/c/n0/e;->m:Le/h/a/c/u0/a;

    new-instance v3, Le/h/a/c/n0/e$b;

    invoke-direct {v3, p0, p1, p2}, Le/h/a/c/n0/e$b;-><init>(Le/h/a/c/n0/e;Landroid/content/Context;Le/h/a/c/n0/c;)V

    check-cast v2, Le/h/a/c/u0/b;

    .line 10
    iput v0, v2, Le/h/a/c/u0/b;->m:I

    .line 11
    iget-object p1, v2, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0}, Le/h/a/c/u0/b;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    iget-object p1, v2, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    .line 13
    invoke-virtual {v2, v1, p2}, Le/h/a/c/u0/b;->f(ZLe/h/a/c/n0/c;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 14
    iget-object v1, v2, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v4, v2, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 15
    iget-object v4, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v5, "Unable to perform handshake, endpoint is null"

    .line 16
    invoke-virtual {v1, v4, v5}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_3
    iget-object v1, v2, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v4, v2, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 18
    iget-object v4, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing handshake with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :try_start_1
    invoke-virtual {v2, p2}, Le/h/a/c/u0/b;->c(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p2

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_5

    .line 22
    iget-object p1, v2, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v1, v2, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 23
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid HTTP status code received for handshake - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    :cond_4
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto :goto_4

    .line 26
    :cond_5
    :try_start_3
    iget-object p2, v2, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v1, v2, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 27
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v4, "Received success from handshake :)"

    .line 28
    invoke-virtual {p2, v1, v4}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2, p1, v0}, Le/h/a/c/u0/b;->k(Landroid/content/Context;Ljavax/net/ssl/HttpsURLConnection;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 30
    iget-object p1, v2, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object p2, v2, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 31
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "We are not muted"

    .line 32
    invoke-virtual {p1, p2, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v3}, Le/h/a/c/n0/e$b;->run()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 34
    :catchall_1
    :try_start_4
    iget-object p1, v2, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object p2, v2, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 35
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_8

    :goto_3
    goto :goto_2

    .line 37
    :goto_4
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 38
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_5

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_6

    .line 39
    :try_start_6
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 40
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 41
    :catchall_3
    :cond_6
    throw p1

    .line 42
    :cond_7
    iget-object v0, p0, Le/h/a/c/n0/e;->j:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 43
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Pushing Notification Viewed event onto queue DB flush"

    .line 44
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Le/h/a/c/n0/e;->m:Le/h/a/c/u0/a;

    invoke-virtual {v0, p1, p2}, Le/h/a/c/u0/a;->a(Landroid/content/Context;Le/h/a/c/n0/c;)V

    :catchall_4
    :cond_8
    :goto_5
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Le/h/a/c/n0/e;->g:Le/h/a/c/b0;

    invoke-virtual {v0}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 5
    iget-object v3, p0, Le/h/a/c/n0/e;->e:Landroid/content/Context;

    iget-object v4, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    iget-object v5, p0, Le/h/a/c/n0/e;->g:Le/h/a/c/b0;

    iget-object v6, p0, Le/h/a/c/n0/e;->o:Le/h/a/c/a1/b;

    .line 6
    invoke-static {v3, v4, v5, v6}, Ln3/g0/y;->x0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/b0;Le/h/a/c/a1/b;)Le/h/a/c/t0/b;

    move-result-object v3

    .line 7
    new-instance v4, Le/h/a/c/t0/f;

    iget-object v5, p0, Le/h/a/c/n0/e;->e:Landroid/content/Context;

    iget-object v6, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    iget-object v7, p0, Le/h/a/c/n0/e;->g:Le/h/a/c/b0;

    invoke-direct {v4, v5, v6, v7}, Le/h/a/c/t0/f;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/b0;)V

    .line 8
    iput-object v4, p0, Le/h/a/c/n0/e;->k:Le/h/a/c/t0/f;

    .line 9
    :catchall_0
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x0

    .line 11
    :try_start_1
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 12
    :catchall_1
    :try_start_2
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catch_0
    :goto_1
    if-eqz v5, :cond_0

    .line 13
    :try_start_3
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-interface {v3, v4}, Le/h/a/c/t0/b;->b(Ljava/lang/String;)Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v6, :cond_0

    .line 15
    :try_start_4
    iget-object v6, p0, Le/h/a/c/n0/e;->k:Le/h/a/c/t0/f;

    .line 16
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v0, v4, v5}, Le/h/a/c/t0/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 17
    :cond_1
    :try_start_5
    iget-object p1, p0, Le/h/a/c/n0/e;->g:Le/h/a/c/b0;

    .line 18
    invoke-virtual {p1}, Le/h/a/c/b0;->i()Le/h/a/c/b0$a;

    move-result-object p1

    .line 19
    iget-object p1, p1, Le/h/a/c/b0$a;->c:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 20
    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Carrier"

    .line 21
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    :cond_2
    iget-object p1, p0, Le/h/a/c/n0/e;->g:Le/h/a/c/b0;

    invoke-virtual {p1}, Le/h/a/c/b0;->h()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "cc"

    .line 24
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string p1, "tz"

    .line 25
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "profile"

    .line 27
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    iget-object v0, p0, Le/h/a/c/n0/e;->e:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Le/h/a/c/n0/e;->d(Landroid/content/Context;Lorg/json/JSONObject;I)Ljava/util/concurrent/Future;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 29
    :catch_1
    :try_start_7
    iget-object p1, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v0, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 30
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "FATAL: Creating basic profile update event failed!"

    .line 31
    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 32
    :catchall_2
    iget-object p1, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v0, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 33
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/h/a/c/n0/e;->c:Le/h/a/c/w;

    invoke-virtual {v0}, Le/h/a/c/w;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    .line 3
    new-instance v1, Le/h/a/c/n0/e$c;

    invoke-direct {v1, p0}, Le/h/a/c/n0/e$c;-><init>(Le/h/a/c/n0/e;)V

    .line 4
    iget-object v2, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 5
    new-instance v3, Le/h/a/c/y0/j;

    const-string v4, "CleverTapAPI#pushInitialEventsAsync"

    invoke-direct {v3, v0, v4, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 6
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/content/Context;Lorg/json/JSONObject;I)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    .line 2
    new-instance v1, Le/h/a/c/n0/e$d;

    invoke-direct {v1, p0, p2, p3, p1}, Le/h/a/c/n0/e$d;-><init>(Le/h/a/c/n0/e;Lorg/json/JSONObject;ILandroid/content/Context;)V

    .line 3
    iget-object p1, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    instance-of p2, p1, Ljava/util/concurrent/ExecutorService;

    if-eqz p2, :cond_0

    .line 4
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    .line 5
    new-instance p2, Le/h/a/c/y0/j;

    const-string p3, "queueEvent"

    invoke-direct {p2, v0, p3, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 6
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Can\'t use this method without ExecutorService, Use Execute alternatively "

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Landroid/content/Context;Lorg/json/JSONObject;I)V
    .locals 8

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x6

    if-ne p3, v3, :cond_2

    .line 2
    iget-object p3, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p3

    iget-object v3, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v4, "Pushing Notification Viewed event onto separate queue"

    .line 4
    invoke-virtual {p3, v3, v4}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p3, p0, Le/h/a/c/n0/e;->f:Le/h/a/c/m;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p3, p0, Le/h/a/c/n0/e;->c:Le/h/a/c/w;

    .line 7
    iget p3, p3, Le/h/a/c/w;->d:I

    const-string v3, "s"

    .line 8
    invoke-virtual {p2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "type"

    const-string v3, "event"

    .line 9
    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ep"

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v1

    long-to-int v1, v3

    .line 11
    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    iget-object p3, p0, Le/h/a/c/n0/e;->o:Le/h/a/c/a1/b;

    invoke-virtual {p3}, Le/h/a/c/a1/b;->a()Le/h/a/c/a1/a;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v1, "wzrk_error"

    .line 13
    invoke-static {p3}, Ln3/g0/y;->l0(Le/h/a/c/a1/a;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    :cond_0
    iget-object p3, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p3

    iget-object v1, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 15
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Pushing Notification Viewed event onto DB"

    .line 16
    invoke-virtual {p3, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p3, p0, Le/h/a/c/n0/e;->b:Le/h/a/c/l0/a;

    check-cast p3, Le/h/a/c/l0/c;

    .line 18
    sget-object v1, Le/h/a/c/l0/b$b;->h:Le/h/a/c/l0/b$b;

    invoke-virtual {p3, p1, p2, v1}, Le/h/a/c/l0/c;->d(Landroid/content/Context;Lorg/json/JSONObject;Le/h/a/c/l0/b$b;)V

    .line 19
    iget-object p3, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p3

    iget-object v1, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 20
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Pushing Notification Viewed event onto queue flush"

    .line 21
    invoke-virtual {p3, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p3, p0, Le/h/a/c/n0/e;->p:Ljava/lang/Runnable;

    if-nez p3, :cond_1

    .line 23
    new-instance p3, Le/h/a/c/n0/g;

    invoke-direct {p3, p0, p1}, Le/h/a/c/n0/g;-><init>(Le/h/a/c/n0/e;Landroid/content/Context;)V

    iput-object p3, p0, Le/h/a/c/n0/e;->p:Ljava/lang/Runnable;

    .line 24
    :cond_1
    iget-object p1, p0, Le/h/a/c/n0/e;->l:Le/h/a/c/y0/e;

    iget-object p3, p0, Le/h/a/c/n0/e;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    iget-object p1, p0, Le/h/a/c/n0/e;->l:Le/h/a/c/y0/e;

    iget-object p3, p0, Le/h/a/c/n0/e;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 26
    :catchall_0
    :try_start_1
    iget-object p1, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object p3, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 27
    iget-object p3, p3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 28
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 29
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :goto_0
    monitor-exit v0

    goto/16 :goto_5

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 31
    :cond_2
    iget-object v3, p0, Le/h/a/c/n0/e;->f:Le/h/a/c/m;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_2
    sget v3, Le/h/a/c/w;->v:I

    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 33
    sput v4, Le/h/a/c/w;->v:I

    :cond_3
    const/4 v3, 0x3

    if-ne p3, v4, :cond_4

    const-string v4, "page"

    goto :goto_1

    :cond_4
    const/4 v5, 0x2

    if-ne p3, v5, :cond_7

    const-string v5, "ping"

    .line 34
    invoke-virtual {p0, p2, p1}, Le/h/a/c/n0/e;->f(Lorg/json/JSONObject;Landroid/content/Context;)V

    const-string v6, "bk"

    .line 35
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 36
    iget-object v6, p0, Le/h/a/c/n0/e;->c:Le/h/a/c/w;

    .line 37
    iput-boolean v4, v6, Le/h/a/c/w;->j:Z

    const-string v6, "bk"

    .line 38
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    :cond_5
    iget-object v6, p0, Le/h/a/c/n0/e;->c:Le/h/a/c/w;

    .line 40
    iget-boolean v6, v6, Le/h/a/c/w;->k:Z

    if-eqz v6, :cond_6

    const-string v6, "gf"

    .line 41
    invoke-virtual {p2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 42
    iget-object v4, p0, Le/h/a/c/n0/e;->c:Le/h/a/c/w;

    const/4 v6, 0x0

    .line 43
    iput-boolean v6, v4, Le/h/a/c/w;->k:Z

    const-string v7, "gfSDKVersion"

    .line 44
    iget v4, v4, Le/h/a/c/w;->h:I

    .line 45
    invoke-virtual {p2, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    iget-object v4, p0, Le/h/a/c/n0/e;->c:Le/h/a/c/w;

    .line 47
    iput v6, v4, Le/h/a/c/w;->h:I

    :cond_6
    move-object v4, v5

    goto :goto_1

    :cond_7
    if-ne p3, v3, :cond_8

    const-string v4, "profile"

    goto :goto_1

    :cond_8
    const/4 v4, 0x5

    if-ne p3, v4, :cond_9

    const-string v4, "data"

    goto :goto_1

    :cond_9
    const-string v4, "event"

    .line 48
    :goto_1
    iget-object v5, p0, Le/h/a/c/n0/e;->c:Le/h/a/c/w;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v5, p0, Le/h/a/c/n0/e;->c:Le/h/a/c/w;

    .line 50
    iget v5, v5, Le/h/a/c/w;->d:I

    const-string v6, "s"

    .line 51
    invoke-virtual {p2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "pg"

    .line 52
    sget v6, Le/h/a/c/w;->v:I

    .line 53
    invoke-virtual {p2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "type"

    .line 54
    invoke-virtual {p2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "ep"

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v1

    long-to-int v1, v5

    .line 56
    invoke-virtual {p2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "f"

    .line 57
    iget-object v2, p0, Le/h/a/c/n0/e;->c:Le/h/a/c/w;

    .line 58
    iget-boolean v2, v2, Le/h/a/c/w;->g:Z

    .line 59
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "lsl"

    .line 60
    iget-object v2, p0, Le/h/a/c/n0/e;->c:Le/h/a/c/w;

    .line 61
    iget v2, v2, Le/h/a/c/w;->m:I

    .line 62
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    const-string v1, "type"

    .line 63
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "event"

    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "App Launched"

    const-string v2, "evtName"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "pai"

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 66
    :catchall_2
    :cond_a
    :try_start_4
    iget-object v1, p0, Le/h/a/c/n0/e;->o:Le/h/a/c/a1/b;

    invoke-virtual {v1}, Le/h/a/c/a1/b;->a()Le/h/a/c/a1/a;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v2, "wzrk_error"

    .line 67
    invoke-static {v1}, Ln3/g0/y;->l0(Le/h/a/c/a1/a;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    :cond_b
    iget-object v1, p0, Le/h/a/c/n0/e;->i:Le/h/a/c/f0;

    invoke-virtual {v1, p2}, Le/h/a/c/f0;->l(Lorg/json/JSONObject;)V

    .line 69
    iget-object v1, p0, Le/h/a/c/n0/e;->b:Le/h/a/c/l0/a;

    check-cast v1, Le/h/a/c/l0/c;

    if-ne p3, v3, :cond_c

    .line 70
    sget-object v2, Le/h/a/c/l0/b$b;->c:Le/h/a/c/l0/b$b;

    goto :goto_2

    .line 71
    :cond_c
    sget-object v2, Le/h/a/c/l0/b$b;->b:Le/h/a/c/l0/b$b;

    .line 72
    :goto_2
    invoke-virtual {v1, p1, p2, v2}, Le/h/a/c/l0/c;->d(Landroid/content/Context;Lorg/json/JSONObject;Le/h/a/c/l0/b$b;)V

    const/4 v1, 0x4

    if-ne p3, v1, :cond_d

    .line 73
    iget-object v2, p0, Le/h/a/c/n0/e;->i:Le/h/a/c/f0;

    .line 74
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-ne p3, v1, :cond_d

    .line 75
    :try_start_5
    invoke-virtual {v2, p1, p2}, Le/h/a/c/f0;->h(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    .line 76
    :catchall_3
    :try_start_6
    invoke-virtual {v2}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object p3

    .line 77
    iget-object v1, v2, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 78
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 79
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_d
    :goto_3
    invoke-virtual {p0, p1}, Le/h/a/c/n0/e;->h(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_4

    .line 81
    :catchall_4
    :try_start_7
    iget-object p1, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object p3, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 82
    iget-object p3, p3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 83
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 84
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :goto_4
    monitor-exit v0

    :goto_5
    return-void

    :catchall_5
    move-exception p1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public final f(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 5

    :try_start_0
    const-string v0, "mc"

    .line 1
    sget-boolean v1, Le/h/a/c/j0;->a:Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 3
    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    const-string v0, "nt"

    .line 4
    sget-boolean v1, Le/h/a/c/j0;->a:Z

    const-string v1, "Unavailable"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v2, "connectivity"

    .line 5
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "WiFi"

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p2}, Le/h/a/c/j0;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    :catchall_1
    :goto_0
    :try_start_3
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    return-void
.end method

.method public g(Landroid/content/Context;Le/h/a/c/n0/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    .line 2
    new-instance v1, Le/h/a/c/n0/e$a;

    invoke-direct {v1, p0, p2, p1}, Le/h/a/c/n0/e$a;-><init>(Le/h/a/c/n0/e;Le/h/a/c/n0/c;Landroid/content/Context;)V

    .line 3
    iget-object p1, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 4
    new-instance p2, Le/h/a/c/y0/j;

    const-string v2, "CommsManager#flushQueueAsync"

    invoke-direct {p2, v0, v2, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 5
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h(Landroid/content/Context;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/h/a/c/n0/e;->a:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/h/a/c/n0/e$e;

    invoke-direct {v0, p0, p1}, Le/h/a/c/n0/e$e;-><init>(Le/h/a/c/n0/e;Landroid/content/Context;)V

    iput-object v0, p0, Le/h/a/c/n0/e;->a:Ljava/lang/Runnable;

    .line 3
    :cond_0
    iget-object p1, p0, Le/h/a/c/n0/e;->l:Le/h/a/c/y0/e;

    iget-object v0, p0, Le/h/a/c/n0/e;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Le/h/a/c/n0/e;->l:Le/h/a/c/y0/e;

    iget-object v0, p0, Le/h/a/c/n0/e;->a:Ljava/lang/Runnable;

    iget-object v1, p0, Le/h/a/c/n0/e;->m:Le/h/a/c/u0/a;

    check-cast v1, Le/h/a/c/u0/b;

    .line 5
    iget-object v2, v1, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v3, v1, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 6
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v4, "Network retry #"

    .line 7
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Le/h/a/c/u0/b;->k:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget v2, v1, Le/h/a/c/u0/b;->k:I

    const/16 v3, 0xa

    const/16 v4, 0x3e8

    if-ge v2, v3, :cond_1

    .line 9
    iget-object v2, v1, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v3, v1, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 10
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v5, "Failure count is "

    .line 11
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v1, v1, Le/h/a/c/u0/b;->k:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Setting delay frequency to 1s"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v2, v1, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 13
    iget-object v5, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 14
    iget-object v1, v1, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    .line 15
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "Setting delay frequency to 1s"

    .line 16
    invoke-virtual {v1, v2, v3}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_2
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 18
    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x0

    const v3, 0x927c0

    if-ge v2, v3, :cond_3

    .line 19
    iget-object v3, v1, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v1, v1, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 20
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting delay frequency to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    goto :goto_0

    .line 22
    :cond_3
    iget-object v2, v1, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v1, v1, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 23
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "Setting delay frequency to 1000"

    .line 24
    invoke-virtual {v2, v1, v3}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    int-to-long v1, v4

    .line 25
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    iget-object p1, p0, Le/h/a/c/n0/e;->j:Le/h/a/c/g0;

    iget-object v0, p0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 27
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "Scheduling delayed queue flush on main event loop"

    .line 28
    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
