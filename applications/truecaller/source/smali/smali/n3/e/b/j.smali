.class public final synthetic Ln3/e/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/b/p0;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/util/concurrent/Executor;

.field public final synthetic d:Ln3/h/a/b;

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/p0;Landroid/content/Context;Ljava/util/concurrent/Executor;Ln3/h/a/b;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/j;->a:Ln3/e/b/p0;

    iput-object p2, p0, Ln3/e/b/j;->b:Landroid/content/Context;

    iput-object p3, p0, Ln3/e/b/j;->c:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Ln3/e/b/j;->d:Ln3/h/a/b;

    iput-wide p5, p0, Ln3/e/b/j;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v1, p0, Ln3/e/b/j;->a:Ln3/e/b/p0;

    iget-object v0, p0, Ln3/e/b/j;->b:Landroid/content/Context;

    iget-object v2, p0, Ln3/e/b/j;->c:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Ln3/e/b/j;->d:Ln3/h/a/b;

    iget-wide v3, p0, Ln3/e/b/j;->e:J

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    .line 2
    :try_start_0
    invoke-static {v0}, Ln3/e/b/p0;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v7

    iput-object v7, v1, Ln3/e/b/p0;->j:Landroid/content/Context;

    if-nez v7, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v1, Ln3/e/b/p0;->j:Landroid/content/Context;

    .line 4
    :cond_0
    iget-object v0, v1, Ln3/e/b/p0;->c:Ln3/e/b/q0;

    .line 5
    iget-object v0, v0, Ln3/e/b/q0;->q:Ln3/e/b/j1/d1;

    sget-object v7, Ln3/e/b/q0;->r:Ln3/e/b/j1/j0$a;

    invoke-virtual {v0, v7, v6}, Ln3/e/b/j1/d1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/e/b/j1/y$a;

    if-eqz v0, :cond_5

    .line 6
    iget-object v7, v1, Ln3/e/b/p0;->d:Ljava/util/concurrent/Executor;

    iget-object v8, v1, Ln3/e/b/p0;->e:Landroid/os/Handler;

    .line 7
    new-instance v9, Ln3/e/b/j1/m;

    invoke-direct {v9, v7, v8}, Ln3/e/b/j1/m;-><init>(Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    .line 8
    iget-object v7, v1, Ln3/e/b/p0;->c:Ln3/e/b/q0;

    .line 9
    iget-object v7, v7, Ln3/e/b/q0;->q:Ln3/e/b/j1/d1;

    sget-object v8, Ln3/e/b/q0;->x:Ln3/e/b/j1/j0$a;

    invoke-virtual {v7, v8, v6}, Ln3/e/b/j1/d1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/e/b/m0;

    .line 10
    iget-object v8, v1, Ln3/e/b/p0;->j:Landroid/content/Context;

    invoke-interface {v0, v8, v9, v7}, Ln3/e/b/j1/y$a;->a(Landroid/content/Context;Ln3/e/b/j1/e0;Ln3/e/b/m0;)Ln3/e/b/j1/y;

    move-result-object v0

    iput-object v0, v1, Ln3/e/b/p0;->g:Ln3/e/b/j1/y;

    .line 11
    iget-object v0, v1, Ln3/e/b/p0;->c:Ln3/e/b/q0;

    .line 12
    iget-object v0, v0, Ln3/e/b/q0;->q:Ln3/e/b/j1/d1;

    sget-object v8, Ln3/e/b/q0;->s:Ln3/e/b/j1/j0$a;

    invoke-virtual {v0, v8, v6}, Ln3/e/b/j1/d1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/e/b/j1/x$a;

    if-eqz v0, :cond_4

    .line 13
    iget-object v8, v1, Ln3/e/b/p0;->j:Landroid/content/Context;

    iget-object v9, v1, Ln3/e/b/p0;->g:Ln3/e/b/j1/y;

    .line 14
    move-object v10, v9

    check-cast v10, Ln3/e/a/e/a1;

    .line 15
    iget-object v10, v10, Ln3/e/a/e/a1;->c:Ln3/e/a/e/k2/k;
    :try_end_0
    .catch Ln3/e/b/j1/f0; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ln3/e/b/x0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    check-cast v9, Ln3/e/a/e/a1;

    :try_start_1
    invoke-virtual {v9}, Ln3/e/a/e/a1;->a()Ljava/util/Set;

    move-result-object v9

    .line 17
    invoke-interface {v0, v8, v10, v9}, Ln3/e/b/j1/x$a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)Ln3/e/b/j1/x;

    move-result-object v0

    iput-object v0, v1, Ln3/e/b/p0;->h:Ln3/e/b/j1/x;

    .line 18
    iget-object v0, v1, Ln3/e/b/p0;->c:Ln3/e/b/q0;

    .line 19
    iget-object v0, v0, Ln3/e/b/q0;->q:Ln3/e/b/j1/d1;

    sget-object v8, Ln3/e/b/q0;->t:Ln3/e/b/j1/j0$a;

    invoke-virtual {v0, v8, v6}, Ln3/e/b/j1/d1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/e/b/j1/s1$b;

    if-eqz v0, :cond_3

    .line 20
    iget-object v8, v1, Ln3/e/b/p0;->j:Landroid/content/Context;

    invoke-interface {v0, v8}, Ln3/e/b/j1/s1$b;->b(Landroid/content/Context;)Ln3/e/b/j1/s1;

    move-result-object v0

    iput-object v0, v1, Ln3/e/b/p0;->i:Ln3/e/b/j1/s1;

    .line 21
    instance-of v0, v2, Ln3/e/b/j0;

    if-eqz v0, :cond_1

    .line 22
    move-object v0, v2

    check-cast v0, Ln3/e/b/j0;

    .line 23
    iget-object v8, v1, Ln3/e/b/p0;->g:Ln3/e/b/j1/y;

    invoke-virtual {v0, v8}, Ln3/e/b/j0;->b(Ln3/e/b/j1/y;)V

    .line 24
    :cond_1
    iget-object v0, v1, Ln3/e/b/p0;->a:Ln3/e/b/j1/c0;

    iget-object v8, v1, Ln3/e/b/p0;->g:Ln3/e/b/j1/y;

    invoke-virtual {v0, v8}, Ln3/e/b/j1/c0;->b(Ln3/e/b/j1/y;)V

    .line 25
    const-class v0, Ln3/e/b/k1/j/a/c;

    .line 26
    sget-object v8, Ln3/e/b/k1/j/a/a;->a:Ln3/e/b/j1/g1;

    invoke-virtual {v8, v0}, Ln3/e/b/j1/g1;->a(Ljava/lang/Class;)Ln3/e/b/j1/f1;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 27
    iget-object v0, v1, Ln3/e/b/p0;->j:Landroid/content/Context;

    iget-object v8, v1, Ln3/e/b/p0;->a:Ln3/e/b/j1/c0;

    invoke-static {v0, v8, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->K1(Landroid/content/Context;Ln3/e/b/j1/c0;Ln3/e/b/m0;)V

    .line 28
    :cond_2
    invoke-virtual {v1}, Ln3/e/b/p0;->e()V

    .line 29
    invoke-virtual {v5, v6}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 30
    :cond_3
    new-instance v0, Ln3/e/b/x0;

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid app configuration provided. Missing UseCaseConfigFactory."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ln3/e/b/x0;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 31
    :cond_4
    new-instance v0, Ln3/e/b/x0;

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid app configuration provided. Missing CameraDeviceSurfaceManager."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ln3/e/b/x0;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 32
    :cond_5
    new-instance v0, Ln3/e/b/x0;

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid app configuration provided. Missing CameraFactory."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ln3/e/b/x0;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catch Ln3/e/b/j1/f0; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ln3/e/b/x0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 33
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    const-wide/16 v9, 0x9c4

    cmp-long v7, v7, v9

    if-gez v7, :cond_7

    const-string v6, "CameraX"

    const-string v7, "Retry init. Start time "

    const-string v8, " current time "

    .line 34
    invoke-static {v7, v3, v4, v8}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 36
    invoke-static {v6, v7, v0}, Ln3/e/b/y0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    iget-object v6, v1, Ln3/e/b/p0;->e:Landroid/os/Handler;

    new-instance v7, Ln3/e/b/g;

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Ln3/e/b/g;-><init>(Ln3/e/b/p0;Ljava/util/concurrent/Executor;JLn3/h/a/b;)V

    const-string v0, "retry_token"

    const-wide/16 v1, 0x1f4

    .line 38
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_6

    .line 39
    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_1

    .line 40
    :cond_6
    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v3

    .line 41
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 42
    invoke-virtual {v6, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 43
    :cond_7
    iget-object v2, v1, Ln3/e/b/p0;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 44
    :try_start_2
    sget-object v3, Ln3/e/b/p0$a;->c:Ln3/e/b/p0$a;

    iput-object v3, v1, Ln3/e/b/p0;->k:Ln3/e/b/p0$a;

    .line 45
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    instance-of v1, v0, Ln3/e/b/j1/f0;

    if-eqz v1, :cond_8

    const-string v0, "CameraX"

    const-string v1, "The device might underreport the amount of the cameras. Finish the initialize task since we are already reaching the maximum number of retries."

    .line 47
    invoke-static {v0, v1, v6}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    invoke-virtual {v5, v6}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    goto :goto_1

    .line 49
    :cond_8
    instance-of v1, v0, Ln3/e/b/x0;

    if-eqz v1, :cond_9

    .line 50
    invoke-virtual {v5, v0}, Ln3/h/a/b;->c(Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 51
    :cond_9
    new-instance v1, Ln3/e/b/x0;

    invoke-direct {v1, v0}, Ln3/e/b/x0;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v5, v1}, Ln3/h/a/b;->c(Ljava/lang/Throwable;)Z

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 52
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
