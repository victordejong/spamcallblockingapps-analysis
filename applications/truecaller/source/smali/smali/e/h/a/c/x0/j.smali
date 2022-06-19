.class public Le/h/a/c/x0/j;
.super Le/h/a/c/x0/d;
.source "SourceFile"


# instance fields
.field public final a:Le/h/a/c/x0/c;

.field public final b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final c:Le/h/a/c/v;

.field public final d:Z

.field public final e:Le/h/a/c/g0;


# direct methods
.method public constructor <init>(Le/h/a/c/x0/c;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/v;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/h/a/c/x0/d;-><init>()V

    .line 2
    iput-object p1, p0, Le/h/a/c/x0/j;->a:Le/h/a/c/x0/c;

    .line 3
    iput-object p2, p0, Le/h/a/c/x0/j;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 4
    invoke-virtual {p2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iput-object p1, p0, Le/h/a/c/x0/j;->e:Le/h/a/c/g0;

    .line 5
    iput-object p3, p0, Le/h/a/c/x0/j;->c:Le/h/a/c/v;

    .line 6
    iput-boolean p4, p0, Le/h/a/c/x0/j;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Le/h/a/c/x0/j;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-boolean v1, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/h/a/c/x0/j;->e:Le/h/a/c/g0;

    .line 4
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "CleverTap instance is configured to analytics only, not processing inapp messages"

    .line 5
    invoke-virtual {v1, v0, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Le/h/a/c/x0/j;->a:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Le/h/a/c/x0/j;->e:Le/h/a/c/g0;

    .line 8
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "InApp: Processing response"

    .line 9
    invoke-virtual {v1, v0, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "inapp_notifs"

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Le/h/a/c/x0/j;->e:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/x0/j;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 12
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "InApp: Response JSON object doesn\'t contain the inapp key, failing"

    .line 13
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Le/h/a/c/x0/j;->a:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_1
    const-string v0, "imc"

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_2

    const-string v0, "imc"

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const-string v0, "imc"

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const-string v2, "imp"

    .line 18
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "imp"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    const-string v1, "imp"

    .line 19
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 20
    :cond_3
    iget-boolean v2, p0, Le/h/a/c/x0/j;->d:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Le/h/a/c/x0/j;->c:Le/h/a/c/v;

    .line 21
    iget-object v2, v2, Le/h/a/c/v;->a:Le/h/a/c/d0;

    if-eqz v2, :cond_4

    .line 22
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v3, "istmcd_inapp"

    .line 23
    iget-object v4, v2, Le/h/a/c/d0;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Le/h/a/c/d0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/h/a/c/d0;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3, v1}, Ln3/g0/y;->E1(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v1, "imc"

    .line 24
    iget-object v3, v2, Le/h/a/c/d0;->d:Ljava/lang/String;

    .line 25
    invoke-virtual {v2, v1, v3}, Le/h/a/c/d0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Le/h/a/c/d0;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1, v0}, Ln3/g0/y;->E1(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    monitor-exit v2

    .line 27
    iget-object v0, p0, Le/h/a/c/x0/j;->c:Le/h/a/c/v;

    .line 28
    iget-object v0, v0, Le/h/a/c/v;->a:Le/h/a/c/d0;

    .line 29
    invoke-virtual {v0, p3, p1}, Le/h/a/c/d0;->j(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 30
    monitor-exit v2

    throw v0

    .line 31
    :cond_4
    iget-object v0, p0, Le/h/a/c/x0/j;->e:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/x0/j;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 32
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "controllerManager.getInAppFCManager() is NULL, not Updating InAppFC Limits"

    .line 33
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :goto_1
    :try_start_3
    const-string v0, "inapp_notifs"

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 35
    :try_start_4
    invoke-static {p3}, Ln3/g0/y;->u0(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 36
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 37
    :try_start_5
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Le/h/a/c/x0/j;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v4, "inApp"

    const-string v5, "[]"

    .line 38
    invoke-static {p3, v3, v4, v5}, Ln3/g0/y;->B0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    .line 39
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x0

    .line 40
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ge v3, v4, :cond_5

    .line 41
    :try_start_6
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 42
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 43
    :cond_5
    :try_start_7
    iget-object v0, p0, Le/h/a/c/x0/j;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v3, "inApp"

    invoke-static {v0, v3}, Ln3/g0/y;->W1(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 46
    :try_start_8
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 47
    :try_start_9
    iget-object v1, p0, Le/h/a/c/x0/j;->e:Le/h/a/c/g0;

    iget-object v2, p0, Le/h/a/c/x0/j;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 48
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "InApp: Failed to parse the in-app notifications properly"

    .line 49
    invoke-virtual {v1, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Le/h/a/c/x0/j;->e:Le/h/a/c/g0;

    iget-object v2, p0, Le/h/a/c/x0/j;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 51
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :catchall_2
    :goto_3
    iget-object v0, p0, Le/h/a/c/x0/j;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    const-string v1, "TAG_FEATURE_IN_APPS"

    .line 55
    invoke-virtual {v0, v1}, Le/h/a/c/y0/b;->d(Ljava/lang/String;)Le/h/a/c/y0/k;

    move-result-object v0

    const-string v1, "InAppResponse#processResponse"

    .line 56
    new-instance v2, Le/h/a/c/x0/j$a;

    invoke-direct {v2, p0, p3}, Le/h/a/c/x0/j$a;-><init>(Le/h/a/c/x0/j;Landroid/content/Context;)V

    .line 57
    iget-object v3, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 58
    new-instance v4, Le/h/a/c/y0/j;

    invoke-direct {v4, v0, v1, v2}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 59
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 60
    :catch_1
    iget-object v0, p0, Le/h/a/c/x0/j;->e:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/x0/j;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 61
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "InApp: In-app key didn\'t contain a valid JSON array"

    .line 62
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Le/h/a/c/x0/j;->a:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    return-void

    .line 64
    :catchall_3
    :goto_4
    iget-object v0, p0, Le/h/a/c/x0/j;->a:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
