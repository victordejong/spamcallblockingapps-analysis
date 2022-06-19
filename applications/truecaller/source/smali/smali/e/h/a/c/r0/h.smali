.class public Le/h/a/c/r0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/h/a/c/l0/b;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/h/a/c/r0/m;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Le/h/a/c/m;

.field public final g:Le/h/a/c/k;

.field public final h:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;


# direct methods
.method public constructor <init>(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;Le/h/a/c/l0/b;Le/h/a/c/m;Le/h/a/c/k;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/h/a/c/r0/h;->c:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Le/h/a/c/r0/h;->d:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Le/h/a/c/r0/h;->a:Le/h/a/c/l0/b;

    .line 5
    invoke-virtual {p3, p2}, Le/h/a/c/l0/b;->i(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Le/h/a/c/r0/h;->b:Ljava/util/ArrayList;

    .line 6
    iput-boolean p6, p0, Le/h/a/c/r0/h;->e:Z

    .line 7
    iput-object p4, p0, Le/h/a/c/r0/h;->f:Le/h/a/c/m;

    .line 8
    iput-object p5, p0, Le/h/a/c/r0/h;->g:Le/h/a/c/k;

    .line 9
    iput-object p1, p0, Le/h/a/c/r0/h;->h:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Le/h/a/c/r0/h;->c(Ljava/lang/String;)Le/h/a/c/r0/m;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Le/h/a/c/r0/h;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Le/h/a/c/r0/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Le/h/a/c/r0/h;->h:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    const-string v1, "RunDeleteMessage"

    .line 6
    new-instance v2, Le/h/a/c/r0/h$a;

    invoke-direct {v2, p0, p1}, Le/h/a/c/r0/h$a;-><init>(Le/h/a/c/r0/h;Ljava/lang/String;)V

    .line 7
    iget-object p1, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 8
    new-instance v3, Le/h/a/c/y0/j;

    invoke-direct {v3, v0, v1, v2}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 9
    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Le/h/a/c/r0/h;->c(Ljava/lang/String;)Le/h/a/c/r0/m;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Le/h/a/c/r0/h;->c:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 3
    :try_start_0
    iput-boolean v2, v0, Le/h/a/c/r0/m;->f:Z

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Le/h/a/c/r0/h;->h:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    const-string v1, "RunMarkMessageRead"

    .line 6
    new-instance v3, Le/h/a/c/r0/h$b;

    invoke-direct {v3, p0, p1}, Le/h/a/c/r0/h$b;-><init>(Le/h/a/c/r0/h;Ljava/lang/String;)V

    .line 7
    iget-object p1, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 8
    new-instance v4, Le/h/a/c/y0/j;

    invoke-direct {v4, v0, v1, v3}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 9
    invoke-interface {p1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v2

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Ljava/lang/String;)Le/h/a/c/r0/m;
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/r0/h;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/h/a/c/r0/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/h/a/c/r0/m;

    .line 3
    iget-object v3, v2, Le/h/a/c/r0/m;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    monitor-exit v0

    return-object v2

    .line 6
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Le/h/a/c/r0/h;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Le/h/a/c/r0/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/h/a/c/r0/m;

    .line 4
    iget-boolean v4, p0, Le/h/a/c/r0/h;->e:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Le/h/a/c/r0/m;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v4, v3, Le/h/a/c/r0/m;->c:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    cmp-long v4, v6, v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 10
    monitor-exit v1

    return-void

    .line 11
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/h/a/c/r0/m;

    .line 12
    iget-object v2, v2, Le/h/a/c/r0/m;->d:Ljava/lang/String;

    .line 13
    invoke-virtual {p0, v2}, Le/h/a/c/r0/h;->a(Ljava/lang/String;)Z

    goto :goto_2

    .line 14
    :cond_5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Lorg/json/JSONArray;)Z
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Le/h/a/c/r0/h;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Le/h/a/c/r0/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Le/h/a/c/r0/m;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-boolean v4, p0, Le/h/a/c/r0/h;->e:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Le/h/a/c/r0/m;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 8
    iget-object p1, p0, Le/h/a/c/r0/h;->a:Le/h/a/c/l0/b;

    .line 9
    monitor-enter p1

    .line 10
    :try_start_1
    invoke-virtual {p1}, Le/h/a/c/l0/b;->a()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v1, :cond_3

    .line 11
    monitor-exit p1

    goto/16 :goto_5

    .line 12
    :cond_3
    :try_start_2
    iget-object v1, p1, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/h/a/c/r0/m;

    .line 14
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_id"

    .line 15
    iget-object v5, v2, Le/h/a/c/r0/m;->d:Ljava/lang/String;

    .line 16
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "data"

    .line 17
    iget-object v5, v2, Le/h/a/c/r0/m;->e:Lorg/json/JSONObject;

    .line 18
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "wzrkParams"

    .line 19
    iget-object v5, v2, Le/h/a/c/r0/m;->i:Lorg/json/JSONObject;

    .line 20
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "campaignId"

    .line 21
    iget-object v5, v2, Le/h/a/c/r0/m;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "tags"

    .line 23
    iget-object v5, v2, Le/h/a/c/r0/m;->g:Ljava/util/List;

    const-string v6, ","

    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "isRead"

    .line 25
    iget-boolean v5, v2, Le/h/a/c/r0/m;->f:Z

    .line 26
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "expires"

    .line 27
    iget-wide v5, v2, Le/h/a/c/r0/m;->c:J

    .line 28
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "created_at"

    .line 29
    iget-wide v5, v2, Le/h/a/c/r0/m;->b:J

    .line 30
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "messageUser"

    .line 31
    iget-object v2, v2, Le/h/a/c/r0/m;->h:Ljava/lang/String;

    .line 32
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "inboxMessages"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 33
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 34
    :cond_4
    :goto_3
    :try_start_3
    iget-object v0, p1, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    .line 35
    :catch_1
    :try_start_4
    invoke-virtual {p1}, Le/h/a/c/l0/b;->h()Le/h/a/c/g0;

    move-result-object v0

    .line 36
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 37
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 38
    monitor-exit p1

    .line 39
    :goto_5
    iget-object v0, p0, Le/h/a/c/r0/h;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_6
    iget-object p1, p0, Le/h/a/c/r0/h;->a:Le/h/a/c/l0/b;

    iget-object v1, p0, Le/h/a/c/r0/h;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Le/h/a/c/l0/b;->i(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Le/h/a/c/r0/h;->b:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p0}, Le/h/a/c/r0/h;->d()V

    .line 42
    monitor-exit v0

    const/4 v1, 0x1

    goto :goto_7

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    .line 43
    :goto_6
    :try_start_7
    iget-object v1, p1, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 44
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_5
    :goto_7
    return v1
.end method
