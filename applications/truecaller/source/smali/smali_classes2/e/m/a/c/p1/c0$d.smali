.class public final Le/m/a/c/p1/c0$d;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/p1/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Le/m/a/c/p1/c0$e;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Le/m/a/c/p1/c0$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:J

.field public d:Le/m/a/c/p1/c0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/c/p1/c0$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:Ljava/io/IOException;

.field public f:I

.field public volatile g:Ljava/lang/Thread;

.field public volatile h:Z

.field public volatile i:Z

.field public final synthetic j:Le/m/a/c/p1/c0;


# direct methods
.method public constructor <init>(Le/m/a/c/p1/c0;Landroid/os/Looper;Le/m/a/c/p1/c0$e;Le/m/a/c/p1/c0$b;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Le/m/a/c/p1/c0$b<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/m/a/c/p1/c0$d;->j:Le/m/a/c/p1/c0;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p3, p0, Le/m/a/c/p1/c0$d;->b:Le/m/a/c/p1/c0$e;

    .line 4
    iput-object p4, p0, Le/m/a/c/p1/c0$d;->d:Le/m/a/c/p1/c0$b;

    .line 5
    iput p5, p0, Le/m/a/c/p1/c0$d;->a:I

    .line 6
    iput-wide p6, p0, Le/m/a/c/p1/c0$d;->c:J

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 8

    .line 1
    iput-boolean p1, p0, Le/m/a/c/p1/c0$d;->i:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/m/a/c/p1/c0$d;->e:Ljava/io/IOException;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 6
    :cond_0
    iput-boolean v3, p0, Le/m/a/c/p1/c0$d;->h:Z

    .line 7
    iget-object v1, p0, Le/m/a/c/p1/c0$d;->b:Le/m/a/c/p1/c0$e;

    check-cast v1, Le/m/a/c/l1/s$a;

    .line 8
    iput-boolean v3, v1, Le/m/a/c/l1/s$a;->g:Z

    .line 9
    iget-object v1, p0, Le/m/a/c/p1/c0$d;->g:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Le/m/a/c/p1/c0$d;->j:Le/m/a/c/p1/c0;

    .line 12
    iput-object v0, p1, Le/m/a/c/p1/c0;->b:Le/m/a/c/p1/c0$d;

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 14
    iget-object v1, p0, Le/m/a/c/p1/c0$d;->d:Le/m/a/c/p1/c0$b;

    .line 15
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v2, p0, Le/m/a/c/p1/c0$d;->b:Le/m/a/c/p1/c0$e;

    iget-wide v5, p0, Le/m/a/c/p1/c0$d;->c:J

    sub-long v5, v3, v5

    const/4 v7, 0x1

    .line 17
    invoke-interface/range {v1 .. v7}, Le/m/a/c/p1/c0$b;->m(Le/m/a/c/p1/c0$e;JJZ)V

    .line 18
    iput-object v0, p0, Le/m/a/c/p1/c0$d;->d:Le/m/a/c/p1/c0$b;

    :cond_2
    return-void
.end method

.method public b(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/c0$d;->j:Le/m/a/c/p1/c0;

    .line 2
    iget-object v0, v0, Le/m/a/c/p1/c0;->b:Le/m/a/c/p1/c0$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 4
    iget-object v0, p0, Le/m/a/c/p1/c0$d;->j:Le/m/a/c/p1/c0;

    .line 5
    iput-object p0, v0, Le/m/a/c/p1/c0;->b:Le/m/a/c/p1/c0$d;

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 6
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Le/m/a/c/p1/c0$d;->e:Ljava/io/IOException;

    .line 8
    iget-object p1, v0, Le/m/a/c/p1/c0;->a:Ljava/util/concurrent/ExecutorService;

    .line 9
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Le/m/a/c/p1/c0$d;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iput-object v1, p0, Le/m/a/c/p1/c0$d;->e:Ljava/io/IOException;

    .line 4
    iget-object p1, p0, Le/m/a/c/p1/c0$d;->j:Le/m/a/c/p1/c0;

    .line 5
    iget-object v0, p1, Le/m/a/c/p1/c0;->a:Ljava/util/concurrent/ExecutorService;

    .line 6
    iget-object p1, p1, Le/m/a/c/p1/c0;->b:Le/m/a/c/p1/c0$d;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 v2, 0x4

    if-eq v0, v2, :cond_a

    .line 9
    iget-object v0, p0, Le/m/a/c/p1/c0$d;->j:Le/m/a/c/p1/c0;

    .line 10
    iput-object v1, v0, Le/m/a/c/p1/c0;->b:Le/m/a/c/p1/c0$d;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 12
    iget-wide v0, p0, Le/m/a/c/p1/c0$d;->c:J

    sub-long v6, v4, v0

    .line 13
    iget-object v2, p0, Le/m/a/c/p1/c0$d;->d:Le/m/a/c/p1/c0$b;

    .line 14
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-boolean v0, p0, Le/m/a/c/p1/c0$d;->h:Z

    if-eqz v0, :cond_2

    .line 16
    iget-object v3, p0, Le/m/a/c/p1/c0$d;->b:Le/m/a/c/p1/c0$e;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Le/m/a/c/p1/c0$b;->m(Le/m/a/c/p1/c0$e;JJZ)V

    return-void

    .line 17
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v10, 0x2

    if-eq v0, v10, :cond_7

    const/4 v11, 0x3

    if-eq v0, v11, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Le/m/a/c/p1/c0$d;->e:Ljava/io/IOException;

    .line 19
    iget p1, p0, Le/m/a/c/p1/c0$d;->f:I

    add-int/lit8 v9, p1, 0x1

    iput v9, p0, Le/m/a/c/p1/c0$d;->f:I

    .line 20
    iget-object v3, p0, Le/m/a/c/p1/c0$d;->b:Le/m/a/c/p1/c0$e;

    .line 21
    invoke-interface/range {v2 .. v9}, Le/m/a/c/p1/c0$b;->r(Le/m/a/c/p1/c0$e;JJLjava/io/IOException;I)Le/m/a/c/p1/c0$c;

    move-result-object p1

    .line 22
    iget v0, p1, Le/m/a/c/p1/c0$c;->a:I

    if-ne v0, v11, :cond_4

    .line 23
    iget-object p1, p0, Le/m/a/c/p1/c0$d;->j:Le/m/a/c/p1/c0;

    iget-object v0, p0, Le/m/a/c/p1/c0$d;->e:Ljava/io/IOException;

    .line 24
    iput-object v0, p1, Le/m/a/c/p1/c0;->c:Ljava/io/IOException;

    goto :goto_1

    :cond_4
    if-eq v0, v10, :cond_9

    if-ne v0, v1, :cond_5

    .line 25
    iput v1, p0, Le/m/a/c/p1/c0$d;->f:I

    .line 26
    :cond_5
    iget-wide v0, p1, Le/m/a/c/p1/c0$c;->b:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_6

    goto :goto_0

    .line 27
    :cond_6
    iget p1, p0, Le/m/a/c/p1/c0$d;->f:I

    add-int/lit8 p1, p1, -0x1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    .line 28
    :goto_0
    invoke-virtual {p0, v0, v1}, Le/m/a/c/p1/c0$d;->b(J)V

    goto :goto_1

    .line 29
    :cond_7
    :try_start_0
    iget-object v3, p0, Le/m/a/c/p1/c0$d;->b:Le/m/a/c/p1/c0$e;

    invoke-interface/range {v2 .. v7}, Le/m/a/c/p1/c0$b;->n(Le/m/a/c/p1/c0$e;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Unexpected exception handling load completed"

    .line 30
    invoke-static {v0, p1}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 31
    iget-object v0, p0, Le/m/a/c/p1/c0$d;->j:Le/m/a/c/p1/c0;

    new-instance v1, Le/m/a/c/p1/c0$h;

    invoke-direct {v1, p1}, Le/m/a/c/p1/c0$h;-><init>(Ljava/lang/Throwable;)V

    .line 32
    iput-object v1, v0, Le/m/a/c/p1/c0;->c:Ljava/io/IOException;

    goto :goto_1

    .line 33
    :cond_8
    iget-object v3, p0, Le/m/a/c/p1/c0$d;->b:Le/m/a/c/p1/c0$e;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Le/m/a/c/p1/c0$b;->m(Le/m/a/c/p1/c0$e;JJZ)V

    :cond_9
    :goto_1
    return-void

    .line 34
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Le/m/a/c/p1/c0$d;->g:Ljava/lang/Thread;

    .line 2
    iget-boolean v2, p0, Le/m/a/c/p1/c0$d;->h:Z

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/m/a/c/p1/c0$d;->b:Le/m/a/c/p1/c0$e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ln3/g0/y;->n(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v2, p0, Le/m/a/c/p1/c0$d;->b:Le/m/a/c/p1/c0$e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v2, Le/m/a/c/l1/s$a;

    :try_start_2
    invoke-virtual {v2}, Le/m/a/c/l1/s$a;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :try_start_3
    invoke-static {}, Ln3/g0/y;->Q()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {}, Ln3/g0/y;->Q()V

    .line 6
    throw v2

    .line 7
    :cond_0
    :goto_0
    iget-boolean v2, p0, Le/m/a/c/p1/c0$d;->i:Z

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Unexpected error loading stream"

    .line 9
    invoke-static {v1, v0}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 10
    iget-boolean v1, p0, Le/m/a/c/p1/c0$d;->i:Z

    if-nez v1, :cond_1

    const/4 v1, 0x4

    .line 11
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 12
    :cond_1
    throw v0

    :catch_1
    move-exception v0

    const-string v2, "OutOfMemory error loading stream"

    .line 13
    invoke-static {v2, v0}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 14
    iget-boolean v2, p0, Le/m/a/c/p1/c0$d;->i:Z

    if-nez v2, :cond_2

    .line 15
    new-instance v2, Le/m/a/c/p1/c0$h;

    invoke-direct {v2, v0}, Le/m/a/c/p1/c0$h;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v2, "Unexpected exception loading stream"

    .line 16
    invoke-static {v2, v0}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 17
    iget-boolean v2, p0, Le/m/a/c/p1/c0$d;->i:Z

    if-nez v2, :cond_2

    .line 18
    new-instance v2, Le/m/a/c/p1/c0$h;

    invoke-direct {v2, v0}, Le/m/a/c/p1/c0$h;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 19
    :catch_3
    iget-boolean v1, p0, Le/m/a/c/p1/c0$d;->h:Z

    invoke-static {v1}, Ln3/g0/y;->x(Z)V

    .line 20
    iget-boolean v1, p0, Le/m/a/c/p1/c0$d;->i:Z

    if-nez v1, :cond_2

    .line 21
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :catch_4
    move-exception v0

    .line 22
    iget-boolean v2, p0, Le/m/a/c/p1/c0$d;->i:Z

    if-nez v2, :cond_2

    .line 23
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method
