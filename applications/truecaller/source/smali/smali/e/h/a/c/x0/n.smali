.class public Le/h/a/c/x0/n;
.super Le/h/a/c/x0/d;
.source "SourceFile"


# instance fields
.field public final a:Le/h/a/c/k;

.field public final b:Le/h/a/c/x0/c;

.field public final c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final d:Landroid/content/Context;

.field public final e:Le/h/a/c/g0;

.field public final f:Le/h/a/c/v;

.field public final g:Le/h/a/c/l0/a;


# direct methods
.method public constructor <init>(Le/h/a/c/x0/c;Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/l0/a;Le/h/a/c/k;Le/h/a/c/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/h/a/c/x0/d;-><init>()V

    .line 2
    iput-object p1, p0, Le/h/a/c/x0/n;->b:Le/h/a/c/x0/c;

    .line 3
    iput-object p2, p0, Le/h/a/c/x0/n;->d:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Le/h/a/c/x0/n;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    invoke-virtual {p3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iput-object p1, p0, Le/h/a/c/x0/n;->e:Le/h/a/c/g0;

    .line 6
    iput-object p4, p0, Le/h/a/c/x0/n;->g:Le/h/a/c/l0/a;

    .line 7
    iput-object p5, p0, Le/h/a/c/x0/n;->a:Le/h/a/c/k;

    .line 8
    iput-object p6, p0, Le/h/a/c/x0/n;->f:Le/h/a/c/v;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V
    .locals 7

    const-string v0, "ack"

    const-string v1, "pf"

    const-string v2, "pushamp_notifs"

    .line 1
    iget-object v3, p0, Le/h/a/c/x0/n;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-boolean v4, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-eqz v4, :cond_0

    .line 3
    iget-object v0, p0, Le/h/a/c/x0/n;->e:Le/h/a/c/g0;

    .line 4
    iget-object v1, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "CleverTap instance is configured to analytics only, not processing push amp response"

    .line 5
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Le/h/a/c/x0/n;->b:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8
    iget-object v3, p0, Le/h/a/c/x0/n;->e:Le/h/a/c/g0;

    iget-object v4, p0, Le/h/a/c/x0/n;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 9
    iget-object v4, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v5, "Processing pushamp messages..."

    .line 10
    invoke-virtual {v3, v4, v5}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "list"

    .line 12
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 14
    iget-object v4, p0, Le/h/a/c/x0/n;->e:Le/h/a/c/g0;

    iget-object v5, p0, Le/h/a/c/x0/n;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 15
    iget-object v5, v5, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v6, "Handling Push payload locally"

    .line 16
    invoke-virtual {v4, v5, v6}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v3}, Le/h/a/c/x0/n;->b(Lorg/json/JSONArray;)V

    .line 18
    :cond_1
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_2

    .line 19
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 20
    iget-object v3, p0, Le/h/a/c/x0/n;->f:Le/h/a/c/v;

    .line 21
    iget-object v3, v3, Le/h/a/c/v;->m:Le/h/a/c/w0/i;

    .line 22
    invoke-virtual {v3, p3, v1}, Le/h/a/c/w0/i;->o(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 23
    :try_start_2
    iget-object v3, p0, Le/h/a/c/x0/n;->e:Le/h/a/c/g0;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_2
    :goto_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 27
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 28
    iget-object v1, p0, Le/h/a/c/x0/n;->e:Le/h/a/c/g0;

    .line 29
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 30
    iget-object v0, p0, Le/h/a/c/x0/n;->g:Le/h/a/c/l0/a;

    invoke-virtual {v0, p3}, Le/h/a/c/l0/a;->b(Landroid/content/Context;)Le/h/a/c/l0/b;

    move-result-object v0

    invoke-static {v0}, Ln3/g0/y;->w0(Le/h/a/c/l0/b;)Lorg/json/JSONArray;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 32
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 33
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 34
    :cond_3
    iget-object v0, p0, Le/h/a/c/x0/n;->e:Le/h/a/c/g0;

    .line 35
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Le/h/a/c/x0/n;->g:Le/h/a/c/l0/a;

    invoke-virtual {v0, p3}, Le/h/a/c/l0/a;->b(Landroid/content/Context;)Le/h/a/c/l0/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Le/h/a/c/l0/b;->n([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 37
    :catchall_1
    :cond_4
    iget-object v0, p0, Le/h/a/c/x0/n;->b:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public final b(Lorg/json/JSONArray;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "wzrk_ttl"

    .line 4
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "wzrk_ttl"

    const-string v4, "wzrk_ttl"

    .line 5
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 7
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Le/h/a/c/x0/n;->g:Le/h/a/c/l0/a;

    iget-object v4, p0, Le/h/a/c/x0/n;->d:Landroid/content/Context;

    invoke-virtual {v3, v4}, Le/h/a/c/l0/a;->b(Landroid/content/Context;)Le/h/a/c/l0/b;

    move-result-object v3

    const-string v4, "wzrk_pid"

    .line 11
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 12
    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    invoke-virtual {v3, v4}, Le/h/a/c/l0/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    if-nez v4, :cond_2

    .line 14
    iget-object v2, p0, Le/h/a/c/x0/n;->e:Le/h/a/c/g0;

    .line 15
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v2, p0, Le/h/a/c/x0/n;->a:Le/h/a/c/k;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v2, Le/h/a/c/w0/h$b;->a:Le/h/a/c/w0/h;

    iget-object v3, p0, Le/h/a/c/x0/n;->d:Landroid/content/Context;

    sget-object v4, Le/h/a/c/w0/g$a;->e:Le/h/a/c/w0/g$a;

    .line 18
    invoke-virtual {v4}, Le/h/a/c/w0/g$a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Le/h/a/c/w0/h;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v3

    throw p1

    .line 20
    :cond_2
    iget-object v1, p0, Le/h/a/c/x0/n;->e:Le/h/a/c/g0;

    iget-object v3, p0, Le/h/a/c/x0/n;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 21
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Push Notification already shown, ignoring local notification :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "wzrk_pid"

    .line 23
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v1, v3, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 25
    :catch_0
    iget-object p1, p0, Le/h/a/c/x0/n;->e:Le/h/a/c/g0;

    iget-object v0, p0, Le/h/a/c/x0/n;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 26
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "Error parsing push notification JSON"

    .line 27
    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
