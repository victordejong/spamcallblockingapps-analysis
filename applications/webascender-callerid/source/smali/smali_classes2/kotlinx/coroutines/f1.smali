.class final synthetic Lkotlinx/coroutines/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/b1;)Lkotlinx/coroutines/p;
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/d1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/d1;-><init>(Lkotlinx/coroutines/b1;)V

    return-object v0
.end method

.method public static synthetic b(Lkotlinx/coroutines/b1;ILjava/lang/Object;)Lkotlinx/coroutines/p;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 1
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/e1;->a(Lkotlinx/coroutines/b1;)Lkotlinx/coroutines/p;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lkotlin/u/g;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/b1;->e:Lkotlinx/coroutines/b1$b;

    invoke-interface {p0, v0}, Lkotlin/u/g;->get(Lkotlin/u/g$c;)Lkotlin/u/g$b;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/b1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/b1;->r(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lkotlin/u/g;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/e1;->c(Lkotlin/u/g;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method
