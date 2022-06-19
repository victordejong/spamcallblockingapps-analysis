.class public final Lp3/a/n1/q;
.super Lp3/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/q$d;,
        Lp3/a/n1/q$g;,
        Lp3/a/n1/q$e;,
        Lp3/a/n1/q$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lp3/a/f<",
        "TReqT;TRespT;>;"
    }
.end annotation


# static fields
.field public static final t:Ljava/util/logging/Logger;

.field public static final u:[B


# instance fields
.field public final a:Lp3/a/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/p0<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field public final b:Lp3/c/d;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Z

.field public final e:Lp3/a/n1/n;

.field public final f:Lp3/a/q;

.field public volatile g:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public final h:Z

.field public i:Lp3/a/c;

.field public j:Lp3/a/n1/s;

.field public volatile k:Z

.field public l:Z

.field public m:Z

.field public final n:Lp3/a/n1/q$e;

.field public final o:Lp3/a/n1/q$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/n1/q<",
            "TReqT;TRespT;>.f;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/concurrent/ScheduledExecutorService;

.field public q:Z

.field public r:Lp3/a/t;

.field public s:Lp3/a/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lp3/a/n1/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lp3/a/n1/q;->t:Ljava/util/logging/Logger;

    const-string v0, "US-ASCII"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lp3/a/n1/q;->u:[B

    return-void
.end method

.method public constructor <init>(Lp3/a/p0;Ljava/util/concurrent/Executor;Lp3/a/c;Lp3/a/n1/q$e;Ljava/util/concurrent/ScheduledExecutorService;Lp3/a/n1/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/p0<",
            "TReqT;TRespT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lp3/a/c;",
            "Lp3/a/n1/q$e;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lp3/a/n1/n;",
            "Lp3/a/c0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lp3/a/f;-><init>()V

    .line 2
    new-instance v0, Lp3/a/n1/q$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lp3/a/n1/q$f;-><init>(Lp3/a/n1/q;Lp3/a/n1/q$a;)V

    iput-object v0, p0, Lp3/a/n1/q;->o:Lp3/a/n1/q$f;

    .line 3
    sget-object v0, Lp3/a/t;->d:Lp3/a/t;

    .line 4
    iput-object v0, p0, Lp3/a/n1/q;->r:Lp3/a/t;

    .line 5
    sget-object v0, Lp3/a/n;->b:Lp3/a/n;

    .line 6
    iput-object v0, p0, Lp3/a/n1/q;->s:Lp3/a/n;

    .line 7
    iput-object p1, p0, Lp3/a/n1/q;->a:Lp3/a/p0;

    .line 8
    iget-object v0, p1, Lp3/a/p0;->b:Ljava/lang/String;

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 10
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lp3/c/a;->a:Lp3/c/d;

    .line 11
    iput-object v0, p0, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 12
    sget-object v0, Lcom/google/common/util/concurrent/DirectExecutor;->INSTANCE:Lcom/google/common/util/concurrent/DirectExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    .line 13
    new-instance p2, Lp3/a/n1/k2;

    invoke-direct {p2}, Lp3/a/n1/k2;-><init>()V

    iput-object p2, p0, Lp3/a/n1/q;->c:Ljava/util/concurrent/Executor;

    .line 14
    iput-boolean v1, p0, Lp3/a/n1/q;->d:Z

    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lp3/a/n1/l2;

    invoke-direct {v0, p2}, Lp3/a/n1/l2;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lp3/a/n1/q;->c:Ljava/util/concurrent/Executor;

    .line 16
    iput-boolean v2, p0, Lp3/a/n1/q;->d:Z

    .line 17
    :goto_0
    iput-object p6, p0, Lp3/a/n1/q;->e:Lp3/a/n1/n;

    .line 18
    invoke-static {}, Lp3/a/q;->l()Lp3/a/q;

    move-result-object p2

    iput-object p2, p0, Lp3/a/n1/q;->f:Lp3/a/q;

    .line 19
    iget-object p1, p1, Lp3/a/p0;->a:Lp3/a/p0$d;

    .line 20
    sget-object p2, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    if-eq p1, p2, :cond_2

    .line 21
    sget-object p2, Lp3/a/p0$d;->c:Lp3/a/p0$d;

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lp3/a/n1/q;->h:Z

    .line 22
    iput-object p3, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    .line 23
    iput-object p4, p0, Lp3/a/n1/q;->n:Lp3/a/n1/q$e;

    .line 24
    iput-object p5, p0, Lp3/a/n1/q;->p:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lp3/a/n1/q;->f(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 5
    sget-object p2, Lp3/c/c;->a:Lp3/c/a;

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    throw p1
.end method

.method public b()V
    .locals 4

    .line 1
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v1, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "Not started"

    invoke-static {v1, v3}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 4
    iget-boolean v1, p0, Lp3/a/n1/q;->l:Z

    xor-int/2addr v1, v2

    const-string v3, "call was cancelled"

    invoke-static {v1, v3}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 5
    iget-boolean v1, p0, Lp3/a/n1/q;->m:Z

    xor-int/2addr v1, v2

    const-string v3, "call already half-closed"

    invoke-static {v1, v3}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 6
    iput-boolean v2, p0, Lp3/a/n1/q;->m:Z

    .line 7
    iget-object v1, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    invoke-interface {v1}, Lp3/a/n1/s;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    .line 9
    sget-object v1, Lp3/c/c;->a:Lp3/c/a;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    throw v0
.end method

.method public c(I)V
    .locals 5

    .line 1
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v1, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "Not started"

    invoke-static {v1, v4}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v1, "Number requested must be non-negative"

    .line 4
    invoke-static {v2, v1}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    invoke-interface {v1, p1}, Lp3/a/n1/s2;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 7
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    throw p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lp3/a/n1/q;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 5
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    throw p1
.end method

.method public e(Lp3/a/f$a;Lp3/a/o0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/f$a<",
            "TRespT;>;",
            "Lp3/a/o0;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lp3/a/n1/q;->j(Lp3/a/f$a;Lp3/a/o0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 5
    sget-object p2, Lp3/c/c;->a:Lp3/c/a;

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    throw p1
.end method

.method public final f(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string v0, "Cancelled without a message or cause"

    invoke-direct {p2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lp3/a/n1/q;->t:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Cancelling without a message or cause is suboptimal"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lp3/a/n1/q;->l:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lp3/a/n1/q;->l:Z

    .line 5
    :try_start_0
    iget-object v0, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    if-eqz v0, :cond_4

    .line 6
    sget-object v0, Lp3/a/g1;->g:Lp3/a/g1;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "Call cancelled without message"

    .line 8
    invoke-virtual {v0, p1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p1, p2}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p1

    .line 10
    :cond_3
    iget-object p2, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    invoke-interface {p2, p1}, Lp3/a/n1/s;->h(Lp3/a/g1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_4
    invoke-virtual {p0}, Lp3/a/n1/q;->h()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lp3/a/n1/q;->h()V

    throw p1
.end method

.method public final g()Lp3/a/r;
    .locals 6

    .line 1
    iget-object v0, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    .line 2
    iget-object v0, v0, Lp3/a/c;->a:Lp3/a/r;

    .line 3
    iget-object v1, p0, Lp3/a/n1/q;->f:Lp3/a/q;

    invoke-virtual {v1}, Lp3/a/q;->s()Lp3/a/r;

    move-result-object v1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {v0, v1}, Lp3/a/r;->a(Lp3/a/r;)V

    .line 5
    invoke-virtual {v0, v1}, Lp3/a/r;->a(Lp3/a/r;)V

    .line 6
    iget-wide v2, v0, Lp3/a/r;->b:J

    iget-wide v4, v1, Lp3/a/r;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/q;->f:Lp3/a/q;

    iget-object v1, p0, Lp3/a/n1/q;->o:Lp3/a/n1/q$f;

    invoke-virtual {v0, v1}, Lp3/a/q;->I(Lp3/a/q$b;)V

    .line 2
    iget-object v0, p0, Lp3/a/n1/q;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Not started"

    invoke-static {v0, v2}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lp3/a/n1/q;->l:Z

    xor-int/2addr v0, v1

    const-string v2, "call was cancelled"

    invoke-static {v0, v2}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 3
    iget-boolean v0, p0, Lp3/a/n1/q;->m:Z

    xor-int/2addr v0, v1

    const-string v1, "call was half-closed"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    instance-of v1, v0, Lp3/a/n1/i2;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lp3/a/n1/i2;

    .line 6
    invoke-virtual {v0, p1}, Lp3/a/n1/i2;->z(Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v1, p0, Lp3/a/n1/q;->a:Lp3/a/p0;

    .line 8
    iget-object v1, v1, Lp3/a/p0;->d:Lp3/a/p0$c;

    invoke-interface {v1, p1}, Lp3/a/p0$c;->a(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Lp3/a/n1/s2;->c(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :goto_1
    iget-boolean p1, p0, Lp3/a/n1/q;->h:Z

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    invoke-interface {p1}, Lp3/a/n1/s2;->flush()V

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 12
    iget-object v0, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    sget-object v1, Lp3/a/g1;->g:Lp3/a/g1;

    const-string v2, "Client sendMessage() failed with Error"

    invoke-virtual {v1, v2}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v1

    invoke-interface {v0, v1}, Lp3/a/n1/s;->h(Lp3/a/g1;)V

    .line 13
    throw p1

    :catch_1
    move-exception p1

    .line 14
    iget-object v0, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    sget-object v1, Lp3/a/g1;->g:Lp3/a/g1;

    invoke-virtual {v1, p1}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p1

    const-string v1, "Failed to stream message"

    invoke-virtual {p1, v1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    invoke-interface {v0, p1}, Lp3/a/n1/s;->h(Lp3/a/g1;)V

    return-void
.end method

.method public final j(Lp3/a/f$a;Lp3/a/o0;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/f$a<",
            "TRespT;>;",
            "Lp3/a/o0;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp3/a/k$b;->a:Lp3/a/k;

    sget-object v1, Lp3/a/n1/x1;->a:Lp3/a/n1/x1;

    iget-object v2, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v5, "Already started"

    invoke-static {v2, v5}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v2, p0, Lp3/a/n1/q;->l:Z

    xor-int/2addr v2, v4

    const-string v5, "call was cancelled"

    invoke-static {v2, v5}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    const-string v2, "observer"

    .line 3
    invoke-static {p1, v2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "headers"

    .line 4
    invoke-static {p2, v2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lp3/a/n1/q;->f:Lp3/a/q;

    invoke-virtual {v2}, Lp3/a/q;->E()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iput-object v1, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    .line 7
    iget-object p2, p0, Lp3/a/n1/q;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Lp3/a/n1/q$b;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/q$b;-><init>(Lp3/a/n1/q;Lp3/a/f$a;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 8
    :cond_1
    iget-object v2, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    sget-object v5, Lp3/a/n1/s1$b;->g:Lp3/a/c$a;

    invoke-virtual {v2, v5}, Lp3/a/c;->a(Lp3/a/c$a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp3/a/n1/s1$b;

    if-nez v2, :cond_2

    goto/16 :goto_3

    .line 9
    :cond_2
    iget-object v5, v2, Lp3/a/n1/s1$b;->a:Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 10
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    sget-object v8, Lp3/a/r;->d:Lp3/a/r$b;

    const-string v9, "units"

    .line 12
    invoke-static {v7, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    new-instance v9, Lp3/a/r;

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    invoke-direct {v9, v8, v5, v6, v4}, Lp3/a/r;-><init>(Lp3/a/r$c;JZ)V

    .line 14
    iget-object v5, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    .line 15
    iget-object v5, v5, Lp3/a/c;->a:Lp3/a/r;

    if-eqz v5, :cond_3

    .line 16
    invoke-virtual {v9, v5}, Lp3/a/r;->c(Lp3/a/r;)I

    move-result v5

    if-gez v5, :cond_4

    .line 17
    :cond_3
    iget-object v5, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    invoke-virtual {v5, v9}, Lp3/a/c;->c(Lp3/a/r;)Lp3/a/c;

    move-result-object v5

    iput-object v5, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    .line 18
    :cond_4
    iget-object v5, v2, Lp3/a/n1/s1$b;->b:Ljava/lang/Boolean;

    if-eqz v5, :cond_6

    .line 19
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    .line 20
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v6, Lp3/a/c;

    invoke-direct {v6, v5}, Lp3/a/c;-><init>(Lp3/a/c;)V

    .line 22
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, v6, Lp3/a/c;->h:Ljava/lang/Boolean;

    goto :goto_1

    .line 23
    :cond_5
    iget-object v5, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    .line 24
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v6, Lp3/a/c;

    invoke-direct {v6, v5}, Lp3/a/c;-><init>(Lp3/a/c;)V

    .line 26
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v5, v6, Lp3/a/c;->h:Ljava/lang/Boolean;

    .line 27
    :goto_1
    iput-object v6, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    .line 28
    :cond_6
    iget-object v5, v2, Lp3/a/n1/s1$b;->c:Ljava/lang/Integer;

    if-eqz v5, :cond_8

    .line 29
    iget-object v6, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    .line 30
    iget-object v7, v6, Lp3/a/c;->i:Ljava/lang/Integer;

    if-eqz v7, :cond_7

    .line 31
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, v2, Lp3/a/n1/s1$b;->c:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 32
    invoke-virtual {v6, v5}, Lp3/a/c;->d(I)Lp3/a/c;

    move-result-object v5

    iput-object v5, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    goto :goto_2

    .line 33
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lp3/a/c;->d(I)Lp3/a/c;

    move-result-object v5

    iput-object v5, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    .line 34
    :cond_8
    :goto_2
    iget-object v5, v2, Lp3/a/n1/s1$b;->d:Ljava/lang/Integer;

    if-eqz v5, :cond_a

    .line 35
    iget-object v6, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    .line 36
    iget-object v7, v6, Lp3/a/c;->j:Ljava/lang/Integer;

    if-eqz v7, :cond_9

    .line 37
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, v2, Lp3/a/n1/s1$b;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 38
    invoke-virtual {v6, v2}, Lp3/a/c;->e(I)Lp3/a/c;

    move-result-object v2

    iput-object v2, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    goto :goto_3

    .line 39
    :cond_9
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v2}, Lp3/a/c;->e(I)Lp3/a/c;

    move-result-object v2

    iput-object v2, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    .line 40
    :cond_a
    :goto_3
    iget-object v2, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    .line 41
    iget-object v2, v2, Lp3/a/c;->e:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 42
    iget-object v5, p0, Lp3/a/n1/q;->s:Lp3/a/n;

    .line 43
    iget-object v5, v5, Lp3/a/n;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp3/a/m;

    if-nez v5, :cond_c

    .line 44
    iput-object v1, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    .line 45
    iget-object p2, p0, Lp3/a/n1/q;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Lp3/a/n1/q$c;

    invoke-direct {v0, p0, p1, v2}, Lp3/a/n1/q$c;-><init>(Lp3/a/n1/q;Lp3/a/f$a;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    move-object v5, v0

    .line 46
    :cond_c
    iget-object v1, p0, Lp3/a/n1/q;->r:Lp3/a/t;

    iget-boolean v2, p0, Lp3/a/n1/q;->q:Z

    .line 47
    sget-object v6, Lp3/a/n1/r0;->c:Lp3/a/o0$f;

    invoke-virtual {p2, v6}, Lp3/a/o0;->b(Lp3/a/o0$f;)V

    if-eq v5, v0, :cond_d

    .line 48
    invoke-interface {v5}, Lp3/a/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v6, v0}, Lp3/a/o0;->h(Lp3/a/o0$f;Ljava/lang/Object;)V

    .line 49
    :cond_d
    sget-object v0, Lp3/a/n1/r0;->d:Lp3/a/o0$f;

    invoke-virtual {p2, v0}, Lp3/a/o0;->b(Lp3/a/o0$f;)V

    .line 50
    iget-object v1, v1, Lp3/a/t;->b:[B

    .line 51
    array-length v6, v1

    if-eqz v6, :cond_e

    .line 52
    invoke-virtual {p2, v0, v1}, Lp3/a/o0;->h(Lp3/a/o0$f;Ljava/lang/Object;)V

    .line 53
    :cond_e
    sget-object v0, Lp3/a/n1/r0;->e:Lp3/a/o0$f;

    invoke-virtual {p2, v0}, Lp3/a/o0;->b(Lp3/a/o0$f;)V

    .line 54
    sget-object v0, Lp3/a/n1/r0;->f:Lp3/a/o0$f;

    invoke-virtual {p2, v0}, Lp3/a/o0;->b(Lp3/a/o0$f;)V

    if-eqz v2, :cond_f

    .line 55
    sget-object v1, Lp3/a/n1/q;->u:[B

    invoke-virtual {p2, v0, v1}, Lp3/a/o0;->h(Lp3/a/o0$f;Ljava/lang/Object;)V

    .line 56
    :cond_f
    invoke-virtual {p0}, Lp3/a/n1/q;->g()Lp3/a/r;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 57
    invoke-virtual {v0}, Lp3/a/r;->d()Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v4

    goto :goto_4

    :cond_10
    move v1, v3

    :goto_4
    if-nez v1, :cond_14

    .line 58
    iget-object v1, p0, Lp3/a/n1/q;->f:Lp3/a/q;

    .line 59
    invoke-virtual {v1}, Lp3/a/q;->s()Lp3/a/r;

    move-result-object v1

    iget-object v2, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    .line 60
    iget-object v2, v2, Lp3/a/c;->a:Lp3/a/r;

    .line 61
    sget-object v6, Lp3/a/n1/q;->t:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_13

    if-eqz v0, :cond_13

    .line 62
    invoke-virtual {v0, v1}, Lp3/a/r;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_6

    :cond_11
    const-wide/16 v7, 0x0

    .line 63
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lp3/a/r;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 64
    new-instance v9, Ljava/lang/StringBuilder;

    new-array v10, v4, [Ljava/lang/Object;

    .line 65
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v10, v3

    const-string v7, "Call timeout set to \'%d\' ns, due to context deadline."

    .line 66
    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_12

    const-string v1, " Explicit call timeout was not set."

    .line 67
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 68
    :cond_12
    invoke-virtual {v2, v1}, Lp3/a/r;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    new-array v4, v4, [Ljava/lang/Object;

    .line 69
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v3

    const-string v1, " Explicit call timeout was \'%d\' ns."

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :goto_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 71
    :cond_13
    :goto_6
    iget-object v1, p0, Lp3/a/n1/q;->n:Lp3/a/n1/q$e;

    iget-object v2, p0, Lp3/a/n1/q;->a:Lp3/a/p0;

    iget-object v3, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    iget-object v4, p0, Lp3/a/n1/q;->f:Lp3/a/q;

    check-cast v1, Lp3/a/n1/m1$g;

    .line 72
    iget-object v6, v1, Lp3/a/n1/m1$g;->a:Lp3/a/n1/m1;

    .line 73
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v6, Lp3/a/n1/c2;

    invoke-direct {v6, v2, p2, v3}, Lp3/a/n1/c2;-><init>(Lp3/a/p0;Lp3/a/o0;Lp3/a/c;)V

    .line 75
    invoke-virtual {v1, v6}, Lp3/a/n1/m1$g;->a(Lp3/a/i0$f;)Lp3/a/n1/u;

    move-result-object v1

    .line 76
    invoke-virtual {v4}, Lp3/a/q;->d()Lp3/a/q;

    move-result-object v6

    .line 77
    :try_start_0
    invoke-interface {v1, v2, p2, v3}, Lp3/a/n1/u;->e(Lp3/a/p0;Lp3/a/o0;Lp3/a/c;)Lp3/a/n1/s;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {v4, v6}, Lp3/a/q;->q(Lp3/a/q;)V

    .line 79
    iput-object p2, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    goto :goto_7

    :catchall_0
    move-exception p1

    .line 80
    invoke-virtual {v4, v6}, Lp3/a/q;->q(Lp3/a/q;)V

    throw p1

    .line 81
    :cond_14
    new-instance p2, Lp3/a/n1/h0;

    sget-object v1, Lp3/a/g1;->i:Lp3/a/g1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientCall started after deadline exceeded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v1

    invoke-direct {p2, v1}, Lp3/a/n1/h0;-><init>(Lp3/a/g1;)V

    iput-object p2, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    .line 83
    :goto_7
    iget-boolean p2, p0, Lp3/a/n1/q;->d:Z

    if-eqz p2, :cond_15

    .line 84
    iget-object p2, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    invoke-interface {p2}, Lp3/a/n1/s2;->f()V

    .line 85
    :cond_15
    iget-object p2, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    .line 86
    iget-object p2, p2, Lp3/a/c;->c:Ljava/lang/String;

    if-eqz p2, :cond_16

    .line 87
    iget-object v1, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    invoke-interface {v1, p2}, Lp3/a/n1/s;->k(Ljava/lang/String;)V

    .line 88
    :cond_16
    iget-object p2, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    .line 89
    iget-object p2, p2, Lp3/a/c;->i:Ljava/lang/Integer;

    if-eqz p2, :cond_17

    .line 90
    iget-object v1, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v1, p2}, Lp3/a/n1/s;->d(I)V

    .line 91
    :cond_17
    iget-object p2, p0, Lp3/a/n1/q;->i:Lp3/a/c;

    .line 92
    iget-object p2, p2, Lp3/a/c;->j:Ljava/lang/Integer;

    if-eqz p2, :cond_18

    .line 93
    iget-object v1, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v1, p2}, Lp3/a/n1/s;->e(I)V

    :cond_18
    if-eqz v0, :cond_19

    .line 94
    iget-object p2, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    invoke-interface {p2, v0}, Lp3/a/n1/s;->m(Lp3/a/r;)V

    .line 95
    :cond_19
    iget-object p2, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    invoke-interface {p2, v5}, Lp3/a/n1/s2;->a(Lp3/a/m;)V

    .line 96
    iget-boolean p2, p0, Lp3/a/n1/q;->q:Z

    if-eqz p2, :cond_1a

    .line 97
    iget-object v1, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    invoke-interface {v1, p2}, Lp3/a/n1/s;->g(Z)V

    .line 98
    :cond_1a
    iget-object p2, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    iget-object v1, p0, Lp3/a/n1/q;->r:Lp3/a/t;

    invoke-interface {p2, v1}, Lp3/a/n1/s;->j(Lp3/a/t;)V

    .line 99
    iget-object p2, p0, Lp3/a/n1/q;->e:Lp3/a/n1/n;

    .line 100
    iget-object v1, p2, Lp3/a/n1/n;->b:Lp3/a/n1/l1;

    const-wide/16 v2, 0x1

    invoke-interface {v1, v2, v3}, Lp3/a/n1/l1;->a(J)V

    .line 101
    iget-object p2, p2, Lp3/a/n1/n;->a:Lp3/a/n1/u2;

    invoke-interface {p2}, Lp3/a/n1/u2;->a()J

    .line 102
    iget-object p2, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    new-instance v1, Lp3/a/n1/q$d;

    invoke-direct {v1, p0, p1}, Lp3/a/n1/q$d;-><init>(Lp3/a/n1/q;Lp3/a/f$a;)V

    invoke-interface {p2, v1}, Lp3/a/n1/s;->n(Lp3/a/n1/t;)V

    .line 103
    iget-object p1, p0, Lp3/a/n1/q;->f:Lp3/a/q;

    iget-object p2, p0, Lp3/a/n1/q;->o:Lp3/a/n1/q$f;

    sget-object v1, Lcom/google/common/util/concurrent/DirectExecutor;->INSTANCE:Lcom/google/common/util/concurrent/DirectExecutor;

    invoke-virtual {p1, p2, v1}, Lp3/a/q;->b(Lp3/a/q$b;Ljava/util/concurrent/Executor;)V

    if-eqz v0, :cond_1b

    .line 104
    iget-object p1, p0, Lp3/a/n1/q;->f:Lp3/a/q;

    .line 105
    invoke-virtual {p1}, Lp3/a/q;->s()Lp3/a/r;

    move-result-object p1

    invoke-virtual {v0, p1}, Lp3/a/r;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lp3/a/n1/q;->p:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p1, :cond_1b

    .line 106
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1}, Lp3/a/r;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 107
    iget-object p2, p0, Lp3/a/n1/q;->p:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lp3/a/n1/k1;

    new-instance v3, Lp3/a/n1/q$g;

    invoke-direct {v3, p0, v0, v1}, Lp3/a/n1/q$g;-><init>(Lp3/a/n1/q;J)V

    invoke-direct {v2, v3}, Lp3/a/n1/k1;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {p2, v2, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 108
    iput-object p1, p0, Lp3/a/n1/q;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 109
    :cond_1b
    iget-boolean p1, p0, Lp3/a/n1/q;->k:Z

    if-eqz p1, :cond_1c

    .line 110
    invoke-virtual {p0}, Lp3/a/n1/q;->h()V

    :cond_1c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ln3/g0/y;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lp3/a/n1/q;->a:Lp3/a/p0;

    const-string v2, "method"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 3
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
