.class public abstract Ln3/m0/c0/t/w/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/m0/c0/t/w/a$h;,
        Ln3/m0/c0/t/w/a$f;,
        Ln3/m0/c0/t/w/a$b;,
        Ln3/m0/c0/t/w/a$g;,
        Ln3/m0/c0/t/w/a$c;,
        Ln3/m0/c0/t/w/a$d;,
        Ln3/m0/c0/t/w/a$e;,
        Ln3/m0/c0/t/w/a$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final d:Z

.field public static final e:Ljava/util/logging/Logger;

.field public static final f:Ln3/m0/c0/t/w/a$b;

.field public static final g:Ljava/lang/Object;


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public volatile b:Ln3/m0/c0/t/w/a$e;

.field public volatile c:Ln3/m0/c0/t/w/a$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Ln3/m0/c0/t/w/a$i;

    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    .line 2
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Ln3/m0/c0/t/w/a;->d:Z

    .line 4
    const-class v1, Ln3/m0/c0/t/w/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Ln3/m0/c0/t/w/a;->e:Ljava/util/logging/Logger;

    .line 5
    :try_start_0
    new-instance v1, Ln3/m0/c0/t/w/a$f;

    const-class v2, Ljava/lang/Thread;

    const-string v3, "a"

    .line 6
    invoke-static {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-string v2, "b"

    .line 7
    invoke-static {v0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v2, Ln3/m0/c0/t/w/a;

    const-string v5, "c"

    .line 8
    invoke-static {v2, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v0, Ln3/m0/c0/t/w/a;

    const-class v2, Ln3/m0/c0/t/w/a$e;

    const-string v6, "b"

    .line 9
    invoke-static {v0, v2, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v0, Ln3/m0/c0/t/w/a;

    const-class v2, Ljava/lang/Object;

    const-string v7, "a"

    .line 10
    invoke-static {v0, v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Ln3/m0/c0/t/w/a$f;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    new-instance v1, Ln3/m0/c0/t/w/a$h;

    invoke-direct {v1}, Ln3/m0/c0/t/w/a$h;-><init>()V

    .line 12
    :goto_0
    sput-object v1, Ln3/m0/c0/t/w/a;->f:Ln3/m0/c0/t/w/a$b;

    .line 13
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    if-eqz v0, :cond_0

    .line 14
    sget-object v1, Ln3/m0/c0/t/w/a;->e:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ln3/m0/c0/t/w/a;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ln3/m0/c0/t/w/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/m0/c0/t/w/a<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :cond_0
    :goto_0
    iget-object v2, p0, Ln3/m0/c0/t/w/a;->c:Ln3/m0/c0/t/w/a$i;

    .line 2
    sget-object v3, Ln3/m0/c0/t/w/a;->f:Ln3/m0/c0/t/w/a$b;

    sget-object v4, Ln3/m0/c0/t/w/a$i;->c:Ln3/m0/c0/t/w/a$i;

    invoke-virtual {v3, p0, v2, v4}, Ln3/m0/c0/t/w/a$b;->c(Ln3/m0/c0/t/w/a;Ln3/m0/c0/t/w/a$i;Ln3/m0/c0/t/w/a$i;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    if-eqz v2, :cond_2

    .line 3
    iget-object v3, v2, Ln3/m0/c0/t/w/a$i;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    .line 4
    iput-object v0, v2, Ln3/m0/c0/t/w/a$i;->a:Ljava/lang/Thread;

    .line 5
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 6
    :cond_1
    iget-object v2, v2, Ln3/m0/c0/t/w/a$i;->b:Ln3/m0/c0/t/w/a$i;

    goto :goto_1

    .line 7
    :cond_2
    iget-object v2, p0, Ln3/m0/c0/t/w/a;->b:Ln3/m0/c0/t/w/a$e;

    .line 8
    sget-object v3, Ln3/m0/c0/t/w/a;->f:Ln3/m0/c0/t/w/a$b;

    sget-object v4, Ln3/m0/c0/t/w/a$e;->d:Ln3/m0/c0/t/w/a$e;

    invoke-virtual {v3, p0, v2, v4}, Ln3/m0/c0/t/w/a$b;->a(Ln3/m0/c0/t/w/a;Ln3/m0/c0/t/w/a$e;Ln3/m0/c0/t/w/a$e;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    move-object p0, v1

    move-object v1, v2

    if-eqz v1, :cond_3

    .line 9
    iget-object v2, v1, Ln3/m0/c0/t/w/a$e;->c:Ln3/m0/c0/t/w/a$e;

    .line 10
    iput-object p0, v1, Ln3/m0/c0/t/w/a$e;->c:Ln3/m0/c0/t/w/a$e;

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz p0, :cond_6

    .line 11
    iget-object v1, p0, Ln3/m0/c0/t/w/a$e;->c:Ln3/m0/c0/t/w/a$e;

    .line 12
    iget-object v2, p0, Ln3/m0/c0/t/w/a$e;->a:Ljava/lang/Runnable;

    .line 13
    instance-of v3, v2, Ln3/m0/c0/t/w/a$g;

    if-eqz v3, :cond_4

    .line 14
    check-cast v2, Ln3/m0/c0/t/w/a$g;

    .line 15
    iget-object p0, v2, Ln3/m0/c0/t/w/a$g;->a:Ln3/m0/c0/t/w/a;

    .line 16
    iget-object v3, p0, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    if-ne v3, v2, :cond_5

    .line 17
    iget-object v3, v2, Ln3/m0/c0/t/w/a$g;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v3}, Ln3/m0/c0/t/w/a;->e(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v3

    .line 18
    sget-object v4, Ln3/m0/c0/t/w/a;->f:Ln3/m0/c0/t/w/a$b;

    invoke-virtual {v4, p0, v2, v3}, Ln3/m0/c0/t/w/a$b;->b(Ln3/m0/c0/t/w/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 19
    :cond_4
    iget-object p0, p0, Ln3/m0/c0/t/w/a$e;->b:Ljava/util/concurrent/Executor;

    invoke-static {v2, p0}, Ln3/m0/c0/t/w/a;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_5
    move-object p0, v1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public static c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Ln3/m0/c0/t/w/a;->e:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static e(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ln3/m0/c0/t/w/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Ln3/m0/c0/t/w/a;

    iget-object p0, p0, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    .line 3
    instance-of v0, p0, Ln3/m0/c0/t/w/a$c;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p0

    check-cast v0, Ln3/m0/c0/t/w/a$c;

    .line 5
    iget-boolean v2, v0, Ln3/m0/c0/t/w/a$c;->a:Z

    if-eqz v2, :cond_1

    .line 6
    iget-object p0, v0, Ln3/m0/c0/t/w/a$c;->b:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    new-instance p0, Ln3/m0/c0/t/w/a$c;

    iget-object v0, v0, Ln3/m0/c0/t/w/a$c;->b:Ljava/lang/Throwable;

    invoke-direct {p0, v1, v0}, Ln3/m0/c0/t/w/a$c;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object p0, Ln3/m0/c0/t/w/a$c;->d:Ln3/m0/c0/t/w/a$c;

    :cond_1
    :goto_0
    return-object p0

    .line 8
    :cond_2
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    .line 9
    sget-boolean v2, Ln3/m0/c0/t/w/a;->d:Z

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_3

    .line 10
    sget-object p0, Ln3/m0/c0/t/w/a$c;->d:Ln3/m0/c0/t/w/a$c;

    return-object p0

    .line 11
    :cond_3
    :try_start_0
    invoke-static {p0}, Ln3/m0/c0/t/w/a;->f(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 12
    sget-object v2, Ln3/m0/c0/t/w/a;->g:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-object v2

    :catchall_0
    move-exception p0

    .line 13
    new-instance v0, Ln3/m0/c0/t/w/a$d;

    invoke-direct {v0, p0}, Ln3/m0/c0/t/w/a$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_0
    move-exception v2

    if-nez v0, :cond_5

    .line 14
    new-instance v0, Ln3/m0/c0/t/w/a$d;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ln3/m0/c0/t/w/a$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 15
    :cond_5
    new-instance p0, Ln3/m0/c0/t/w/a$c;

    invoke-direct {p0, v1, v2}, Ln3/m0/c0/t/w/a$c;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_1
    move-exception p0

    .line 16
    new-instance v0, Ln3/m0/c0/t/w/a$d;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Ln3/m0/c0/t/w/a$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static f(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    .line 1
    :try_start_0
    invoke-static {p0}, Ln3/m0/c0/t/w/a;->f(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, p0, :cond_0

    const-string v1, "this future"

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_1
    const-string v0, "CANCELLED"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "FAILURE, cause=["

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 4

    .line 1
    sget-object v0, Ln3/m0/c0/t/w/a$e;->d:Ln3/m0/c0/t/w/a$e;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Ln3/m0/c0/t/w/a;->b:Ln3/m0/c0/t/w/a$e;

    if-eq v1, v0, :cond_2

    .line 4
    new-instance v2, Ln3/m0/c0/t/w/a$e;

    invoke-direct {v2, p1, p2}, Ln3/m0/c0/t/w/a$e;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 5
    :cond_0
    iput-object v1, v2, Ln3/m0/c0/t/w/a$e;->c:Ln3/m0/c0/t/w/a$e;

    .line 6
    sget-object v3, Ln3/m0/c0/t/w/a;->f:Ln3/m0/c0/t/w/a$b;

    invoke-virtual {v3, p0, v1, v2}, Ln3/m0/c0/t/w/a$b;->a(Ln3/m0/c0/t/w/a;Ln3/m0/c0/t/w/a$e;Ln3/m0/c0/t/w/a$e;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Ln3/m0/c0/t/w/a;->b:Ln3/m0/c0/t/w/a$e;

    if-ne v1, v0, :cond_0

    .line 8
    :cond_2
    invoke-static {p1, p2}, Ln3/m0/c0/t/w/a;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final cancel(Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2
    :goto_0
    instance-of v4, v0, Ln3/m0/c0/t/w/a$g;

    or-int/2addr v3, v4

    if-eqz v3, :cond_7

    .line 3
    sget-boolean v3, Ln3/m0/c0/t/w/a;->d:Z

    if-eqz v3, :cond_1

    .line 4
    new-instance v3, Ln3/m0/c0/t/w/a$c;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Ln3/m0/c0/t/w/a$c;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    sget-object v3, Ln3/m0/c0/t/w/a$c;->c:Ln3/m0/c0/t/w/a$c;

    goto :goto_1

    .line 6
    :cond_2
    sget-object v3, Ln3/m0/c0/t/w/a$c;->d:Ln3/m0/c0/t/w/a$c;

    :goto_1
    move-object v4, p0

    move v5, v2

    .line 7
    :cond_3
    :goto_2
    sget-object v6, Ln3/m0/c0/t/w/a;->f:Ln3/m0/c0/t/w/a$b;

    invoke-virtual {v6, v4, v0, v3}, Ln3/m0/c0/t/w/a$b;->b(Ln3/m0/c0/t/w/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 8
    invoke-static {v4}, Ln3/m0/c0/t/w/a;->b(Ln3/m0/c0/t/w/a;)V

    .line 9
    instance-of v4, v0, Ln3/m0/c0/t/w/a$g;

    if-eqz v4, :cond_8

    .line 10
    check-cast v0, Ln3/m0/c0/t/w/a$g;

    iget-object v0, v0, Ln3/m0/c0/t/w/a$g;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 11
    instance-of v4, v0, Ln3/m0/c0/t/w/a;

    if-eqz v4, :cond_5

    .line 12
    move-object v4, v0

    check-cast v4, Ln3/m0/c0/t/w/a;

    .line 13
    iget-object v0, v4, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    if-nez v0, :cond_4

    move v5, v1

    goto :goto_3

    :cond_4
    move v5, v2

    .line 14
    :goto_3
    instance-of v6, v0, Ln3/m0/c0/t/w/a$g;

    or-int/2addr v5, v6

    if-eqz v5, :cond_8

    move v5, v1

    goto :goto_2

    .line 15
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4

    .line 16
    :cond_6
    iget-object v0, v4, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    .line 17
    instance-of v6, v0, Ln3/m0/c0/t/w/a$g;

    if-nez v6, :cond_3

    move v1, v5

    goto :goto_4

    :cond_7
    move v1, v2

    :cond_8
    :goto_4
    return v1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ln3/m0/c0/t/w/a$c;

    if-nez v0, :cond_2

    .line 2
    instance-of v0, p1, Ln3/m0/c0/t/w/a$d;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Ln3/m0/c0/t/w/a;->g:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1

    .line 4
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Ln3/m0/c0/t/w/a$d;

    iget-object p1, p1, Ln3/m0/c0/t/w/a$d;->a:Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_2
    check-cast p1, Ln3/m0/c0/t/w/a$c;

    iget-object p1, p1, Ln3/m0/c0/t/w/a$c;->b:Ljava/lang/Throwable;

    .line 6
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8
    throw v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ln3/m0/c0/t/w/a$g;

    if-eqz v1, :cond_1

    const-string v1, "setFuture=["

    .line 3
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast v0, Ln3/m0/c0/t/w/a$g;

    iget-object v0, v0, Ln3/m0/c0/t/w/a$g;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    if-ne v0, p0, :cond_0

    const-string v0, "this future"

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "]"

    .line 5
    invoke-static {v1, v0, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    const-string v0, "remaining delay=["

    .line 7
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 43
    sget-object v0, Ln3/m0/c0/t/w/a$i;->c:Ln3/m0/c0/t/w/a$i;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_8

    .line 44
    iget-object v1, p0, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 45
    :goto_0
    instance-of v5, v1, Ln3/m0/c0/t/w/a$g;

    xor-int/2addr v5, v3

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 46
    invoke-virtual {p0, v1}, Ln3/m0/c0/t/w/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 47
    :cond_1
    iget-object v1, p0, Ln3/m0/c0/t/w/a;->c:Ln3/m0/c0/t/w/a$i;

    if-eq v1, v0, :cond_7

    .line 48
    new-instance v4, Ln3/m0/c0/t/w/a$i;

    invoke-direct {v4}, Ln3/m0/c0/t/w/a$i;-><init>()V

    .line 49
    :cond_2
    sget-object v5, Ln3/m0/c0/t/w/a;->f:Ln3/m0/c0/t/w/a$b;

    invoke-virtual {v5, v4, v1}, Ln3/m0/c0/t/w/a$b;->d(Ln3/m0/c0/t/w/a$i;Ln3/m0/c0/t/w/a$i;)V

    .line 50
    invoke-virtual {v5, p0, v1, v4}, Ln3/m0/c0/t/w/a$b;->c(Ln3/m0/c0/t/w/a;Ln3/m0/c0/t/w/a$i;Ln3/m0/c0/t/w/a$i;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 51
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 52
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 53
    iget-object v0, p0, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v2

    .line 54
    :goto_1
    instance-of v5, v0, Ln3/m0/c0/t/w/a$g;

    xor-int/2addr v5, v3

    and-int/2addr v1, v5

    if-eqz v1, :cond_3

    .line 55
    invoke-virtual {p0, v0}, Ln3/m0/c0/t/w/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 56
    :cond_5
    invoke-virtual {p0, v4}, Ln3/m0/c0/t/w/a;->h(Ln3/m0/c0/t/w/a$i;)V

    .line 57
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 58
    :cond_6
    iget-object v1, p0, Ln3/m0/c0/t/w/a;->c:Ln3/m0/c0/t/w/a$i;

    if-ne v1, v0, :cond_2

    .line 59
    :cond_7
    iget-object v0, p0, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ln3/m0/c0/t/w/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 60
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/m0/c0/t/w/a$i;->c:Ln3/m0/c0/t/w/a$i;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_16

    .line 3
    iget-object v3, p0, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 4
    :goto_0
    instance-of v6, v3, Ln3/m0/c0/t/w/a$g;

    xor-int/2addr v6, v4

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {p0, v3}, Ln3/m0/c0/t/w/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-lez v3, :cond_2

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    add-long/2addr v7, v1

    goto :goto_1

    :cond_2
    move-wide v7, v5

    :goto_1
    const-wide/16 v9, 0x3e8

    cmp-long v3, v1, v9

    if-ltz v3, :cond_a

    .line 7
    iget-object v3, p0, Ln3/m0/c0/t/w/a;->c:Ln3/m0/c0/t/w/a$i;

    if-eq v3, v0, :cond_9

    .line 8
    new-instance v5, Ln3/m0/c0/t/w/a$i;

    invoke-direct {v5}, Ln3/m0/c0/t/w/a$i;-><init>()V

    .line 9
    :cond_3
    sget-object v6, Ln3/m0/c0/t/w/a;->f:Ln3/m0/c0/t/w/a$b;

    invoke-virtual {v6, v5, v3}, Ln3/m0/c0/t/w/a$b;->d(Ln3/m0/c0/t/w/a$i;Ln3/m0/c0/t/w/a$i;)V

    .line 10
    invoke-virtual {v6, p0, v3, v5}, Ln3/m0/c0/t/w/a$b;->c(Ln3/m0/c0/t/w/a;Ln3/m0/c0/t/w/a$i;Ln3/m0/c0/t/w/a$i;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 11
    :cond_4
    invoke-static {p0, v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 12
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 13
    iget-object v0, p0, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_5

    move v1, v4

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 14
    :goto_2
    instance-of v2, v0, Ln3/m0/c0/t/w/a$g;

    xor-int/2addr v2, v4

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {p0, v0}, Ln3/m0/c0/t/w/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v1, v7, v0

    cmp-long v0, v1, v9

    if-gez v0, :cond_4

    .line 17
    invoke-virtual {p0, v5}, Ln3/m0/c0/t/w/a;->h(Ln3/m0/c0/t/w/a$i;)V

    move-object v3, p0

    move-object v11, v3

    move-object v0, p3

    goto :goto_5

    .line 18
    :cond_7
    invoke-virtual {p0, v5}, Ln3/m0/c0/t/w/a;->h(Ln3/m0/c0/t/w/a$i;)V

    .line 19
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 20
    :cond_8
    iget-object v3, p0, Ln3/m0/c0/t/w/a;->c:Ln3/m0/c0/t/w/a$i;

    if-ne v3, v0, :cond_3

    .line 21
    :cond_9
    iget-object p1, p0, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ln3/m0/c0/t/w/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    move-object v3, p0

    move-object v11, v3

    move-object v0, p3

    :goto_3
    cmp-long v5, v1, v5

    if-lez v5, :cond_e

    .line 22
    iget-object v1, v11, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    if-eqz v1, :cond_b

    move v2, v4

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    .line 23
    :goto_4
    instance-of v5, v1, Ln3/m0/c0/t/w/a$g;

    xor-int/2addr v5, v4

    and-int/2addr v2, v5

    if-eqz v2, :cond_c

    .line 24
    invoke-virtual {v11, v1}, Ln3/m0/c0/t/w/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 25
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_d

    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long v1, v7, v1

    :goto_5
    const-wide/16 v5, 0x0

    goto :goto_3

    .line 27
    :cond_d
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 28
    :cond_e
    invoke-virtual {v3}, Ln3/m0/c0/t/w/a;->toString()Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Waited "

    const-string v11, " "

    .line 30
    invoke-static {v8, p1, p2, v11}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-long p2, v1, v9

    const-wide/16 v7, 0x0

    cmp-long p2, p2, v7

    if-gez p2, :cond_14

    const-string p2, " (plus "

    .line 31
    invoke-static {p1, p2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    neg-long p2, v1

    .line 32
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    sub-long/2addr p2, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v1, v7

    if-eqz v0, :cond_10

    cmp-long v7, p2, v9

    if-lez v7, :cond_f

    goto :goto_6

    :cond_f
    const/4 v4, 0x0

    :cond_10
    :goto_6
    if-lez v0, :cond_12

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v4, :cond_11

    const-string v0, ","

    .line 35
    invoke-static {p1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    :cond_11
    invoke-static {p1, v11}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_12
    if-eqz v4, :cond_13

    const-string v0, " nanoseconds "

    .line 37
    invoke-static {p1, p2, p3, v0}, Le/d/c/a/a;->r2(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_13
    const-string p2, "delay)"

    .line 38
    invoke-static {p1, p2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    :cond_14
    invoke-virtual {v3}, Ln3/m0/c0/t/w/a;->isDone()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 40
    new-instance p2, Ljava/util/concurrent/TimeoutException;

    const-string p3, " but future completed as timeout expired"

    invoke-static {p1, p3}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 41
    :cond_15
    new-instance p2, Ljava/util/concurrent/TimeoutException;

    const-string p3, " for "

    invoke-static {p1, p3, v5}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 42
    :cond_16
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public final h(Ln3/m0/c0/t/w/a$i;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Ln3/m0/c0/t/w/a$i;->a:Ljava/lang/Thread;

    .line 2
    :goto_0
    iget-object p1, p0, Ln3/m0/c0/t/w/a;->c:Ln3/m0/c0/t/w/a$i;

    .line 3
    sget-object v1, Ln3/m0/c0/t/w/a$i;->c:Ln3/m0/c0/t/w/a$i;

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_4

    .line 4
    iget-object v2, p1, Ln3/m0/c0/t/w/a$i;->b:Ln3/m0/c0/t/w/a$i;

    .line 5
    iget-object v3, p1, Ln3/m0/c0/t/w/a$i;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    move-object v1, p1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    .line 6
    iput-object v2, v1, Ln3/m0/c0/t/w/a$i;->b:Ln3/m0/c0/t/w/a$i;

    .line 7
    iget-object p1, v1, Ln3/m0/c0/t/w/a$i;->a:Ljava/lang/Thread;

    if-nez p1, :cond_3

    goto :goto_0

    .line 8
    :cond_2
    sget-object v3, Ln3/m0/c0/t/w/a;->f:Ln3/m0/c0/t/w/a$b;

    invoke-virtual {v3, p0, p1, v2}, Ln3/m0/c0/t/w/a$b;->c(Ln3/m0/c0/t/w/a;Ln3/m0/c0/t/w/a$i;Ln3/m0/c0/t/w/a$i;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    .line 2
    instance-of v0, v0, Ln3/m0/c0/t/w/a$c;

    return v0
.end method

.method public final isDone()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    instance-of v0, v0, Ln3/m0/c0/t/w/a$g;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    .line 3
    instance-of v1, v1, Ln3/m0/c0/t/w/a$c;

    const-string v2, "]"

    if-eqz v1, :cond_0

    const-string v1, "CANCELLED"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Ln3/m0/c0/t/w/a;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Ln3/m0/c0/t/w/a;->a(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 7
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ln3/m0/c0/t/w/a;->g()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Exception thrown from implementation: "

    .line 8
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "PENDING, info=["

    .line 10
    invoke-static {v0, v3, v1, v2}, Le/d/c/a/a;->S0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0}, Ln3/m0/c0/t/w/a;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {p0, v0}, Ln3/m0/c0/t/w/a;->a(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_3
    const-string v1, "PENDING"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
