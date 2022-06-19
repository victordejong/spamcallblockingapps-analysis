.class public abstract Le/m/a/c/e1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/e1/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Le/m/a/c/e1/e;",
        "O:",
        "Le/m/a/c/e1/f;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Le/m/a/c/e1/c<",
        "TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Thread;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final e:[Le/m/a/c/e1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field public final f:[Le/m/a/c/e1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I

.field public i:Le/m/a/c/e1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:Z

.field public m:I


# direct methods
.method public constructor <init>([Le/m/a/c/e1/e;[Le/m/a/c/e1/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/m/a/c/e1/g;->b:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Le/m/a/c/e1/g;->c:Ljava/util/ArrayDeque;

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Le/m/a/c/e1/g;->d:Ljava/util/ArrayDeque;

    .line 5
    iput-object p1, p0, Le/m/a/c/e1/g;->e:[Le/m/a/c/e1/e;

    .line 6
    array-length p1, p1

    iput p1, p0, Le/m/a/c/e1/g;->g:I

    const/4 p1, 0x0

    move v0, p1

    .line 7
    :goto_0
    iget v1, p0, Le/m/a/c/e1/g;->g:I

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Le/m/a/c/e1/g;->e:[Le/m/a/c/e1/e;

    .line 9
    new-instance v2, Le/m/a/c/m1/i;

    invoke-direct {v2}, Le/m/a/c/m1/i;-><init>()V

    .line 10
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iput-object p2, p0, Le/m/a/c/e1/g;->f:[Le/m/a/c/e1/f;

    .line 12
    array-length p2, p2

    iput p2, p0, Le/m/a/c/e1/g;->h:I

    .line 13
    :goto_1
    iget p2, p0, Le/m/a/c/e1/g;->h:I

    if-ge p1, p2, :cond_1

    .line 14
    iget-object p2, p0, Le/m/a/c/e1/g;->f:[Le/m/a/c/e1/f;

    move-object v0, p0

    check-cast v0, Le/m/a/c/m1/c;

    .line 15
    new-instance v1, Le/m/a/c/m1/d;

    invoke-direct {v1, v0}, Le/m/a/c/m1/d;-><init>(Le/m/a/c/m1/c;)V

    .line 16
    aput-object v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 17
    :cond_1
    new-instance p1, Le/m/a/c/e1/g$a;

    invoke-direct {p1, p0}, Le/m/a/c/e1/g$a;-><init>(Le/m/a/c/e1/g;)V

    iput-object p1, p0, Le/m/a/c/e1/g;->a:Ljava/lang/Thread;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/e1/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/m/a/c/e1/g;->h()V

    .line 3
    iget-object v1, p0, Le/m/a/c/e1/g;->i:Le/m/a/c/e1/e;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ln3/g0/y;->x(Z)V

    .line 4
    iget v1, p0, Le/m/a/c/e1/g;->g:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Le/m/a/c/e1/g;->e:[Le/m/a/c/e1/e;

    sub-int/2addr v1, v2

    iput v1, p0, Le/m/a/c/e1/g;->g:I

    aget-object v1, v3, v1

    :goto_1
    iput-object v1, p0, Le/m/a/c/e1/g;->i:Le/m/a/c/e1/e;

    .line 5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/e1/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/m/a/c/e1/g;->h()V

    .line 3
    iget-object v1, p0, Le/m/a/c/e1/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Le/m/a/c/e1/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/e1/f;

    monitor-exit v0

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Le/m/a/c/e1/e;

    .line 2
    iget-object v0, p0, Le/m/a/c/e1/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Le/m/a/c/e1/g;->h()V

    .line 4
    iget-object v1, p0, Le/m/a/c/e1/g;->i:Le/m/a/c/e1/e;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ln3/g0/y;->r(Z)V

    .line 5
    iget-object v1, p0, Le/m/a/c/e1/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Le/m/a/c/e1/g;->g()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Le/m/a/c/e1/g;->i:Le/m/a/c/e1/e;

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract e(Le/m/a/c/e1/e;Le/m/a/c/e1/f;Z)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public final f()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/e1/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Le/m/a/c/e1/g;->l:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Le/m/a/c/e1/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Le/m/a/c/e1/g;->h:I

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    move v1, v3

    :goto_1
    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Le/m/a/c/e1/g;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v1, p0, Le/m/a/c/e1/g;->l:Z

    if-eqz v1, :cond_2

    .line 6
    monitor-exit v0

    return v3

    .line 7
    :cond_2
    iget-object v1, p0, Le/m/a/c/e1/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/e1/e;

    .line 8
    iget-object v4, p0, Le/m/a/c/e1/g;->f:[Le/m/a/c/e1/f;

    iget v5, p0, Le/m/a/c/e1/g;->h:I

    sub-int/2addr v5, v2

    iput v5, p0, Le/m/a/c/e1/g;->h:I

    aget-object v4, v4, v5

    .line 9
    iget-boolean v5, p0, Le/m/a/c/e1/g;->k:Z

    .line 10
    iput-boolean v3, p0, Le/m/a/c/e1/g;->k:Z

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    invoke-virtual {v1}, Le/m/a/c/e1/a;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 13
    invoke-virtual {v4, v0}, Le/m/a/c/e1/a;->addFlag(I)V

    goto :goto_4

    .line 14
    :cond_3
    invoke-virtual {v1}, Le/m/a/c/e1/a;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, -0x80000000

    .line 15
    invoke-virtual {v4, v0}, Le/m/a/c/e1/a;->addFlag(I)V

    .line 16
    :cond_4
    :try_start_1
    invoke-virtual {p0, v1, v4, v5}, Le/m/a/c/e1/g;->e(Le/m/a/c/e1/e;Le/m/a/c/e1/f;Z)Ljava/lang/Exception;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 17
    new-instance v5, Le/m/a/c/m1/g;

    const-string v6, "Unexpected decode error"

    invoke-direct {v5, v6, v0}, Le/m/a/c/m1/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 18
    new-instance v5, Le/m/a/c/m1/g;

    const-string v6, "Unexpected decode error"

    invoke-direct {v5, v6, v0}, Le/m/a/c/m1/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move-object v0, v5

    :goto_3
    if-eqz v0, :cond_5

    .line 19
    iget-object v5, p0, Le/m/a/c/e1/g;->b:Ljava/lang/Object;

    monitor-enter v5

    .line 20
    :try_start_2
    iput-object v0, p0, Le/m/a/c/e1/g;->j:Ljava/lang/Exception;

    .line 21
    monitor-exit v5

    return v3

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 22
    :cond_5
    :goto_4
    iget-object v5, p0, Le/m/a/c/e1/g;->b:Ljava/lang/Object;

    monitor-enter v5

    .line 23
    :try_start_3
    iget-boolean v0, p0, Le/m/a/c/e1/g;->k:Z

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {v4}, Le/m/a/c/e1/f;->release()V

    goto :goto_5

    .line 25
    :cond_6
    invoke-virtual {v4}, Le/m/a/c/e1/a;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    iget v0, p0, Le/m/a/c/e1/g;->m:I

    add-int/2addr v0, v2

    iput v0, p0, Le/m/a/c/e1/g;->m:I

    .line 27
    invoke-virtual {v4}, Le/m/a/c/e1/f;->release()V

    goto :goto_5

    .line 28
    :cond_7
    iget v0, p0, Le/m/a/c/e1/g;->m:I

    iput v0, v4, Le/m/a/c/e1/f;->skippedOutputBufferCount:I

    .line 29
    iput v3, p0, Le/m/a/c/e1/g;->m:I

    .line 30
    iget-object v0, p0, Le/m/a/c/e1/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 31
    :goto_5
    invoke-virtual {p0, v1}, Le/m/a/c/e1/g;->i(Le/m/a/c/e1/e;)V

    .line 32
    monitor-exit v5

    return v2

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 33
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public final flush()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/c/e1/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Le/m/a/c/e1/g;->k:Z

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Le/m/a/c/e1/g;->m:I

    .line 4
    iget-object v1, p0, Le/m/a/c/e1/g;->i:Le/m/a/c/e1/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Le/m/a/c/e1/g;->i(Le/m/a/c/e1/e;)V

    .line 6
    iput-object v2, p0, Le/m/a/c/e1/g;->i:Le/m/a/c/e1/e;

    .line 7
    :cond_0
    :goto_0
    iget-object v1, p0, Le/m/a/c/e1/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Le/m/a/c/e1/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/e1/e;

    invoke-virtual {p0, v1}, Le/m/a/c/e1/g;->i(Le/m/a/c/e1/e;)V

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    iget-object v1, p0, Le/m/a/c/e1/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Le/m/a/c/e1/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/e1/f;

    invoke-virtual {v1}, Le/m/a/c/e1/f;->release()V

    goto :goto_1

    .line 11
    :cond_2
    iput-object v2, p0, Le/m/a/c/e1/g;->j:Ljava/lang/Exception;

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/e1/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Le/m/a/c/e1/g;->h:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/m/a/c/e1/g;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/e1/g;->j:Ljava/lang/Exception;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    throw v0
.end method

.method public final i(Le/m/a/c/e1/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/m/a/c/e1/e;->clear()V

    .line 2
    iget-object v0, p0, Le/m/a/c/e1/g;->e:[Le/m/a/c/e1/e;

    iget v1, p0, Le/m/a/c/e1/g;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/m/a/c/e1/g;->g:I

    aput-object p1, v0, v1

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/e1/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Le/m/a/c/e1/g;->l:Z

    .line 3
    iget-object v1, p0, Le/m/a/c/e1/g;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v0, p0, Le/m/a/c/e1/g;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
