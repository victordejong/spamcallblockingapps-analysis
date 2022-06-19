.class public Le/h/a/c/l0/c;
.super Le/h/a/c/l0/a;
.source "SourceFile"


# instance fields
.field public a:Le/h/a/c/l0/b;

.field public final b:Le/h/a/c/m;

.field public final c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;


# direct methods
.method public constructor <init>(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/h/a/c/l0/a;-><init>()V

    .line 2
    iput-object p1, p0, Le/h/a/c/l0/c;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    iput-object p2, p0, Le/h/a/c/l0/c;->b:Le/h/a/c/m;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/l0/c;->b:Le/h/a/c/m;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Le/h/a/c/l0/c;->b(Landroid/content/Context;)Le/h/a/c/l0/b;

    move-result-object v1

    .line 3
    sget-object v2, Le/h/a/c/l0/b$b;->b:Le/h/a/c/l0/b$b;

    .line 4
    invoke-virtual {v1, v2}, Le/h/a/c/l0/b;->j(Le/h/a/c/l0/b$b;)V

    .line 5
    sget-object v2, Le/h/a/c/l0/b$b;->c:Le/h/a/c/l0/b$b;

    .line 6
    invoke-virtual {v1, v2}, Le/h/a/c/l0/b;->j(Le/h/a/c/l0/b$b;)V

    const-string v1, "IJ"

    .line 7
    invoke-static {p1, v1}, Ln3/g0/y;->v0(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 8
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :catchall_0
    :try_start_2
    iget-object v1, p0, Le/h/a/c/l0/c;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v2, "comms_first_ts"

    invoke-static {v1, v2}, Ln3/g0/y;->W1(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Ln3/g0/y;->E1(Landroid/content/Context;Ljava/lang/String;I)V

    .line 12
    iget-object v1, p0, Le/h/a/c/l0/c;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v3, "comms_last_ts"

    invoke-static {v1, v3}, Ln3/g0/y;->W1(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2}, Ln3/g0/y;->E1(Landroid/content/Context;Ljava/lang/String;I)V

    .line 13
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public b(Landroid/content/Context;)Le/h/a/c/l0/b;
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/l0/c;->a:Le/h/a/c/l0/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/h/a/c/l0/b;

    iget-object v1, p0, Le/h/a/c/l0/c;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-direct {v0, p1, v1}, Le/h/a/c/l0/b;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V

    iput-object v0, p0, Le/h/a/c/l0/c;->a:Le/h/a/c/l0/b;

    .line 3
    sget-object p1, Le/h/a/c/l0/b$b;->b:Le/h/a/c/l0/b$b;

    invoke-virtual {v0, p1}, Le/h/a/c/l0/b;->d(Le/h/a/c/l0/b$b;)V

    .line 4
    iget-object p1, p0, Le/h/a/c/l0/c;->a:Le/h/a/c/l0/b;

    sget-object v0, Le/h/a/c/l0/b$b;->c:Le/h/a/c/l0/b$b;

    invoke-virtual {p1, v0}, Le/h/a/c/l0/b;->d(Le/h/a/c/l0/b$b;)V

    .line 5
    iget-object p1, p0, Le/h/a/c/l0/c;->a:Le/h/a/c/l0/b;

    sget-object v0, Le/h/a/c/l0/b$b;->h:Le/h/a/c/l0/b$b;

    invoke-virtual {p1, v0}, Le/h/a/c/l0/b;->d(Le/h/a/c/l0/b$b;)V

    .line 6
    iget-object p1, p0, Le/h/a/c/l0/c;->a:Le/h/a/c/l0/b;

    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    sget-object v0, Le/h/a/c/l0/b$b;->f:Le/h/a/c/l0/b$b;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Le/h/a/c/l0/b;->b(Le/h/a/c/l0/b$b;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 10
    :cond_0
    :goto_0
    iget-object p1, p0, Le/h/a/c/l0/c;->a:Le/h/a/c/l0/b;

    return-object p1
.end method

.method public c(Landroid/content/Context;Le/h/a/c/l0/b$b;ILe/h/a/c/l0/d;)Le/h/a/c/l0/d;
    .locals 2

    .line 1
    iget-object v0, p0, Le/h/a/c/l0/c;->b:Le/h/a/c/m;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Le/h/a/c/l0/c;->b(Landroid/content/Context;)Le/h/a/c/l0/b;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 3
    iget-object p2, p4, Le/h/a/c/l0/d;->c:Le/h/a/c/l0/b$b;

    :cond_0
    if-eqz p4, :cond_1

    .line 4
    iget-object v1, p4, Le/h/a/c/l0/d;->b:Ljava/lang/String;

    .line 5
    iget-object p4, p4, Le/h/a/c/l0/d;->c:Le/h/a/c/l0/b$b;

    .line 6
    invoke-virtual {p1, v1, p4}, Le/h/a/c/l0/b;->c(Ljava/lang/String;Le/h/a/c/l0/b$b;)V

    .line 7
    :cond_1
    new-instance p4, Le/h/a/c/l0/d;

    invoke-direct {p4}, Le/h/a/c/l0/d;-><init>()V

    .line 8
    iput-object p2, p4, Le/h/a/c/l0/d;->c:Le/h/a/c/l0/b$b;

    .line 9
    invoke-virtual {p1, p2, p3}, Le/h/a/c/l0/b;->e(Le/h/a/c/l0/b$b;I)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 12
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 13
    iput-object p2, p4, Le/h/a/c/l0/d;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 15
    iput-object p1, p4, Le/h/a/c/l0/d;->a:Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 16
    :try_start_2
    iput-object p1, p4, Le/h/a/c/l0/d;->b:Ljava/lang/String;

    .line 17
    iput-object p1, p4, Le/h/a/c/l0/d;->a:Lorg/json/JSONArray;

    .line 18
    :cond_3
    :goto_0
    monitor-exit v0

    return-object p4

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final d(Landroid/content/Context;Lorg/json/JSONObject;Le/h/a/c/l0/b$b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/l0/c;->b:Le/h/a/c/m;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Le/h/a/c/l0/c;->b(Landroid/content/Context;)Le/h/a/c/l0/b;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2, p3}, Le/h/a/c/l0/b;->k(Lorg/json/JSONObject;Le/h/a/c/l0/b$b;)I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Le/h/a/c/l0/c;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v1, p0, Le/h/a/c/l0/c;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queued event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Le/h/a/c/l0/c;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v1, p0, Le/h/a/c/l0/c;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 8
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queued event to DB table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-virtual {p1, v1, p2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
