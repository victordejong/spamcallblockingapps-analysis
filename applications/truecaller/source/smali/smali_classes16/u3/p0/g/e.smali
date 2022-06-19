.class public final Lu3/p0/g/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/p0/g/e$a;,
        Lu3/p0/g/e$b;
    }
.end annotation


# instance fields
.field public final a:Lu3/p0/g/j;

.field public final b:Lu3/u;

.field public final c:Lu3/p0/g/e$c;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:Ljava/lang/Object;

.field public f:Lu3/p0/g/d;

.field public g:Lu3/p0/g/i;

.field public h:Z

.field public i:Lu3/p0/g/c;

.field public j:Z

.field public k:Z

.field public l:Z

.field public volatile m:Z

.field public volatile n:Lu3/p0/g/c;

.field public volatile o:Lu3/p0/g/i;

.field public final p:Lu3/e0;

.field public final q:Lu3/g0;

.field public final r:Z


# direct methods
.method public constructor <init>(Lu3/e0;Lu3/g0;Z)V
    .locals 2

    const-string v0, "client"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalRequest"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/p0/g/e;->p:Lu3/e0;

    iput-object p2, p0, Lu3/p0/g/e;->q:Lu3/g0;

    iput-boolean p3, p0, Lu3/p0/g/e;->r:Z

    .line 2
    iget-object p2, p1, Lu3/e0;->b:Lu3/m;

    .line 3
    iget-object p2, p2, Lu3/m;->a:Lu3/p0/g/j;

    .line 4
    iput-object p2, p0, Lu3/p0/g/e;->a:Lu3/p0/g/j;

    .line 5
    iget-object p2, p1, Lu3/e0;->e:Lu3/u$b;

    .line 6
    invoke-interface {p2, p0}, Lu3/u$b;->a(Lu3/f;)Lu3/u;

    move-result-object p2

    iput-object p2, p0, Lu3/p0/g/e;->b:Lu3/u;

    .line 7
    new-instance p2, Lu3/p0/g/e$c;

    invoke-direct {p2, p0}, Lu3/p0/g/e$c;-><init>(Lu3/p0/g/e;)V

    .line 8
    iget p1, p1, Lu3/e0;->x:I

    int-to-long v0, p1

    .line 9
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Lv3/c0;->g(JLjava/util/concurrent/TimeUnit;)Lv3/c0;

    .line 10
    iput-object p2, p0, Lu3/p0/g/e;->c:Lu3/p0/g/e$c;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lu3/p0/g/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lu3/p0/g/e;->l:Z

    return-void
.end method

.method public static final a(Lu3/p0/g/e;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-boolean v1, p0, Lu3/p0/g/e;->m:Z

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-boolean v1, p0, Lu3/p0/g/e;->r:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object p0, p0, Lu3/p0/g/e;->q:Lu3/g0;

    .line 6
    iget-object p0, p0, Lu3/g0;->b:Lu3/a0;

    .line 7
    invoke-virtual {p0}, Lu3/a0;->i()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public M1(Lu3/g;)V
    .locals 5

    const-string v0, "responseCallback"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/p0/g/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    sget-object v0, Lu3/p0/l/h;->c:Lu3/p0/l/h$a;

    .line 3
    sget-object v0, Lu3/p0/l/h;->a:Lu3/p0/l/h;

    const-string v1, "response.body().close()"

    .line 4
    invoke-virtual {v0, v1}, Lu3/p0/l/h;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lu3/p0/g/e;->e:Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lu3/p0/g/e;->b:Lu3/u;

    invoke-virtual {v0, p0}, Lu3/u;->c(Lu3/f;)V

    .line 6
    iget-object v0, p0, Lu3/p0/g/e;->p:Lu3/e0;

    .line 7
    iget-object v0, v0, Lu3/e0;->a:Lu3/r;

    .line 8
    new-instance v1, Lu3/p0/g/e$a;

    invoke-direct {v1, p0, p1}, Lu3/p0/g/e$a;-><init>(Lu3/p0/g/e;Lu3/g;)V

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "call"

    invoke-static {v1, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p1, v0, Lu3/r;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, v1, Lu3/p0/g/e$a;->c:Lu3/p0/g/e;

    .line 13
    iget-boolean p1, p1, Lu3/p0/g/e;->r:Z

    if-nez p1, :cond_4

    .line 14
    invoke-virtual {v1}, Lu3/p0/g/e$a;->a()Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object v2, v0, Lu3/r;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu3/p0/g/e$a;

    .line 16
    invoke-virtual {v3}, Lu3/p0/g/e$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 17
    :cond_1
    iget-object v2, v0, Lu3/r;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu3/p0/g/e$a;

    .line 18
    invoke-virtual {v3}, Lu3/p0/g/e$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    const-string p1, "other"

    .line 19
    invoke-static {v3, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object p1, v3, Lu3/p0/g/e$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, v1, Lu3/p0/g/e$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_4
    monitor-exit v0

    .line 22
    invoke-virtual {v0}, Lu3/r;->c()Z

    return-void

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0

    throw p1

    :cond_5
    const-string p1, "Already Executed"

    .line 24
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lu3/p0/g/i;)V
    .locals 2

    const-string v0, "connection"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lu3/p0/c;->a:[B

    .line 2
    iget-object v0, p0, Lu3/p0/g/e;->g:Lu3/p0/g/i;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iput-object p1, p0, Lu3/p0/g/e;->g:Lu3/p0/g/i;

    .line 4
    iget-object p1, p1, Lu3/p0/g/i;->o:Ljava/util/List;

    .line 5
    new-instance v0, Lu3/p0/g/e$b;

    iget-object v1, p0, Lu3/p0/g/e;->e:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lu3/p0/g/e$b;-><init>(Lu3/p0/g/e;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1
    sget-object v0, Lu3/p0/c;->a:[B

    .line 2
    iget-object v0, p0, Lu3/p0/g/e;->g:Lu3/p0/g/i;

    if-eqz v0, :cond_4

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lu3/p0/g/e;->i()Ljava/net/Socket;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    .line 6
    iget-object v2, p0, Lu3/p0/g/e;->g:Lu3/p0/g/i;

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {v1}, Lu3/p0/c;->e(Ljava/net/Socket;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lu3/p0/g/e;->b:Lu3/u;

    invoke-virtual {v1, p0, v0}, Lu3/u;->h(Lu3/f;Lu3/l;)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "Check failed."

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0

    throw p1

    .line 11
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lu3/p0/g/e;->h:Z

    if-eqz v0, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    iget-object v0, p0, Lu3/p0/g/e;->c:Lu3/p0/g/e$c;

    invoke-virtual {v0}, Lv3/b;->i()Z

    move-result v0

    if-nez v0, :cond_6

    :goto_2
    move-object v0, p1

    goto :goto_3

    .line 13
    :cond_6
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 14
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_7
    :goto_3
    if-eqz p1, :cond_9

    .line 15
    iget-object p1, p0, Lu3/p0/g/e;->b:Lu3/u;

    if-eqz v0, :cond_8

    invoke-virtual {p1, p0, v0}, Lu3/u;->b(Lu3/f;Ljava/io/IOException;)V

    goto :goto_4

    :cond_8
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 p1, 0x0

    throw p1

    .line 16
    :cond_9
    iget-object p1, p0, Lu3/p0/g/e;->b:Lu3/u;

    invoke-virtual {p1, p0}, Lu3/u;->a(Lu3/f;)V

    :goto_4
    return-object v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu3/p0/g/e;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lu3/p0/g/e;->m:Z

    .line 3
    iget-object v0, p0, Lu3/p0/g/e;->n:Lu3/p0/g/c;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Lu3/p0/g/c;->f:Lu3/p0/h/d;

    invoke-interface {v0}, Lu3/p0/h/d;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lu3/p0/g/e;->o:Lu3/p0/g/i;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, v0, Lu3/p0/g/i;->b:Ljava/net/Socket;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lu3/p0/c;->e(Ljava/net/Socket;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lu3/p0/g/e;->b:Lu3/u;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "call"

    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lu3/p0/g/e;

    iget-object v1, p0, Lu3/p0/g/e;->p:Lu3/e0;

    iget-object v2, p0, Lu3/p0/g/e;->q:Lu3/g0;

    iget-boolean v3, p0, Lu3/p0/g/e;->r:Z

    invoke-direct {v0, v1, v2, v3}, Lu3/p0/g/e;-><init>(Lu3/e0;Lu3/g0;Z)V

    return-object v0
.end method

.method public final e(Z)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lu3/p0/g/e;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 3
    monitor-exit p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lu3/p0/g/e;->n:Lu3/p0/g/c;

    if-eqz p1, :cond_0

    .line 5
    iget-object v1, p1, Lu3/p0/g/c;->f:Lu3/p0/h/d;

    invoke-interface {v1}, Lu3/p0/h/d;->cancel()V

    .line 6
    iget-object v1, p1, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v2, v0}, Lu3/p0/g/e;->g(Lu3/p0/g/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 7
    :cond_0
    iput-object v0, p0, Lu3/p0/g/e;->i:Lu3/p0/g/c;

    return-void

    :cond_1
    :try_start_1
    const-string p1, "released"

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    throw p1
.end method

.method public execute()Lu3/k0;
    .locals 3

    .line 1
    iget-object v0, p0, Lu3/p0/g/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lu3/p0/g/e;->c:Lu3/p0/g/e$c;

    invoke-virtual {v0}, Lv3/b;->h()V

    .line 3
    sget-object v0, Lu3/p0/l/h;->c:Lu3/p0/l/h$a;

    .line 4
    sget-object v0, Lu3/p0/l/h;->a:Lu3/p0/l/h;

    const-string v1, "response.body().close()"

    .line 5
    invoke-virtual {v0, v1}, Lu3/p0/l/h;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lu3/p0/g/e;->e:Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lu3/p0/g/e;->b:Lu3/u;

    invoke-virtual {v0, p0}, Lu3/u;->c(Lu3/f;)V

    .line 7
    :try_start_0
    iget-object v0, p0, Lu3/p0/g/e;->p:Lu3/e0;

    .line 8
    iget-object v0, v0, Lu3/e0;->a:Lu3/r;

    .line 9
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "call"

    invoke-static {p0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, v0, Lu3/r;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    monitor-exit v0

    .line 12
    invoke-virtual {p0}, Lu3/p0/g/e;->f()Lu3/k0;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    iget-object v1, p0, Lu3/p0/g/e;->p:Lu3/e0;

    .line 14
    iget-object v1, v1, Lu3/e0;->a:Lu3/r;

    .line 15
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "call"

    invoke-static {p0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v2, v1, Lu3/r;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2, p0}, Lu3/r;->a(Ljava/util/Deque;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 17
    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 18
    iget-object v1, p0, Lu3/p0/g/e;->p:Lu3/e0;

    .line 19
    iget-object v1, v1, Lu3/e0;->a:Lu3/r;

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "call"

    invoke-static {p0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v2, v1, Lu3/r;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2, p0}, Lu3/r;->a(Ljava/util/Deque;Ljava/lang/Object;)V

    .line 22
    throw v0

    :cond_0
    const-string v0, "Already Executed"

    .line 23
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final f()Lu3/k0;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lu3/p0/g/e;->p:Lu3/e0;

    .line 3
    iget-object v0, v0, Lu3/e0;->c:Ljava/util/List;

    .line 4
    invoke-static {v2, v0}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 5
    new-instance v0, Lu3/p0/h/i;

    iget-object v1, p0, Lu3/p0/g/e;->p:Lu3/e0;

    invoke-direct {v0, v1}, Lu3/p0/h/i;-><init>(Lu3/e0;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lu3/p0/h/a;

    iget-object v1, p0, Lu3/p0/g/e;->p:Lu3/e0;

    .line 7
    iget-object v1, v1, Lu3/e0;->j:Lu3/q;

    .line 8
    invoke-direct {v0, v1}, Lu3/p0/h/a;-><init>(Lu3/q;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Lu3/p0/e/a;

    iget-object v1, p0, Lu3/p0/g/e;->p:Lu3/e0;

    .line 10
    iget-object v1, v1, Lu3/e0;->k:Lu3/d;

    .line 11
    invoke-direct {v0, v1}, Lu3/p0/e/a;-><init>(Lu3/d;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Lu3/p0/g/a;->a:Lu3/p0/g/a;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-boolean v0, p0, Lu3/p0/g/e;->r:Z

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lu3/p0/g/e;->p:Lu3/e0;

    .line 15
    iget-object v0, v0, Lu3/e0;->d:Ljava/util/List;

    .line 16
    invoke-static {v2, v0}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 17
    :cond_0
    new-instance v0, Lu3/p0/h/b;

    iget-boolean v1, p0, Lu3/p0/g/e;->r:Z

    invoke-direct {v0, v1}, Lu3/p0/h/b;-><init>(Z)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v9, Lu3/p0/h/g;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 19
    iget-object v5, p0, Lu3/p0/g/e;->q:Lu3/g0;

    .line 20
    iget-object v0, p0, Lu3/p0/g/e;->p:Lu3/e0;

    .line 21
    iget v6, v0, Lu3/e0;->y:I

    .line 22
    iget v7, v0, Lu3/e0;->z:I

    .line 23
    iget v8, v0, Lu3/e0;->A:I

    move-object v0, v9

    move-object v1, p0

    .line 24
    invoke-direct/range {v0 .. v8}, Lu3/p0/h/g;-><init>(Lu3/p0/g/e;Ljava/util/List;ILu3/p0/g/c;Lu3/g0;III)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    :try_start_0
    iget-object v2, p0, Lu3/p0/g/e;->q:Lu3/g0;

    invoke-virtual {v9, v2}, Lu3/p0/h/g;->a(Lu3/g0;)Lu3/k0;

    move-result-object v2

    .line 26
    iget-boolean v3, p0, Lu3/p0/g/e;->m:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 27
    invoke-virtual {p0, v1}, Lu3/p0/g/e;->h(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v2

    :cond_1
    :try_start_1
    const-string v3, "$this$closeQuietly"

    .line 28
    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    invoke-virtual {v2}, Lu3/k0;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :catch_0
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v2

    .line 31
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v0

    const/4 v2, 0x1

    .line 32
    :try_start_4
    invoke-virtual {p0, v0}, Lu3/p0/g/e;->h(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ls1/p;

    const-string v3, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-direct {v0, v3}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move v10, v2

    move-object v2, v0

    move v0, v10

    :goto_0
    if-nez v0, :cond_3

    .line 33
    invoke-virtual {p0, v1}, Lu3/p0/g/e;->h(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_3
    throw v2
.end method

.method public final g(Lu3/p0/g/c;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(",
            "Lu3/p0/g/c;",
            "ZZTE;)TE;"
        }
    .end annotation

    const-string v0, "exchange"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/p0/g/e;->n:Lu3/p0/g/c;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    return-object p4

    .line 2
    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lu3/p0/g/e;->j:Z

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p3, :cond_7

    iget-boolean v1, p0, Lu3/p0/g/e;->k:Z

    if-eqz v1, :cond_7

    :cond_2
    if-eqz p2, :cond_3

    .line 4
    iput-boolean p1, p0, Lu3/p0/g/e;->j:Z

    :cond_3
    if-eqz p3, :cond_4

    .line 5
    iput-boolean p1, p0, Lu3/p0/g/e;->k:Z

    .line 6
    :cond_4
    iget-boolean p2, p0, Lu3/p0/g/e;->j:Z

    if-nez p2, :cond_5

    iget-boolean p3, p0, Lu3/p0/g/e;->k:Z

    if-nez p3, :cond_5

    move p3, v0

    goto :goto_1

    :cond_5
    move p3, p1

    :goto_1
    if-nez p2, :cond_6

    .line 7
    iget-boolean p2, p0, Lu3/p0/g/e;->k:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lu3/p0/g/e;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_6

    move p1, v0

    :cond_6
    move p2, p1

    move p1, p3

    goto :goto_3

    .line 8
    :goto_2
    monitor-exit p0

    throw p1

    :cond_7
    move p2, p1

    :goto_3
    monitor-exit p0

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lu3/p0/g/e;->n:Lu3/p0/g/c;

    .line 10
    iget-object p1, p0, Lu3/p0/g/e;->g:Lu3/p0/g/i;

    if-eqz p1, :cond_8

    .line 11
    monitor-enter p1

    .line 12
    :try_start_1
    iget p3, p1, Lu3/p0/g/i;->l:I

    add-int/2addr p3, v0

    iput p3, p1, Lu3/p0/g/i;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    monitor-exit p1

    goto :goto_4

    :catchall_1
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_8
    :goto_4
    if-eqz p2, :cond_9

    .line 14
    invoke-virtual {p0, p4}, Lu3/p0/g/e;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1

    :cond_9
    return-object p4
.end method

.method public final h(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lu3/p0/g/e;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lu3/p0/g/e;->l:Z

    .line 4
    iget-boolean v0, p0, Lu3/p0/g/e;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lu3/p0/g/e;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 5
    :cond_0
    monitor-exit p0

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lu3/p0/g/e;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    throw p1
.end method

.method public final i()Ljava/net/Socket;
    .locals 8

    .line 1
    iget-object v0, p0, Lu3/p0/g/e;->g:Lu3/p0/g/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2
    sget-object v2, Lu3/p0/c;->a:[B

    .line 3
    iget-object v2, v0, Lu3/p0/g/i;->o:Ljava/util/List;

    .line 4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 5
    check-cast v6, Ljava/lang/ref/Reference;

    .line 6
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lu3/p0/g/e;

    invoke-static {v6, p0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_1
    const/4 v3, 0x1

    if-eq v5, v7, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    if-eqz v6, :cond_7

    .line 7
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    iput-object v1, p0, Lu3/p0/g/e;->g:Lu3/p0/g/i;

    .line 9
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 11
    iput-wide v5, v0, Lu3/p0/g/i;->p:J

    .line 12
    iget-object v2, p0, Lu3/p0/g/e;->a:Lu3/p0/g/j;

    .line 13
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "connection"

    invoke-static {v0, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v5, Lu3/p0/c;->a:[B

    .line 15
    iget-boolean v5, v0, Lu3/p0/g/i;->i:Z

    if-nez v5, :cond_4

    .line 16
    iget v5, v2, Lu3/p0/g/j;->e:I

    if-nez v5, :cond_3

    goto :goto_3

    .line 17
    :cond_3
    iget-object v3, v2, Lu3/p0/g/j;->b:Lu3/p0/f/c;

    iget-object v2, v2, Lu3/p0/g/j;->c:Lu3/p0/g/j$a;

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    invoke-static {v3, v2, v5, v6, v7}, Lu3/p0/f/c;->d(Lu3/p0/f/c;Lu3/p0/f/a;JI)V

    goto :goto_4

    .line 18
    :cond_4
    :goto_3
    iput-boolean v3, v0, Lu3/p0/g/i;->i:Z

    .line 19
    iget-object v4, v2, Lu3/p0/g/j;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 20
    iget-object v4, v2, Lu3/p0/g/j;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v2, v2, Lu3/p0/g/j;->b:Lu3/p0/f/c;

    invoke-virtual {v2}, Lu3/p0/f/c;->a()V

    :cond_5
    move v4, v3

    :goto_4
    if-eqz v4, :cond_6

    .line 21
    invoke-virtual {v0}, Lu3/p0/g/i;->m()Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_6
    return-object v1

    .line 22
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_8
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v1
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu3/p0/g/e;->m:Z

    return v0
.end method

.method public request()Lu3/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/p0/g/e;->q:Lu3/g0;

    return-object v0
.end method
