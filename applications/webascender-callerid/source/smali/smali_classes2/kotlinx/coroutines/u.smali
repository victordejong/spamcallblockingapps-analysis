.class public final Lkotlinx/coroutines/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;Lkotlin/w/b/l;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lkotlin/w/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlin/m;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lkotlinx/coroutines/s;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/s;-><init>(Ljava/lang/Object;Lkotlin/w/b/l;)V

    move-object p0, v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Lkotlinx/coroutines/r;

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lkotlinx/coroutines/r;-><init>(Ljava/lang/Throwable;ZILkotlin/w/c/g;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static final b(Ljava/lang/Object;Lkotlinx/coroutines/h;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/h<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlin/m;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p0, Lkotlinx/coroutines/r;

    .line 3
    invoke-static {}, Lkotlinx/coroutines/h0;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p1, Lkotlin/u/j/a/d;

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    check-cast p1, Lkotlin/u/j/a/d;

    invoke-static {v0, p1}, Lkotlinx/coroutines/internal/t;->a(Ljava/lang/Throwable;Lkotlin/u/j/a/d;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v0, p1, v1, v2}, Lkotlinx/coroutines/r;-><init>(Ljava/lang/Throwable;ZILkotlin/w/c/g;)V

    :goto_1
    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Object;Lkotlin/w/b/l;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/u;->a(Ljava/lang/Object;Lkotlin/w/b/l;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
