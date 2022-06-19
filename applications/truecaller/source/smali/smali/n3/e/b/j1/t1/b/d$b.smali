.class public final Ln3/e/b/j1/t1/b/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/b/j1/t1/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Ln3/e/b/j1/t1/b/d;


# direct methods
.method public constructor <init>(Ln3/e/b/j1/t1/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/b/j1/t1/b/d$b;->a:Ln3/e/b/j1/t1/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    :try_start_0
    iget-object v2, p0, Ln3/e/b/j1/t1/b/d$b;->a:Ln3/e/b/j1/t1/b/d;

    iget-object v2, v2, Ln3/e/b/j1/t1/b/d;->a:Ljava/util/Deque;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    .line 2
    :try_start_1
    iget-object v0, p0, Ln3/e/b/j1/t1/b/d$b;->a:Ln3/e/b/j1/t1/b/d;

    iget-object v3, v0, Ln3/e/b/j1/t1/b/d;->d:Ln3/e/b/j1/t1/b/d$c;

    sget-object v4, Ln3/e/b/j1/t1/b/d$c;->d:Ln3/e/b/j1/t1/b/d$c;

    if-ne v3, v4, :cond_1

    .line 3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void

    .line 5
    :cond_1
    :try_start_2
    iget-wide v5, v0, Ln3/e/b/j1/t1/b/d;->e:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v0, Ln3/e/b/j1/t1/b/d;->e:J

    .line 6
    iput-object v4, v0, Ln3/e/b/j1/t1/b/d;->d:Ln3/e/b/j1/t1/b/d$c;

    const/4 v0, 0x1

    .line 7
    :cond_2
    iget-object v3, p0, Ln3/e/b/j1/t1/b/d$b;->a:Ln3/e/b/j1/t1/b/d;

    iget-object v3, v3, Ln3/e/b/j1/t1/b/d;->a:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    if-nez v3, :cond_4

    .line 8
    iget-object v0, p0, Ln3/e/b/j1/t1/b/d$b;->a:Ln3/e/b/j1/t1/b/d;

    sget-object v3, Ln3/e/b/j1/t1/b/d$c;->a:Ln3/e/b/j1/t1/b/d$c;

    iput-object v3, v0, Ln3/e/b/j1/t1/b/d;->d:Ln3/e/b/j1/t1/b/d$c;

    .line 9
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    return-void

    .line 11
    :cond_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    or-int/2addr v1, v2

    .line 13
    :try_start_5
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_6
    const-string v4, "SequentialExecutor"

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while executing runnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 15
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_5

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 17
    :cond_5
    throw v0
.end method

.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ln3/e/b/j1/t1/b/d$b;->a()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Ln3/e/b/j1/t1/b/d$b;->a:Ln3/e/b/j1/t1/b/d;

    iget-object v1, v1, Ln3/e/b/j1/t1/b/d;->a:Ljava/util/Deque;

    monitor-enter v1

    .line 3
    :try_start_1
    iget-object v2, p0, Ln3/e/b/j1/t1/b/d$b;->a:Ln3/e/b/j1/t1/b/d;

    sget-object v3, Ln3/e/b/j1/t1/b/d$c;->a:Ln3/e/b/j1/t1/b/d$c;

    iput-object v3, v2, Ln3/e/b/j1/t1/b/d;->d:Ln3/e/b/j1/t1/b/d$c;

    .line 4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    throw v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
