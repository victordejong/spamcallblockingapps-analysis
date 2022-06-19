.class public Le/h/a/c/x0/h;
.super Le/h/a/c/x0/d;
.source "SourceFile"


# instance fields
.field public final a:Le/h/a/c/x0/c;

.field public final b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final c:Le/h/a/c/g0;

.field public final d:Le/h/a/c/v;


# direct methods
.method public constructor <init>(Le/h/a/c/x0/c;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/h/a/c/x0/d;-><init>()V

    .line 2
    iput-object p1, p0, Le/h/a/c/x0/h;->a:Le/h/a/c/x0/c;

    .line 3
    iput-object p2, p0, Le/h/a/c/x0/h;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 4
    invoke-virtual {p2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iput-object p1, p0, Le/h/a/c/x0/h;->c:Le/h/a/c/g0;

    .line 5
    iput-object p3, p0, Le/h/a/c/x0/h;->d:Le/h/a/c/v;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/x0/h;->c:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/x0/h;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Processing Feature Flags response..."

    .line 3
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/h/a/c/x0/h;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-boolean v1, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Le/h/a/c/x0/h;->c:Le/h/a/c/g0;

    .line 7
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "CleverTap instance is configured to analytics only, not processing Feature Flags response"

    .line 8
    invoke-virtual {v1, v0, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Le/h/a/c/x0/h;->a:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Le/h/a/c/x0/h;->c:Le/h/a/c/g0;

    .line 11
    iget-object p2, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string p3, "Feature Flag : Can\'t parse Feature Flags Response, JSON response object is null"

    .line 12
    invoke-virtual {p1, p2, p3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "ff_notifs"

    .line 13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    iget-object v0, p0, Le/h/a/c/x0/h;->c:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/x0/h;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 15
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Feature Flag : JSON object doesn\'t contain the Feature Flags key"

    .line 16
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Le/h/a/c/x0/h;->a:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 18
    :cond_2
    :try_start_0
    iget-object v1, p0, Le/h/a/c/x0/h;->c:Le/h/a/c/g0;

    iget-object v2, p0, Le/h/a/c/x0/h;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 19
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "Feature Flag : Processing Feature Flags response"

    .line 20
    invoke-virtual {v1, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/h/a/c/x0/h;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    iget-object v0, p0, Le/h/a/c/x0/h;->c:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/x0/h;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 23
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 24
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :goto_0
    iget-object v0, p0, Le/h/a/c/x0/h;->a:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "kv"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/h/a/c/x0/h;->d:Le/h/a/c/v;

    .line 3
    iget-object v0, v0, Le/h/a/c/v;->d:Le/h/a/c/o0/b;

    if-eqz v0, :cond_1

    .line 4
    monitor-enter v0

    :try_start_0
    const-string v1, "kv"

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 6
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 7
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 8
    iget-object v4, v0, Le/h/a/c/o0/b;->g:Ljava/util/Map;

    const-string v5, "n"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "v"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Le/h/a/c/o0/b;->d()Le/h/a/c/g0;

    move-result-object v1

    invoke-virtual {v0}, Le/h/a/c/o0/b;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating feature flags..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Le/h/a/c/o0/b;->g:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 10
    :try_start_2
    invoke-virtual {v0}, Le/h/a/c/o0/b;->d()Le/h/a/c/g0;

    move-result-object v2

    invoke-virtual {v0}, Le/h/a/c/o0/b;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing Feature Flag array "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_1
    invoke-virtual {v0, p1}, Le/h/a/c/o0/b;->a(Lorg/json/JSONObject;)V

    .line 12
    iget-object p1, v0, Le/h/a/c/o0/b;->e:Le/h/a/c/k;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 14
    :cond_1
    iget-object p1, p0, Le/h/a/c/x0/h;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v0, p0, Le/h/a/c/x0/h;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 15
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "Feature Flag : Can\'t parse feature flags, CTFeatureFlagsController is null"

    .line 16
    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
