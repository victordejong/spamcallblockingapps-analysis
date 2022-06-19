.class public final Li/c/z/e/b/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/x$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;Li/c/y/d;)Li/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Li/c/y/d<",
            "-TT;+",
            "Lo/a/a<",
            "+TU;>;>;)",
            "Li/c/f<",
            "TU;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/z/e/b/x$a;

    invoke-direct {v0, p0, p1}, Li/c/z/e/b/x$a;-><init>(Ljava/lang/Object;Li/c/y/d;)V

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lo/a/a;Lo/a/b;Li/c/y/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/a/a<",
            "TT;>;",
            "Lo/a/b<",
            "-TR;>;",
            "Li/c/y/d<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 2
    :try_start_0
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p0, :cond_0

    .line 3
    invoke-static {p1}, Li/c/z/i/d;->complete(Lo/a/b;)V

    return v0

    .line 4
    :cond_0
    :try_start_1
    invoke-interface {p2, p0}, Li/c/y/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "The mapper returned a null Publisher"

    invoke-static {p0, p2}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lo/a/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    instance-of p2, p0, Ljava/util/concurrent/Callable;

    if-eqz p2, :cond_2

    .line 6
    :try_start_2
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_1

    .line 7
    invoke-static {p1}, Li/c/z/i/d;->complete(Lo/a/b;)V

    return v0

    .line 8
    :cond_1
    new-instance p2, Li/c/z/i/e;

    invoke-direct {p2, p1, p0}, Li/c/z/i/e;-><init>(Lo/a/b;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10
    invoke-static {p0, p1}, Li/c/z/i/d;->error(Ljava/lang/Throwable;Lo/a/b;)V

    return v0

    .line 11
    :cond_2
    invoke-interface {p0, p1}, Lo/a/a;->a(Lo/a/b;)V

    :goto_0
    return v0

    :catchall_1
    move-exception p0

    .line 12
    invoke-static {p0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 13
    invoke-static {p0, p1}, Li/c/z/i/d;->error(Ljava/lang/Throwable;Lo/a/b;)V

    return v0

    :catchall_2
    move-exception p0

    .line 14
    invoke-static {p0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 15
    invoke-static {p0, p1}, Li/c/z/i/d;->error(Ljava/lang/Throwable;Lo/a/b;)V

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
