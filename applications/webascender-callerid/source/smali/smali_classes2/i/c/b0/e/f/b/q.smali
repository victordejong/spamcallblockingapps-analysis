.class public final Li/c/b0/e/f/b/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/b/q$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;Li/c/b0/d/o;)Li/c/b0/b/l;
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
            "Lo/a/a<",
            "+TU;>;>;)",
            "Li/c/b0/b/l<",
            "TU;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/b/q$a;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/b/q$a;-><init>(Ljava/lang/Object;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->m(Li/c/b0/b/l;)Li/c/b0/b/l;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lo/a/a;Lo/a/b;Li/c/b0/d/o;)Z
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
            "Li/c/b0/d/o<",
            "-TT;+",
            "Lo/a/a<",
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
    invoke-static {p1}, Li/c/b0/e/j/c;->complete(Lo/a/b;)V

    return v0

    .line 4
    :cond_0
    :try_start_1
    invoke-interface {p2, p0}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "The mapper returned a null Publisher"

    invoke-static {p0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lo/a/a;
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
    invoke-static {p1}, Li/c/b0/e/j/c;->complete(Lo/a/b;)V

    return v0

    .line 8
    :cond_1
    new-instance p2, Li/c/b0/e/j/d;

    invoke-direct {p2, p1, p0}, Li/c/b0/e/j/d;-><init>(Lo/a/b;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10
    invoke-static {p0, p1}, Li/c/b0/e/j/c;->error(Ljava/lang/Throwable;Lo/a/b;)V

    return v0

    .line 11
    :cond_2
    invoke-interface {p0, p1}, Lo/a/a;->a(Lo/a/b;)V

    :goto_0
    return v0

    :catchall_1
    move-exception p0

    .line 12
    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 13
    invoke-static {p0, p1}, Li/c/b0/e/j/c;->error(Ljava/lang/Throwable;Lo/a/b;)V

    return v0

    :catchall_2
    move-exception p0

    .line 14
    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 15
    invoke-static {p0, p1}, Li/c/b0/e/j/c;->error(Ljava/lang/Throwable;Lo/a/b;)V

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
