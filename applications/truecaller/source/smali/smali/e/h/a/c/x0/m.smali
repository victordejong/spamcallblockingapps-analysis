.class public Le/h/a/c/x0/m;
.super Le/h/a/c/x0/d;
.source "SourceFile"


# instance fields
.field public final a:Le/h/a/c/x0/c;

.field public final b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final c:Le/h/a/c/w;

.field public final d:Le/h/a/c/g0;

.field public final e:Le/h/a/c/v;


# direct methods
.method public constructor <init>(Le/h/a/c/x0/c;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/w;Le/h/a/c/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/h/a/c/x0/d;-><init>()V

    .line 2
    iput-object p1, p0, Le/h/a/c/x0/m;->a:Le/h/a/c/x0/c;

    .line 3
    iput-object p2, p0, Le/h/a/c/x0/m;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 4
    invoke-virtual {p2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iput-object p1, p0, Le/h/a/c/x0/m;->d:Le/h/a/c/g0;

    .line 5
    iput-object p3, p0, Le/h/a/c/x0/m;->c:Le/h/a/c/w;

    .line 6
    iput-object p4, p0, Le/h/a/c/x0/m;->e:Le/h/a/c/v;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/x0/m;->d:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/x0/m;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Processing Product Config response..."

    .line 3
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/h/a/c/x0/m;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-boolean v1, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Le/h/a/c/x0/m;->d:Le/h/a/c/g0;

    .line 7
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "CleverTap instance is configured to analytics only, not processing Product Config response"

    .line 8
    invoke-virtual {v1, v0, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Le/h/a/c/x0/m;->a:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Le/h/a/c/x0/m;->d:Le/h/a/c/g0;

    .line 11
    iget-object p2, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string p3, "Product Config : Can\'t parse Product Config Response, JSON response object is null"

    .line 12
    invoke-virtual {p1, p2, p3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Le/h/a/c/x0/m;->b()V

    return-void

    :cond_1
    const-string v0, "pc_notifs"

    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 15
    iget-object v0, p0, Le/h/a/c/x0/m;->d:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/x0/m;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 16
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Product Config : JSON object doesn\'t contain the Product Config key"

    .line 17
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Le/h/a/c/x0/m;->b()V

    .line 19
    iget-object v0, p0, Le/h/a/c/x0/m;->a:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 20
    :cond_2
    :try_start_0
    iget-object v1, p0, Le/h/a/c/x0/m;->d:Le/h/a/c/g0;

    iget-object v2, p0, Le/h/a/c/x0/m;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 21
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "Product Config : Processing Product Config response"

    .line 22
    invoke-virtual {v1, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/h/a/c/x0/m;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    invoke-virtual {p0}, Le/h/a/c/x0/m;->b()V

    .line 25
    iget-object v0, p0, Le/h/a/c/x0/m;->d:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/x0/m;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 26
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 27
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :goto_0
    iget-object v0, p0, Le/h/a/c/x0/m;->a:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/x0/m;->c:Le/h/a/c/w;

    .line 2
    iget-boolean v0, v0, Le/h/a/c/w;->l:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/h/a/c/x0/m;->e:Le/h/a/c/v;

    .line 4
    iget-object v0, v0, Le/h/a/c/v;->g:Le/h/a/c/v0/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    iget-object v2, v0, Le/h/a/c/v0/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    iget-object v2, v0, Le/h/a/c/v0/b;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v2

    iget-object v0, v0, Le/h/a/c/v0/b;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v0}, Ln3/g0/y;->p0(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Fetch Failed"

    invoke-virtual {v2, v0, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, Le/h/a/c/x0/m;->c:Le/h/a/c/w;

    .line 8
    iput-boolean v1, v0, Le/h/a/c/w;->l:Z

    :cond_1
    return-void
.end method

.method public final c(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "kv"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/h/a/c/x0/m;->e:Le/h/a/c/v;

    .line 3
    iget-object v0, v0, Le/h/a/c/v;->g:Le/h/a/c/v0/b;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, v0, Le/h/a/c/v0/b;->h:Le/h/a/c/v0/e;

    .line 5
    iget-object v1, v1, Le/h/a/c/v0/e;->b:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 7
    :cond_0
    monitor-enter v0

    const/4 v1, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v0, p1}, Le/h/a/c/v0/b;->g(Lorg/json/JSONObject;)V

    .line 9
    iget-object p1, v0, Le/h/a/c/v0/b;->d:Le/h/a/c/z0/a;

    invoke-virtual {v0}, Le/h/a/c/v0/b;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "activated.json"

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, v0, Le/h/a/c/v0/b;->i:Ljava/util/Map;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v2, v3, v4}, Le/h/a/c/z0/a;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 10
    iget-object p1, v0, Le/h/a/c/v0/b;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v2, v0, Le/h/a/c/v0/b;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 11
    invoke-static {v2}, Ln3/g0/y;->p0(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetch file-["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Le/h/a/c/v0/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] write success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Le/h/a/c/v0/b;->i:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, v0, Le/h/a/c/v0/b;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {p1}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object p1

    invoke-virtual {p1}, Le/h/a/c/y0/b;->b()Le/h/a/c/y0/k;

    move-result-object p1

    const-string v2, "sendPCFetchSuccessCallback"

    .line 13
    new-instance v3, Le/h/a/c/v0/c;

    invoke-direct {v3, v0}, Le/h/a/c/v0/c;-><init>(Le/h/a/c/v0/b;)V

    .line 14
    iget-object v4, p1, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 15
    new-instance v5, Le/h/a/c/y0/j;

    invoke-direct {v5, p1, v2, v3}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 16
    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    iget-object p1, v0, Le/h/a/c/v0/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {v0}, Le/h/a/c/v0/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    iget-object p1, v0, Le/h/a/c/v0/b;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v2, v0, Le/h/a/c/v0/b;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v2}, Ln3/g0/y;->p0(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Product Config: fetch Failed"

    invoke-virtual {p1, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object p1, Le/h/a/c/v0/b$e;->b:Le/h/a/c/v0/b$e;

    invoke-virtual {v0, p1}, Le/h/a/c/v0/b;->h(Le/h/a/c/v0/b$e;)V

    .line 22
    iget-object p1, v0, Le/h/a/c/v0/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 23
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 24
    :cond_2
    invoke-virtual {p0}, Le/h/a/c/x0/m;->b()V

    :goto_1
    return-void
.end method
