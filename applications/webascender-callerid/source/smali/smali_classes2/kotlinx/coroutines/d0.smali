.class public final Lkotlinx/coroutines/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/u/g;)Lkotlinx/coroutines/c0;
    .locals 3

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/d;

    sget-object v1, Lkotlinx/coroutines/b1;->e:Lkotlinx/coroutines/b1$b;

    invoke-interface {p0, v1}, Lkotlin/u/g;->get(Lkotlin/u/g$c;)Lkotlin/u/g$b;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/e1;->b(Lkotlinx/coroutines/b1;ILjava/lang/Object;)Lkotlinx/coroutines/p;

    move-result-object v1

    invoke-interface {p0, v1}, Lkotlin/u/g;->plus(Lkotlin/u/g;)Lkotlin/u/g;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/d;-><init>(Lkotlin/u/g;)V

    return-object v0
.end method
