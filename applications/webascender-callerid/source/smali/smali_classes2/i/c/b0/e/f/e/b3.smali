.class public final Li/c/b0/e/f/e/b3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/b3$a;,
        Li/c/b0/e/f/e/b3$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TU;>;>;)",
            "Li/c/b0/b/v<",
            "TU;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/b3$b;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/b3$b;-><init>(Ljava/lang/Object;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static b(Li/c/b0/b/a0;Li/c/b0/b/c0;Li/c/b0/d/o;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Li/c/b0/b/c0<",
            "-TR;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Li/c/b0/d/q;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 2
    :try_start_0
    check-cast p0, Li/c/b0/d/q;

    invoke-interface {p0}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p0, :cond_0

    .line 3
    invoke-static {p1}, Li/c/b0/e/a/d;->complete(Li/c/b0/b/c0;)V

    return v0

    .line 4
    :cond_0
    :try_start_1
    invoke-interface {p2, p0}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "The mapper returned a null ObservableSource"

    invoke-static {p0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Li/c/b0/b/a0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    instance-of p2, p0, Li/c/b0/d/q;

    if-eqz p2, :cond_2

    .line 6
    :try_start_2
    check-cast p0, Li/c/b0/d/q;

    invoke-interface {p0}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_1

    .line 7
    invoke-static {p1}, Li/c/b0/e/a/d;->complete(Li/c/b0/b/c0;)V

    return v0

    .line 8
    :cond_1
    new-instance p2, Li/c/b0/e/f/e/b3$a;

    invoke-direct {p2, p1, p0}, Li/c/b0/e/f/e/b3$a;-><init>(Li/c/b0/b/c0;Ljava/lang/Object;)V

    .line 9
    invoke-interface {p1, p2}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 10
    invoke-virtual {p2}, Li/c/b0/e/f/e/b3$a;->run()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 11
    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 12
    invoke-static {p0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    return v0

    .line 13
    :cond_2
    invoke-interface {p0, p1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    :goto_0
    return v0

    :catchall_1
    move-exception p0

    .line 14
    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 15
    invoke-static {p0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    return v0

    :catchall_2
    move-exception p0

    .line 16
    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 17
    invoke-static {p0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
