.class public Le/h/a/c/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static g:J


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final d:Landroid/content/Context;

.field public e:Le/h/a/c/l0/b;

.field public final f:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/h/a/c/f0;->a:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/h/a/c/f0;->b:Ljava/util/HashMap;

    .line 4
    iput-object p1, p0, Le/h/a/c/f0;->d:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Le/h/a/c/f0;->f:Ljava/util/concurrent/ExecutorService;

    .line 7
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 8
    new-instance v0, Le/h/a/c/e0;

    invoke-direct {v0, p0, p1, p2}, Le/h/a/c/e0;-><init>(Le/h/a/c/f0;Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "LocalDataStore#inflateLocalProfileAsync"

    invoke-virtual {p0, p1, v0}, Le/h/a/c/f0;->j(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/h/a/c/f0;->a:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/h/a/c/f0;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4
    iget-object v1, p0, Le/h/a/c/f0;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 5
    :try_start_1
    iget-object v0, p0, Le/h/a/c/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 7
    iget-object v0, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 8
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Le/h/a/c/f0;->e:Le/h/a/c/l0/b;

    .line 10
    monitor-enter v1

    if-nez v0, :cond_0

    .line 11
    monitor-exit v1

    goto :goto_1

    :cond_0
    :try_start_2
    const-string v2, "userProfiles"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    :try_start_3
    iget-object v3, v1, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 13
    invoke-virtual {v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 14
    :catch_0
    :try_start_4
    invoke-virtual {v1}, Le/h/a/c/l0/b;->h()Le/h/a/c/g0;

    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, v1, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;

    invoke-virtual {v0}, Le/h/a/c/l0/b$a;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 17
    :goto_0
    :try_start_5
    iget-object v0, v1, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 18
    monitor-exit v1

    :goto_1
    return-void

    .line 19
    :goto_2
    :try_start_6
    iget-object v2, v1, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 20
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    .line 21
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 22
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Le/h/a/c/n0/b;
    .locals 4

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "\\|"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Le/h/a/c/n0/b;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aget-object p2, p2, v3

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {v0, v1, v2, p2, p1}, Le/h/a/c/n0/b;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method public final c(III)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "|"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d()Le/h/a/c/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-boolean v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    if-eqz v0, :cond_1

    const/16 v0, -0x3e8

    .line 3
    iget-object v1, p0, Le/h/a/c/f0;->d:Landroid/content/Context;

    invoke-virtual {p0, p1}, Le/h/a/c/f0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ln3/g0/y;->m0(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/h/a/c/f0;->d:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Ln3/g0/y;->m0(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Le/h/a/c/f0;->d:Landroid/content/Context;

    invoke-virtual {p0, p1}, Le/h/a/c/f0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Ln3/g0/y;->m0(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p0, Le/h/a/c/f0;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v2, p0, Le/h/a/c/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 3
    :catchall_0
    invoke-virtual {p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object p1

    .line 4
    iget-object v2, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    monitor-exit v1

    :goto_0
    return-object v0

    :catchall_1
    move-exception p1

    .line 8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-boolean v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/h/a/c/f0;->d:Landroid/content/Context;

    .line 4
    invoke-virtual {p0, p1}, Le/h/a/c/f0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1, p2}, Ln3/g0/y;->z0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/h/a/c/f0;->d:Landroid/content/Context;

    invoke-static {v0, p3, p1, p2}, Ln3/g0/y;->z0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Le/h/a/c/f0;->d:Landroid/content/Context;

    invoke-virtual {p0, p1}, Le/h/a/c/f0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p3, p1, p2}, Ln3/g0/y;->z0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final h(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    const-string v0, "evtName"

    .line 1
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    iget-boolean v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local_events:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "local_events"

    .line 7
    :goto_0
    invoke-static {p1, v0}, Ln3/g0/y;->v0(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v1, v1, v2}, Le/h/a/c/f0;->c(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2, v0}, Le/h/a/c/f0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0, p2, v0}, Le/h/a/c/f0;->b(Ljava/lang/String;Ljava/lang/String;)Le/h/a/c/n0/b;

    move-result-object v0

    .line 11
    iget v2, v0, Le/h/a/c/n0/b;->b:I

    .line 12
    iget v0, v0, Le/h/a/c/n0/b;->a:I

    add-int/lit8 v0, v0, 0x1

    .line 13
    invoke-virtual {p0, v2, v1, v0}, Le/h/a/c/f0;->c(III)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p2}, Le/h/a/c/f0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 17
    :catchall_0
    invoke-virtual {p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object p1

    .line 18
    iget-object p2, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 19
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :catchall_1
    :goto_1
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 3
    new-instance v1, Le/h/a/c/f0$a;

    invoke-direct {v1, p0, v0}, Le/h/a/c/f0$a;-><init>(Le/h/a/c/f0;Ljava/lang/String;)V

    const-string v0, "LocalDataStore#persistLocalProfileAsync"

    invoke-virtual {p0, v0, v1}, Le/h/a/c/f0;->j(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget-wide v2, Le/h/a/c/f0;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Le/h/a/c/f0;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Le/h/a/c/f0$b;

    invoke-direct {v1, p0, p1, p2}, Le/h/a/c/f0$b;-><init>(Le/h/a/c/f0;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 4
    :catchall_0
    invoke-virtual {p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object p1

    .line 5
    iget-object p2, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 6
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/Boolean;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/h/a/c/f0;->b:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    iget-object v1, p0, Le/h/a/c/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3
    :catchall_0
    :try_start_2
    invoke-virtual {p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object v1

    .line 4
    iget-object v2, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Le/h/a/c/f0;->s(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 10
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 11
    invoke-virtual {p0}, Le/h/a/c/f0;->i()V

    :cond_2
    return-void
.end method

.method public l(Lorg/json/JSONObject;)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-boolean v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "dsync"

    if-nez v0, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void

    :cond_0
    const-string v0, "type"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "event"

    .line 5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const-string v3, "evtName"

    .line 6
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "App Launched"

    .line 7
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object v0

    .line 9
    iget-object v1, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 10
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "Local cache needs to be updated (triggered by App Launched)"

    .line 11
    invoke-virtual {v0, v1, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void

    :cond_1
    const-string v3, "profile"

    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object p1

    .line 16
    iget-object v0, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 17
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "Local cache needs to be updated (profile event)"

    .line 18
    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v0, v5

    const/16 v3, 0x4b0

    const-string v5, "local_cache_expires_in"

    .line 20
    invoke-virtual {p0, v5, v3}, Le/h/a/c/f0;->e(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "local_cache_last_update"

    .line 21
    invoke-virtual {p0, v5, v0}, Le/h/a/c/f0;->e(Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v5, v3

    if-ge v5, v0, :cond_3

    .line 22
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object p1

    .line 24
    iget-object v0, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 25
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "Local cache needs to be updated"

    .line 26
    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 28
    invoke-virtual {p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object p1

    .line 29
    iget-object v0, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 30
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "Local cache doesn\'t need to be updated"

    .line 31
    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    invoke-virtual {p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object p1

    .line 33
    iget-object v0, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 34
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;Z)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/h/a/c/f0;->b:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v1, p0, Le/h/a/c/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Le/h/a/c/f0;->s(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 7
    invoke-virtual {p0}, Le/h/a/c/f0;->i()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final n(Lorg/json/JSONObject;Ljava/lang/Boolean;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, p2, v3}, Le/h/a/c/f0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;Z)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/h/a/c/f0;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 6
    :catchall_0
    invoke-virtual {p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object p1

    .line 7
    iget-object p2, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 8
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public final o(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ":"

    .line 1
    invoke-static {p1, v0}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final p(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "newValue"

    const-string v2, "oldValue"

    .line 1
    :try_start_0
    iget-object v4, v0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-boolean v4, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    if-nez v4, :cond_0

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "local_events:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 4
    iget-object v5, v5, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "local_events"

    :goto_0
    move-object/from16 v5, p1

    .line 6
    invoke-static {v5, v4}, Ln3/g0/y;->v0(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 7
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 8
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const/4 v7, 0x0

    .line 9
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 10
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 11
    invoke-virtual {v0, v9, v9, v9}, Le/h/a/c/f0;->c(III)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8, v10, v4}, Le/h/a/c/f0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 12
    invoke-virtual {v0, v8, v10}, Le/h/a/c/f0;->b(Ljava/lang/String;Ljava/lang/String;)Le/h/a/c/n0/b;

    move-result-object v10

    move-object/from16 v11, p2

    .line 13
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 14
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v14, 0x3

    if-ge v13, v14, :cond_1

    goto/16 :goto_2

    .line 15
    :cond_1
    :try_start_1
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    const/4 v13, 0x1

    .line 16
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    const/4 v15, 0x2

    .line 17
    invoke-virtual {v12, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :try_start_2
    iget v15, v10, Le/h/a/c/n0/b;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-string v13, " from upstream"

    if-le v9, v15, :cond_3

    .line 19
    :try_start_3
    invoke-virtual {v0, v8}, Le/h/a/c/f0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v14, v3, v9}, Le/h/a/c/f0;->c(III)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v15, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    invoke-virtual/range {p0 .. p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object v3

    .line 21
    iget-object v14, v0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 22
    iget-object v14, v14, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 23
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    const-string v4, "Accepted update for event "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v7, :cond_2

    .line 24
    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v7, v3

    .line 25
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 26
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 27
    iget v13, v10, Le/h/a/c/n0/b;->a:I

    .line 28
    invoke-virtual {v4, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    invoke-virtual {v4, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "count"

    .line 30
    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 32
    iget v9, v10, Le/h/a/c/n0/b;->b:I

    .line 33
    invoke-virtual {v4, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v9, 0x1

    .line 34
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-virtual {v4, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "firstTime"

    .line 35
    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 37
    iget v9, v10, Le/h/a/c/n0/b;->c:I

    .line 38
    invoke-virtual {v4, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v9, 0x2

    .line 39
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-virtual {v4, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "lastTime"

    .line 40
    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 42
    :catchall_0
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object v3

    .line 43
    iget-object v4, v0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 44
    iget-object v4, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 45
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    move-object/from16 v16, v4

    .line 46
    invoke-virtual/range {p0 .. p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object v3

    .line 47
    iget-object v4, v0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 48
    iget-object v4, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 49
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rejected update for event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-object/from16 v16, v4

    .line 50
    invoke-virtual/range {p0 .. p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object v3

    .line 51
    iget-object v4, v0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 52
    iget-object v4, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 53
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse upstream event message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v12}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 55
    invoke-virtual {v3, v4, v8}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_2
    move-object/from16 v16, v4

    .line 56
    invoke-virtual/range {p0 .. p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object v3

    .line 57
    iget-object v4, v0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 58
    iget-object v4, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v8, "Corrupted upstream event detail"

    .line 59
    invoke-virtual {v3, v4, v8}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_3
    move-object/from16 v4, v16

    goto/16 :goto_1

    .line 60
    :cond_5
    :try_start_6
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    return-object v7

    .line 61
    :catchall_3
    invoke-virtual/range {p0 .. p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object v1

    .line 62
    iget-object v2, v0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 63
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 64
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    return-object v1
.end method

.method public final q(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 16

    move-object/from16 v1, p0

    .line 1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x0

    .line 3
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    .line 5
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 6
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v0, :cond_11

    .line 7
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-gtz v6, :cond_1

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    div-long/2addr v10, v8

    long-to-int v10, v10

    goto :goto_1

    :cond_1
    move v10, v6

    :goto_1
    const/4 v11, 0x0

    if-nez v0, :cond_2

    .line 9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_2

    .line 10
    :cond_2
    iget-object v12, v1, Le/h/a/c/f0;->a:Ljava/util/HashMap;

    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 11
    :try_start_2
    iget-object v13, v1, Le/h/a/c/f0;->a:Ljava/util/HashMap;

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v12, v13

    :goto_2
    const/4 v13, 0x1

    if-eqz v12, :cond_3

    .line 12
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v12, v10, :cond_3

    move v10, v13

    goto :goto_3

    :cond_3
    move v10, v11

    :goto_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 13
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 14
    invoke-virtual/range {p0 .. p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object v10

    .line 15
    iget-object v11, v1, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 16
    iget-object v11, v11, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 17
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Rejecting upstream value for key "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because our local cache prohibits it"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {v1, v0}, Le/h/a/c/f0;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v14, p1

    .line 19
    :try_start_4
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_5

    move v15, v13

    goto :goto_5

    .line 20
    :cond_5
    instance-of v15, v12, Ljava/lang/String;

    if-eqz v15, :cond_6

    .line 21
    move-object v15, v12

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_6

    move v15, v13

    goto :goto_4

    :cond_6
    move v15, v11

    .line 22
    :goto_4
    instance-of v8, v12, Lorg/json/JSONArray;

    if-eqz v8, :cond_8

    .line 23
    move-object v8, v12

    check-cast v8, Lorg/json/JSONArray;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-gtz v8, :cond_7

    move v11, v13

    :cond_7
    move v15, v11

    :cond_8
    :goto_5
    if-eqz v15, :cond_9

    move-object v12, v4

    :cond_9
    const-string v8, ""

    if-nez v12, :cond_a

    move-object v9, v8

    goto :goto_6

    .line 24
    :cond_a
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_6
    if-nez v10, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 25
    :goto_7
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 26
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-nez v8, :cond_10

    if-eqz v12, :cond_c

    .line 27
    :try_start_5
    invoke-virtual {v5, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    .line 28
    :cond_c
    invoke-virtual {v1, v0, v2, v13}, Le/h/a/c/f0;->k(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    :goto_8
    if-nez v10, :cond_d

    if-nez v12, :cond_d

    goto :goto_a

    .line 29
    :cond_d
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v12, :cond_e

    goto :goto_9

    :cond_e
    const/4 v9, -0x1

    .line 30
    :try_start_6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_9
    const-string v9, "newValue"

    .line 31
    invoke-virtual {v8, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v10, :cond_f

    const-string v9, "oldValue"

    .line 32
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_b

    .line 33
    :catchall_0
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object v8

    .line 34
    iget-object v9, v1, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 35
    iget-object v9, v9, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 36
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    move-object v8, v4

    :cond_f
    :goto_b
    if-eqz v8, :cond_10

    .line 37
    invoke-virtual {v3, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_d

    .line 38
    :catchall_1
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object v0

    .line 39
    iget-object v8, v1, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 40
    iget-object v8, v8, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 41
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object/from16 v14, p1

    .line 42
    :goto_c
    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_3
    move-exception v0

    goto :goto_c

    :catchall_4
    move-object/from16 v14, p1

    .line 43
    :catchall_5
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object v0

    .line 44
    iget-object v8, v1, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 45
    iget-object v8, v8, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 46
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    :goto_d
    const-wide/16 v8, 0x3e8

    goto/16 :goto_0

    .line 47
    :cond_11
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 48
    invoke-virtual {v1, v5, v2}, Le/h/a/c/f0;->n(Lorg/json/JSONObject;Ljava/lang/Boolean;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :cond_12
    return-object v3

    .line 49
    :catchall_6
    invoke-virtual/range {p0 .. p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object v0

    .line 50
    iget-object v2, v1, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 51
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 52
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4
.end method

.method public r(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 10

    const-string v0, "expires_in"

    const-string v1, "evpr"

    const-string v2, "_custom"

    const-string v3, "events"

    const-string v4, "profile"

    .line 1
    :try_start_0
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 3
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 7
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 9
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 12
    :catchall_0
    :try_start_2
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-object v8, v5

    :goto_1
    if-eqz v8, :cond_1

    .line 13
    :try_start_3
    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p0, v1}, Le/h/a/c/f0;->q(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v5

    .line 15
    :goto_2
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Le/h/a/c/f0;->p(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 17
    :cond_4
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 18
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "local_cache_expires_in"

    .line 19
    invoke-virtual {p0, v0}, Le/h/a/c/f0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Ln3/g0/y;->E1(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_5
    const-string p2, "local_cache_last_update"

    .line 20
    invoke-virtual {p0, p2}, Le/h/a/c/f0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v0, v6

    .line 22
    invoke-static {p1, p2, v0}, Ln3/g0/y;->E1(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz v1, :cond_6

    .line 23
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_6

    move v2, p2

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v5, :cond_7

    .line 24
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_7

    goto :goto_4

    :cond_7
    move p2, v0

    :goto_4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    :cond_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 27
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 28
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 30
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    :cond_a
    :try_start_4
    invoke-static {p1}, Le/h/a/c/p;->h(Landroid/content/Context;)Le/h/a/c/p;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 32
    iget-object p1, p1, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 33
    iget-object p1, p1, Le/h/a/c/x;->f:Le/h/a/c/k;

    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    .line 35
    :catchall_1
    invoke-virtual {p0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object p1

    .line 36
    iget-object p2, p0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 37
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :catchall_2
    :cond_b
    :goto_5
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/h/a/c/f0;->a:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/h/a/c/f0;->a:Ljava/util/HashMap;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    const-string v3, "local_cache_expires_in"

    const/4 v4, 0x0

    .line 4
    invoke-virtual {p0, v3, v4}, Le/h/a/c/f0;->e(Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v2, v3

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
