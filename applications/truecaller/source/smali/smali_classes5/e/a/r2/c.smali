.class public abstract Le/a/r2/c;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/PowerManager$WakeLock;

.field public final b:J

.field public volatile c:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;JLandroid/os/PowerManager$WakeLock;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Le/a/r2/c;->c:I

    .line 3
    iput-object p4, p0, Le/a/r2/c;->a:Landroid/os/PowerManager$WakeLock;

    .line 4
    iput-wide p2, p0, Le/a/r2/c;->b:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r2/c;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public b(Le/a/r2/h0;)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Le/a/r2/c;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    monitor-exit p0

    return v2

    .line 4
    :cond_0
    iget v0, p0, Le/a/r2/c;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Le/a/r2/c;->c:I

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0, v1, v0, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract c()V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget v0, p0, Le/a/r2/c;->c:I

    if-ne v0, p1, :cond_1

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Le/a/r2/c;->c:I

    move v1, v3

    .line 6
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p0}, Le/a/r2/c;->c()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 9
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Le/a/r2/h0;

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 10
    iget-object v3, p0, Le/a/r2/c;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 12
    :goto_0
    :try_start_2
    iget-object v3, v0, Le/a/r2/h0;->a:Le/a/r2/u;

    iget-object v4, v0, Le/a/r2/h0;->b:Ljava/lang/Object;

    invoke-interface {v3, v4}, Le/a/r2/u;->d(Ljava/lang/Object;)Le/a/r2/x;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    invoke-virtual {p0}, Le/a/r2/c;->a()V

    .line 14
    invoke-virtual {v0}, Le/a/r2/h0;->b()V

    .line 15
    iget-wide v3, p0, Le/a/r2/c;->b:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    invoke-virtual {p0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-wide v0, p0, Le/a/r2/c;->b:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 18
    :try_start_3
    iget-object v1, v0, Le/a/r2/h0;->a:Le/a/r2/u;

    invoke-interface {v1}, Le/a/r2/p;->a()Le/a/r2/d;

    move-result-object v1

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 20
    iget-object p1, v0, Le/a/r2/h0;->c:Le/a/r2/n;

    iget-object v2, v0, Le/a/r2/h0;->b:Ljava/lang/Object;

    iget-object v3, v0, Le/a/r2/h0;->a:Le/a/r2/u;

    invoke-virtual {p1, v2, v3, v1}, Le/a/r2/n;->a(Ljava/lang/Object;Le/a/r2/u;Le/a/r2/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 p1, 0x0

    throw p1

    :catchall_2
    move-exception p1

    .line 21
    invoke-virtual {p0}, Le/a/r2/c;->a()V

    .line 22
    invoke-virtual {v0}, Le/a/r2/h0;->b()V

    .line 23
    throw p1
.end method
