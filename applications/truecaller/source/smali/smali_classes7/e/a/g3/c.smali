.class public final Le/a/g3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g3/b;


# instance fields
.field public a:Le/h/a/c/p;

.field public final b:Landroid/content/Context;

.field public final c:Le/a/b0/e/f;

.field public final d:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/b0/e/f;Le/a/b0/o/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g3/c;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/g3/c;->c:Le/a/b0/e/f;

    iput-object p3, p0, Le/a/g3/c;->d:Le/a/b0/o/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "pushId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/g3/c;->e()Le/h/a/c/p;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 3
    iget-object v0, v0, Le/h/a/c/x;->k:Le/h/a/c/w0/i;

    .line 4
    sget-object v2, Le/h/a/c/w0/g$a;->e:Le/h/a/c/w0/g$a;

    invoke-virtual {v0, p1, v2, v1}, Le/h/a/c/w0/i;->k(Ljava/lang/String;Le/h/a/c/w0/g$a;Z)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "pushId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/g3/c;->e()Le/h/a/c/p;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 3
    iget-object v0, v0, Le/h/a/c/x;->k:Le/h/a/c/w0/i;

    .line 4
    sget-object v2, Le/h/a/c/w0/g$a;->g:Le/h/a/c/w0/g$a;

    invoke-virtual {v0, p1, v2, v1}, Le/h/a/c/w0/i;->k(Ljava/lang/String;Le/h/a/c/w0/g$a;Z)V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "profile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/g3/c;->e()Le/h/a/c/p;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 4
    iget-object v0, v0, Le/h/a/c/x;->i:Le/h/a/c/t0/e;

    .line 5
    iget-object v1, v0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 6
    iget-boolean v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->k:Z

    .line 7
    :try_start_0
    iget-object v1, v0, Le/h/a/c/t0/e;->k:Le/h/a/c/b0;

    invoke-virtual {v1}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 8
    :cond_1
    new-instance v2, Le/h/a/c/t0/f;

    iget-object v3, v0, Le/h/a/c/t0/e;->g:Landroid/content/Context;

    iget-object v4, v0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    iget-object v5, v0, Le/h/a/c/t0/e;->k:Le/h/a/c/b0;

    invoke-direct {v2, v3, v4, v5}, Le/h/a/c/t0/f;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/b0;)V

    .line 9
    iget-object v6, v0, Le/h/a/c/t0/e;->o:Le/h/a/c/a1/b;

    .line 10
    invoke-static {v3, v4, v5, v6}, Ln3/g0/y;->x0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/b0;Le/h/a/c/a1/b;)Le/h/a/c/t0/b;

    move-result-object v3

    .line 11
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :catchall_0
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 12
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 13
    invoke-interface {v3, v7}, Le/h/a/c/t0/b;->b(Ljava/lang/String;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v11, :cond_2

    if-eqz v10, :cond_3

    .line 14
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_3
    move-object v10, v9

    :goto_1
    if-eqz v10, :cond_2

    .line 15
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v11, :cond_2

    .line 16
    :try_start_2
    invoke-virtual {v2, v7, v10}, Le/h/a/c/t0/f;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Le/h/a/c/t0/e;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_4

    move v6, v8

    goto :goto_2

    :catchall_1
    :cond_4
    move v6, v8

    goto :goto_0

    .line 17
    :cond_5
    :goto_2
    :try_start_3
    iget-object v3, v0, Le/h/a/c/t0/e;->k:Le/h/a/c/b0;

    invoke-virtual {v3}, Le/h/a/c/b0;->o()Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v6, :cond_6

    .line 18
    invoke-virtual {v2}, Le/h/a/c/t0/f;->f()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 19
    :cond_6
    iget-object v1, v0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v2, v0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 20
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "onUserLogin: no identifier provided or device is anonymous, pushing on current user profile"

    .line 21
    invoke-virtual {v1, v2, v3}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v1, v0, Le/h/a/c/t0/e;->b:Le/h/a/c/f;

    invoke-virtual {v1, p1}, Le/h/a/c/f;->o(Ljava/util/Map;)V

    goto/16 :goto_4

    .line 23
    :cond_7
    iget-object v2, v0, Le/h/a/c/t0/e;->a:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 24
    iget-object v2, v0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v2

    iget-object v3, v0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 25
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUserLogin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " maps to current device id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pushing on current profile"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {v2, v3, v1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v1, v0, Le/h/a/c/t0/e;->b:Le/h/a/c/f;

    invoke-virtual {v1, p1}, Le/h/a/c/f;->o(Ljava/util/Map;)V

    goto/16 :goto_4

    .line 30
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    sget-object v2, Le/h/a/c/t0/e;->q:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 32
    :try_start_4
    iget-object v3, v0, Le/h/a/c/t0/e;->p:Ljava/lang/String;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v5, v8

    :cond_9
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v5, :cond_a

    .line 33
    :try_start_5
    iget-object p1, v0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v2, v0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 34
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already processing onUserLogin for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 36
    :cond_a
    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 37
    :try_start_6
    iput-object v1, v0, Le/h/a/c/t0/e;->p:Ljava/lang/String;

    .line 38
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 39
    :try_start_7
    iget-object v2, v0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v2

    iget-object v3, v0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 40
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUserLogin: queuing reset profile for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with Cached GUID "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v1, v0, Le/h/a/c/t0/e;->a:Ljava/lang/String;

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    const-string v1, "NULL"

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v2, v3, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, v0, Le/h/a/c/t0/e;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v9}, Le/h/a/c/t0/e;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 45
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_3
    move-exception p1

    .line 46
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 47
    :catchall_4
    iget-object p1, v0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v0, v0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 48
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_4
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/g3/c;->f()V

    .line 2
    iget-object v0, p0, Le/a/g3/c;->a:Le/h/a/c/p;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 4
    iget-object v0, v0, Le/h/a/c/x;->d:Le/h/a/c/f;

    .line 5
    invoke-virtual {v0, p1}, Le/h/a/c/f;->m(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized e()Le/h/a/c/p;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/g3/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Le/a/b0/g/a;

    .line 2
    iget-object v1, p0, Le/a/g3/c;->a:Le/h/a/c/p;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Le/a/b0/g/a;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/g3/c;->d:Le/a/b0/o/a;

    const-string v1, "featureCleverTap"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Le/a/g3/c;->f()V

    .line 4
    iget-object v0, p0, Le/a/g3/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Le/h/a/c/d;->a(Landroid/app/Application;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.app.Application"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Le/a/g3/c;->a:Le/h/a/c/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 6
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/g3/c;->c:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "WRZ-586-7R5Z"

    goto :goto_0

    :cond_0
    const-string v1, "8R5-874-9R5Z"

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "6b5-120"

    goto :goto_1

    :cond_1
    const-string v2, "4ab-52b"

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "eu1"

    goto :goto_2

    :cond_2
    const-string v0, "in"

    .line 2
    :goto_2
    sget-object v3, Le/h/a/c/p;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    if-eqz v3, :cond_3

    goto :goto_3

    .line 3
    :cond_3
    sput-object v1, Le/h/a/c/h0;->b:Ljava/lang/String;

    .line 4
    sput-object v2, Le/h/a/c/h0;->c:Ljava/lang/String;

    .line 5
    sput-object v0, Le/h/a/c/h0;->d:Ljava/lang/String;

    :goto_3
    const/4 v0, -0x1

    .line 6
    sput v0, Le/h/a/c/p;->c:I

    .line 7
    iget-object v0, p0, Le/a/g3/c;->b:Landroid/content/Context;

    invoke-static {v0}, Le/h/a/c/p;->h(Landroid/content/Context;)Le/h/a/c/p;

    move-result-object v0

    iput-object v0, p0, Le/a/g3/c;->a:Le/h/a/c/p;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 8
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 9
    iget-object v0, v0, Le/h/a/c/x;->b:Le/h/a/c/b0;

    .line 10
    iput-boolean v1, v0, Le/h/a/c/b0;->g:Z

    .line 11
    iget-object v1, v0, Le/h/a/c/b0;->e:Landroid/content/Context;

    iget-object v2, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v3, "NetworkInfo"

    invoke-static {v2, v3}, Ln3/g0/y;->W1(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v0, Le/h/a/c/b0;->g:Z

    .line 12
    invoke-static {v1}, Ln3/g0/y;->u0(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 14
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :catchall_0
    iget-object v1, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v2, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 16
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "Device Network Information reporting set to "

    .line 17
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, v0, Le/h/a/c/b0;->g:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_4
    new-instance v0, Le/h/a/b/c;

    invoke-direct {v0}, Le/h/a/b/c;-><init>()V

    .line 19
    sput-object v0, Le/h/a/c/p;->f:Le/h/a/c/s0/c;

    return-void
.end method

.method public init()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/g3/c;->e()Le/h/a/c/p;

    return-void
.end method

.method public initWithoutActivityLifeCycleCallBacks()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/g3/c;->f()V

    return-void
.end method

.method public push(Ljava/lang/String;)V
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Le/a/g3/c;->e()Le/h/a/c/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/h/a/c/p;->o(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public push(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventActions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/g3/c;->e()Le/h/a/c/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Le/h/a/c/p;->p(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public updateProfile(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "profileUpdate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/g3/c;->e()Le/h/a/c/p;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 4
    iget-object v0, v0, Le/h/a/c/x;->d:Le/h/a/c/f;

    .line 5
    invoke-virtual {v0, p1}, Le/h/a/c/f;->o(Ljava/util/Map;)V

    :cond_1
    return-void
.end method
