.class public final Li/c/b0/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "Ljava/util/concurrent/Callable<",
            "Li/c/b0/b/d0;",
            ">;",
            "Li/c/b0/b/d0;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "Li/c/b0/b/d0;",
            "Li/c/b0/b/d0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static a(Li/c/b0/d/o;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "TT;TR;>;TT;)TR;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    throw p0
.end method

.method static b(Li/c/b0/d/o;Ljava/util/concurrent/Callable;)Li/c/b0/b/d0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "Ljava/util/concurrent/Callable<",
            "Li/c/b0/b/d0;",
            ">;",
            "Li/c/b0/b/d0;",
            ">;",
            "Ljava/util/concurrent/Callable<",
            "Li/c/b0/b/d0;",
            ">;)",
            "Li/c/b0/b/d0;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Li/c/b0/a/a/a;->a(Li/c/b0/d/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li/c/b0/b/d0;

    const-string p1, "Scheduler Callable returned null"

    .line 2
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method static c(Ljava/util/concurrent/Callable;)Li/c/b0/b/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Li/c/b0/b/d0;",
            ">;)",
            "Li/c/b0/b/d0;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li/c/b0/b/d0;

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Scheduler Callable returned null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 3
    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    throw p0
.end method

.method public static d(Ljava/util/concurrent/Callable;)Li/c/b0/b/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Li/c/b0/b/d0;",
            ">;)",
            "Li/c/b0/b/d0;"
        }
    .end annotation

    const-string v0, "scheduler == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Li/c/b0/a/a/a;->a:Li/c/b0/d/o;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Li/c/b0/a/a/a;->c(Ljava/util/concurrent/Callable;)Li/c/b0/b/d0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {v0, p0}, Li/c/b0/a/a/a;->b(Li/c/b0/d/o;Ljava/util/concurrent/Callable;)Li/c/b0/b/d0;

    move-result-object p0

    return-object p0
.end method

.method public static e(Li/c/b0/b/d0;)Li/c/b0/b/d0;
    .locals 1

    const-string v0, "scheduler == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Li/c/b0/a/a/a;->b:Li/c/b0/d/o;

    if-nez v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-static {v0, p0}, Li/c/b0/a/a/a;->a(Li/c/b0/d/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li/c/b0/b/d0;

    return-object p0
.end method
