.class final synthetic Lkotlinx/coroutines/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/c0;Lkotlin/u/g;Lkotlinx/coroutines/f0;Lkotlin/w/b/p;)Lkotlinx/coroutines/b1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/c0;",
            "Lkotlin/u/g;",
            "Lkotlinx/coroutines/f0;",
            "Lkotlin/w/b/p<",
            "-",
            "Lkotlinx/coroutines/c0;",
            "-",
            "Lkotlin/u/d<",
            "-",
            "Lkotlin/r;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/b1;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/w;->c(Lkotlinx/coroutines/c0;Lkotlin/u/g;)Lkotlin/u/g;

    move-result-object p0

    .line 2
    invoke-virtual {p2}, Lkotlinx/coroutines/f0;->isLazy()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lkotlinx/coroutines/j1;

    invoke-direct {p1, p0, p3}, Lkotlinx/coroutines/j1;-><init>(Lkotlin/u/g;Lkotlin/w/b/p;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lkotlinx/coroutines/p1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lkotlinx/coroutines/p1;-><init>(Lkotlin/u/g;Z)V

    .line 5
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lkotlinx/coroutines/a;->s0(Lkotlinx/coroutines/f0;Ljava/lang/Object;Lkotlin/w/b/p;)V

    return-object p1
.end method

.method public static synthetic b(Lkotlinx/coroutines/c0;Lkotlin/u/g;Lkotlinx/coroutines/f0;Lkotlin/w/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/b1;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 1
    sget-object p1, Lkotlin/u/h;->f:Lkotlin/u/h;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 2
    sget-object p2, Lkotlinx/coroutines/f0;->DEFAULT:Lkotlinx/coroutines/f0;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/d;->a(Lkotlinx/coroutines/c0;Lkotlin/u/g;Lkotlinx/coroutines/f0;Lkotlin/w/b/p;)Lkotlinx/coroutines/b1;

    move-result-object p0

    return-object p0
.end method
