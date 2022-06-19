.class public abstract Lkotlinx/coroutines/a;
.super Lkotlinx/coroutines/h1;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/b1;
.implements Lkotlin/u/d;
.implements Lkotlinx/coroutines/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/h1;",
        "Lkotlinx/coroutines/b1;",
        "Lkotlin/u/d<",
        "TT;>;",
        "Lkotlinx/coroutines/c0;"
    }
.end annotation


# instance fields
.field private final g:Lkotlin/u/g;

.field protected final h:Lkotlin/u/g;


# direct methods
.method public constructor <init>(Lkotlin/u/g;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lkotlinx/coroutines/h1;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/a;->h:Lkotlin/u/g;

    .line 2
    invoke-interface {p1, p0}, Lkotlin/u/g;->plus(Lkotlin/u/g;)Lkotlin/u/g;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/a;->g:Lkotlin/u/g;

    return-void
.end method


# virtual methods
.method public final L(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/a;->g:Lkotlin/u/g;

    invoke-static {v0, p1}, Lkotlinx/coroutines/z;->a(Lkotlin/u/g;Ljava/lang/Throwable;)V

    return-void
.end method

.method public S()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/a;->g:Lkotlin/u/g;

    invoke-static {v0}, Lkotlinx/coroutines/w;->b(Lkotlin/u/g;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lkotlinx/coroutines/h1;->S()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lkotlinx/coroutines/h1;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final X(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/r;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lkotlinx/coroutines/r;

    iget-object v0, p1, Lkotlinx/coroutines/r;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lkotlinx/coroutines/r;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/a;->p0(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->q0(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final Y()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->r0()V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lkotlinx/coroutines/h1;->a()Z

    move-result v0

    return v0
.end method

.method public final getContext()Lkotlin/u/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/a;->g:Lkotlin/u/g;

    return-object v0
.end method

.method public h()Lkotlin/u/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/a;->g:Lkotlin/u/g;

    return-object v0
.end method

.method protected n0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h1;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public final o0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/a;->h:Lkotlin/u/g;

    sget-object v1, Lkotlinx/coroutines/b1;->e:Lkotlinx/coroutines/b1$b;

    invoke-interface {v0, v1}, Lkotlin/u/g;->get(Lkotlin/u/g$c;)Lkotlin/u/g$b;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/b1;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/h1;->M(Lkotlinx/coroutines/b1;)V

    return-void
.end method

.method protected p0(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method protected q0(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected r0()V
    .locals 0

    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/u;->c(Ljava/lang/Object;Lkotlin/w/b/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h1;->Q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    sget-object v0, Lkotlinx/coroutines/i1;->b:Lkotlinx/coroutines/internal/u;

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->n0(Ljava/lang/Object;)V

    return-void
.end method

.method public final s0(Lkotlinx/coroutines/f0;Ljava/lang/Object;Lkotlin/w/b/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/f0;",
            "TR;",
            "Lkotlin/w/b/p<",
            "-TR;-",
            "Lkotlin/u/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->o0()V

    .line 2
    invoke-virtual {p1, p3, p2, p0}, Lkotlinx/coroutines/f0;->invoke(Lkotlin/w/b/p;Ljava/lang/Object;Lkotlin/u/d;)V

    return-void
.end method

.method protected u()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/i0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
