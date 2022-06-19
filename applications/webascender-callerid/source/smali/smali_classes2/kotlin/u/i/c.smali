.class Lkotlin/u/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lkotlin/w/b/l;Lkotlin/u/d;)Lkotlin/u/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/w/b/l<",
            "-",
            "Lkotlin/u/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/u/d<",
            "-TT;>;)",
            "Lkotlin/u/d<",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$createCoroutineUnintercepted"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/u/j/a/g;->a(Lkotlin/u/d;)Lkotlin/u/d;

    .line 2
    instance-of v0, p0, Lkotlin/u/j/a/a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lkotlin/u/j/a/a;

    invoke-virtual {p0, p1}, Lkotlin/u/j/a/a;->create(Lkotlin/u/d;)Lkotlin/u/d;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lkotlin/u/d;->getContext()Lkotlin/u/g;

    move-result-object v4

    .line 5
    sget-object v0, Lkotlin/u/h;->f:Lkotlin/u/h;

    const-string v1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    if-ne v4, v0, :cond_1

    .line 6
    new-instance v0, Lkotlin/u/i/c$a;

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {v0, p1, p1, p0}, Lkotlin/u/i/c$a;-><init>(Lkotlin/u/d;Lkotlin/u/d;Lkotlin/w/b/l;)V

    move-object p0, v0

    goto :goto_0

    .line 7
    :cond_1
    new-instance v6, Lkotlin/u/i/c$b;

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, v6

    move-object v1, p1

    move-object v2, v4

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/u/i/c$b;-><init>(Lkotlin/u/d;Lkotlin/u/g;Lkotlin/u/d;Lkotlin/u/g;Lkotlin/w/b/l;)V

    move-object p0, v6

    :goto_0
    return-object p0
.end method

.method public static b(Lkotlin/w/b/p;Ljava/lang/Object;Lkotlin/u/d;)Lkotlin/u/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/w/b/p<",
            "-TR;-",
            "Lkotlin/u/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lkotlin/u/d<",
            "-TT;>;)",
            "Lkotlin/u/d<",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$createCoroutineUnintercepted"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lkotlin/u/j/a/g;->a(Lkotlin/u/d;)Lkotlin/u/d;

    .line 2
    instance-of v0, p0, Lkotlin/u/j/a/a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lkotlin/u/j/a/a;

    invoke-virtual {p0, p1, p2}, Lkotlin/u/j/a/a;->create(Ljava/lang/Object;Lkotlin/u/d;)Lkotlin/u/d;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Lkotlin/u/d;->getContext()Lkotlin/u/g;

    move-result-object v4

    .line 5
    sget-object v0, Lkotlin/u/h;->f:Lkotlin/u/h;

    const-string v1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    if-ne v4, v0, :cond_1

    .line 6
    new-instance v0, Lkotlin/u/i/c$c;

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {v0, p2, p2, p0, p1}, Lkotlin/u/i/c$c;-><init>(Lkotlin/u/d;Lkotlin/u/d;Lkotlin/w/b/p;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    .line 7
    :cond_1
    new-instance v7, Lkotlin/u/i/c$d;

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, v7

    move-object v1, p2

    move-object v2, v4

    move-object v3, p2

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/u/i/c$d;-><init>(Lkotlin/u/d;Lkotlin/u/g;Lkotlin/u/d;Lkotlin/u/g;Lkotlin/w/b/p;Ljava/lang/Object;)V

    move-object p0, v7

    :goto_0
    return-object p0
.end method

.method public static c(Lkotlin/u/d;)Lkotlin/u/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/u/d<",
            "-TT;>;)",
            "Lkotlin/u/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$intercepted"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lkotlin/u/j/a/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlin/u/j/a/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/u/j/a/c;->intercepted()Lkotlin/u/d;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method
