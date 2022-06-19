.class public Le/h/a/c/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Le/h/a/c/f0;


# direct methods
.method public constructor <init>(Le/h/a/c/f0;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/e0;->c:Le/h/a/c/f0;

    iput-object p2, p0, Le/h/a/c/e0;->a:Landroid/content/Context;

    iput-object p3, p0, Le/h/a/c/e0;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/h/a/c/e0;->c:Le/h/a/c/f0;

    .line 2
    iget-object v1, v0, Le/h/a/c/f0;->e:Le/h/a/c/l0/b;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Le/h/a/c/l0/b;

    iget-object v2, p0, Le/h/a/c/e0;->a:Landroid/content/Context;

    iget-object v3, p0, Le/h/a/c/e0;->c:Le/h/a/c/f0;

    .line 4
    iget-object v3, v3, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    invoke-direct {v1, v2, v3}, Le/h/a/c/l0/b;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V

    .line 6
    iput-object v1, v0, Le/h/a/c/f0;->e:Le/h/a/c/l0/b;

    .line 7
    :cond_0
    iget-object v0, p0, Le/h/a/c/e0;->c:Le/h/a/c/f0;

    .line 8
    iget-object v0, v0, Le/h/a/c/f0;->b:Ljava/util/HashMap;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Le/h/a/c/e0;->c:Le/h/a/c/f0;

    .line 11
    iget-object v1, v1, Le/h/a/c/f0;->e:Le/h/a/c/l0/b;

    .line 12
    iget-object v2, p0, Le/h/a/c/e0;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Le/h/a/c/l0/b;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 14
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 15
    :catch_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    .line 16
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 18
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_2

    .line 19
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 20
    iget-object v5, p0, Le/h/a/c/e0;->c:Le/h/a/c/f0;

    .line 21
    iget-object v5, v5, Le/h/a/c/f0;->b:Ljava/util/HashMap;

    .line 22
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_2
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_3

    .line 24
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 25
    iget-object v5, p0, Le/h/a/c/e0;->c:Le/h/a/c/f0;

    .line 26
    iget-object v5, v5, Le/h/a/c/f0;->b:Ljava/util/HashMap;

    .line 27
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_3
    iget-object v5, p0, Le/h/a/c/e0;->c:Le/h/a/c/f0;

    .line 29
    iget-object v5, v5, Le/h/a/c/f0;->b:Ljava/util/HashMap;

    .line 30
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 31
    :cond_4
    :try_start_4
    iget-object v1, p0, Le/h/a/c/e0;->c:Le/h/a/c/f0;

    .line 32
    invoke-virtual {v1}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object v1

    .line 33
    iget-object v2, p0, Le/h/a/c/e0;->c:Le/h/a/c/f0;

    .line 34
    iget-object v2, v2, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 35
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local Data Store - Inflated local profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le/h/a/c/e0;->c:Le/h/a/c/f0;

    .line 37
    iget-object v4, v4, Le/h/a/c/f0;->b:Ljava/util/HashMap;

    .line 38
    invoke-virtual {v4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {v1, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 40
    :catchall_0
    :try_start_5
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
