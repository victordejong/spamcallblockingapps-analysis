.class public final Lkotlinx/coroutines/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/u;

.field public static final b:Lkotlinx/coroutines/internal/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/f;->a:Lkotlinx/coroutines/internal/u;

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/f;->b:Lkotlinx/coroutines/internal/u;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/u;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/f;->a:Lkotlinx/coroutines/internal/u;

    return-object v0
.end method

.method public static final b(Lkotlin/u/d;Ljava/lang/Object;Lkotlin/w/b/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/u/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            "Lkotlin/w/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/internal/e;

    if-eqz v0, :cond_4

    check-cast p0, Lkotlinx/coroutines/internal/e;

    .line 2
    invoke-static {p1, p2}, Lkotlinx/coroutines/u;->a(Ljava/lang/Object;Lkotlin/w/b/l;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/internal/e;->l:Lkotlinx/coroutines/x;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/e;->getContext()Lkotlin/u/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/x;->C(Lkotlin/u/g;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    iput-object p2, p0, Lkotlinx/coroutines/internal/e;->i:Ljava/lang/Object;

    .line 5
    iput v1, p0, Lkotlinx/coroutines/k0;->h:I

    .line 6
    iget-object p1, p0, Lkotlinx/coroutines/internal/e;->l:Lkotlinx/coroutines/x;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/e;->getContext()Lkotlin/u/g;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/x;->A(Lkotlin/u/g;Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 7
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/h0;->a()Z

    move-result v0

    .line 8
    sget-object v0, Lkotlinx/coroutines/r1;->b:Lkotlinx/coroutines/r1;

    invoke-virtual {v0}, Lkotlinx/coroutines/r1;->a()Lkotlinx/coroutines/p0;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lkotlinx/coroutines/p0;->Y()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    iput-object p2, p0, Lkotlinx/coroutines/internal/e;->i:Ljava/lang/Object;

    .line 11
    iput v1, p0, Lkotlinx/coroutines/k0;->h:I

    .line 12
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/p0;->L(Lkotlinx/coroutines/k0;)V

    goto :goto_3

    .line 13
    :cond_1
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/p0;->N(Z)V

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/e;->getContext()Lkotlin/u/g;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/b1;->e:Lkotlinx/coroutines/b1$b;

    invoke-interface {v2, v3}, Lkotlin/u/g;->get(Lkotlin/u/g$c;)Lkotlin/u/g$b;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/b1;

    if-eqz v2, :cond_2

    .line 15
    invoke-interface {v2}, Lkotlinx/coroutines/b1;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 16
    invoke-interface {v2}, Lkotlinx/coroutines/b1;->g()Ljava/util/concurrent/CancellationException;

    move-result-object v2

    .line 17
    invoke-virtual {p0, p2, v2}, Lkotlinx/coroutines/internal/e;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 18
    sget-object p2, Lkotlin/m;->f:Lkotlin/m$a;

    invoke-static {v2}, Lkotlin/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p2}, Lkotlin/u/d;->resumeWith(Ljava/lang/Object;)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_3

    .line 19
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/e;->getContext()Lkotlin/u/g;

    move-result-object p2

    iget-object v2, p0, Lkotlinx/coroutines/internal/e;->k:Ljava/lang/Object;

    .line 20
    invoke-static {p2, v2}, Lkotlinx/coroutines/internal/y;->c(Lkotlin/u/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    iget-object v3, p0, Lkotlinx/coroutines/internal/e;->m:Lkotlin/u/d;

    invoke-interface {v3, p1}, Lkotlin/u/d;->resumeWith(Ljava/lang/Object;)V

    .line 22
    sget-object p1, Lkotlin/r;->a:Lkotlin/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    invoke-static {p2, v2}, Lkotlinx/coroutines/internal/y;->a(Lkotlin/u/g;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p2, v2}, Lkotlinx/coroutines/internal/y;->a(Lkotlin/u/g;Ljava/lang/Object;)V

    throw p1

    .line 24
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/p0;->l0()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_3

    goto :goto_2

    :catchall_1
    move-exception p1

    const/4 p2, 0x0

    .line 25
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/k0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 26
    :goto_2
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/p0;->D(Z)V

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/p0;->D(Z)V

    throw p0

    .line 27
    :cond_4
    invoke-interface {p0, p1}, Lkotlin/u/d;->resumeWith(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public static synthetic c(Lkotlin/u/d;Ljava/lang/Object;Lkotlin/w/b/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/internal/f;->b(Lkotlin/u/d;Ljava/lang/Object;Lkotlin/w/b/l;)V

    return-void
.end method
