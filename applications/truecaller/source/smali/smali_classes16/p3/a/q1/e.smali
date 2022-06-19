.class public final Lp3/a/q1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/q1/e$f;,
        Lp3/a/q1/e$g;,
        Lp3/a/q1/e$c;,
        Lp3/a/q1/e$h;,
        Lp3/a/q1/e$e;,
        Lp3/a/q1/e$b;,
        Lp3/a/q1/e$d;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Lp3/a/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/c$a<",
            "Lp3/a/q1/e$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lp3/a/q1/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lp3/a/q1/e;->a:Ljava/util/logging/Logger;

    const-string v0, "internal-stub-type"

    .line 2
    invoke-static {v0}, Lp3/a/c$a;->a(Ljava/lang/String;)Lp3/a/c$a;

    move-result-object v0

    sput-object v0, Lp3/a/q1/e;->b:Lp3/a/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lp3/a/d;",
            "Lp3/a/p0<",
            "TReqT;TRespT;>;",
            "Lp3/a/c;",
            "TReqT;)TRespT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lp3/a/q1/e$g;

    invoke-direct {v0}, Lp3/a/q1/e$g;-><init>()V

    .line 2
    sget-object v1, Lp3/a/q1/e;->b:Lp3/a/c$a;

    sget-object v2, Lp3/a/q1/e$f;->a:Lp3/a/q1/e$f;

    .line 3
    invoke-virtual {p2, v1, v2}, Lp3/a/c;->f(Lp3/a/c$a;Ljava/lang/Object;)Lp3/a/c;

    move-result-object p2

    .line 4
    new-instance v1, Lp3/a/c;

    invoke-direct {v1, p2}, Lp3/a/c;-><init>(Lp3/a/c;)V

    .line 5
    iput-object v0, v1, Lp3/a/c;->b:Ljava/util/concurrent/Executor;

    .line 6
    invoke-virtual {p0, p1, v1}, Lp3/a/d;->h(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 7
    :try_start_0
    invoke-static {p0, p3}, Lp3/a/q1/e;->c(Lp3/a/f;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :goto_0
    move-object v1, p3

    check-cast v1, Lcom/google/common/util/concurrent/AbstractFuture;

    :try_start_1
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_0

    .line 9
    :try_start_2
    invoke-virtual {v0}, Lp3/a/q1/e$g;->a()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p2

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "Thread interrupted"

    .line 10
    invoke-virtual {p0, v2, p2}, Lp3/a/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move p2, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p2

    goto :goto_1

    :catch_2
    move-exception p2

    goto :goto_2

    .line 11
    :cond_0
    :try_start_4
    invoke-static {p3}, Lp3/a/q1/e;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p2, :cond_1

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p3

    move v1, p2

    move-object p2, p3

    .line 13
    :goto_1
    :try_start_5
    invoke-static {p0, p2}, Lp3/a/q1/e;->b(Lp3/a/f;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :catch_4
    move-exception p3

    move v1, p2

    move-object p2, p3

    .line 14
    :goto_2
    :try_start_6
    invoke-static {p0, p2}, Lp3/a/q1/e;->b(Lp3/a/f;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :catchall_2
    move-exception p0

    move p2, v1

    :goto_3
    move v1, p2

    :goto_4
    if-eqz v1, :cond_2

    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw p0
.end method

.method public static b(Lp3/a/f;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/f<",
            "**>;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lp3/a/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    sget-object v0, Lp3/a/q1/e;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "RuntimeException encountered while closing call"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    instance-of p0, p1, Ljava/lang/RuntimeException;

    if-nez p0, :cond_1

    .line 4
    instance-of p0, p1, Ljava/lang/Error;

    if-eqz p0, :cond_0

    .line 5
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 7
    :cond_1
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1
.end method

.method public static c(Lp3/a/f;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lp3/a/f<",
            "TReqT;TRespT;>;TReqT;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TRespT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lp3/a/q1/e$c;

    invoke-direct {v0, p0}, Lp3/a/q1/e$c;-><init>(Lp3/a/f;)V

    .line 2
    new-instance v1, Lp3/a/q1/e$h;

    invoke-direct {v1, v0}, Lp3/a/q1/e$h;-><init>(Lp3/a/q1/e$c;)V

    .line 3
    new-instance v2, Lp3/a/o0;

    invoke-direct {v2}, Lp3/a/o0;-><init>()V

    invoke-virtual {p0, v1, v2}, Lp3/a/f;->e(Lp3/a/f$a;Lp3/a/o0;)V

    .line 4
    invoke-virtual {v1}, Lp3/a/q1/e$h;->e()V

    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lp3/a/f;->d(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lp3/a/f;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p0, p1}, Lp3/a/q1/e;->b(Lp3/a/f;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    throw v1

    :catch_1
    move-exception p1

    .line 8
    invoke-static {p0, p1}, Lp3/a/q1/e;->b(Lp3/a/f;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    throw v1
.end method

.method public static d(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1
    check-cast p0, Lcom/google/common/util/concurrent/AbstractFuture;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string v0, "t"

    .line 3
    invoke-static {p0, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    instance-of v1, v0, Lp3/a/h1;

    if-nez v1, :cond_1

    .line 5
    instance-of v1, v0, Lp3/a/i1;

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    check-cast v0, Lp3/a/i1;

    .line 8
    new-instance p0, Lp3/a/i1;

    .line 9
    iget-object v1, v0, Lp3/a/i1;->a:Lp3/a/g1;

    .line 10
    iget-object v0, v0, Lp3/a/i1;->b:Lp3/a/o0;

    .line 11
    invoke-direct {p0, v1, v0}, Lp3/a/i1;-><init>(Lp3/a/g1;Lp3/a/o0;)V

    goto :goto_1

    .line 12
    :cond_1
    check-cast v0, Lp3/a/h1;

    .line 13
    new-instance p0, Lp3/a/i1;

    .line 14
    iget-object v1, v0, Lp3/a/h1;->a:Lp3/a/g1;

    .line 15
    iget-object v0, v0, Lp3/a/h1;->b:Lp3/a/o0;

    .line 16
    invoke-direct {p0, v1, v0}, Lp3/a/i1;-><init>(Lp3/a/g1;Lp3/a/o0;)V

    goto :goto_1

    .line 17
    :cond_2
    sget-object v0, Lp3/a/g1;->h:Lp3/a/g1;

    const-string v1, "unexpected exception"

    invoke-virtual {v0, v1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lp3/a/g1;->a()Lp3/a/i1;

    move-result-object p0

    .line 19
    :goto_1
    throw p0

    :catch_1
    move-exception p0

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 21
    sget-object v0, Lp3/a/g1;->g:Lp3/a/g1;

    const-string v1, "Thread interrupted"

    .line 22
    invoke-virtual {v0, v1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lp3/a/g1;->a()Lp3/a/i1;

    move-result-object p0

    throw p0
.end method
