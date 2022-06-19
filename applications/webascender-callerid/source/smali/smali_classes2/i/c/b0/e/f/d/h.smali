.class final Li/c/b0/e/f/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/Object;Li/c/b0/d/o;Li/c/b0/b/g;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i;",
            ">;",
            "Li/c/b0/b/g;",
            ")Z"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Li/c/b0/d/q;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Li/c/b0/d/q;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-interface {p0}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p1, p0}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The mapper returned a null CompletableSource"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Li/c/b0/b/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez v0, :cond_1

    .line 5
    invoke-static {p2}, Li/c/b0/e/a/d;->complete(Li/c/b0/b/g;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0, p2}, Li/c/b0/b/i;->a(Li/c/b0/b/g;)V

    :goto_0
    return v1

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p0, p2}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/g;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static b(Ljava/lang/Object;Li/c/b0/d/o;Li/c/b0/b/c0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/t<",
            "+TR;>;>;",
            "Li/c/b0/b/c0<",
            "-TR;>;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Li/c/b0/d/q;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Li/c/b0/d/q;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-interface {p0}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p1, p0}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The mapper returned a null MaybeSource"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Li/c/b0/b/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez v0, :cond_1

    .line 5
    invoke-static {p2}, Li/c/b0/e/a/d;->complete(Li/c/b0/b/c0;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p2}, Li/c/b0/e/f/c/q;->a(Li/c/b0/b/c0;)Li/c/b0/b/r;

    move-result-object p0

    invoke-interface {v0, p0}, Li/c/b0/b/t;->a(Li/c/b0/b/r;)V

    :goto_0
    return v1

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p0, p2}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static c(Ljava/lang/Object;Li/c/b0/d/o;Li/c/b0/b/c0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i0<",
            "+TR;>;>;",
            "Li/c/b0/b/c0<",
            "-TR;>;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Li/c/b0/d/q;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Li/c/b0/d/q;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-interface {p0}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p1, p0}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The mapper returned a null SingleSource"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Li/c/b0/b/i0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez v0, :cond_1

    .line 5
    invoke-static {p2}, Li/c/b0/e/a/d;->complete(Li/c/b0/b/c0;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p2}, Li/c/b0/e/f/f/v;->a(Li/c/b0/b/c0;)Li/c/b0/b/g0;

    move-result-object p0

    invoke-interface {v0, p0}, Li/c/b0/b/i0;->a(Li/c/b0/b/g0;)V

    :goto_0
    return v1

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p0, p2}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
