.class public final Ln3/v/h;
.super Ln3/v/i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/v/i0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public m:Ln3/v/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public n:Ln3/v/l;


# direct methods
.method public constructor <init>(Ls1/w/f;JLs1/z/b/p;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "J",
            "Ls1/z/b/p<",
            "-",
            "Ln3/v/g0<",
            "TT;>;-",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/v/i0;-><init>()V

    .line 2
    sget v0, Lq3/a/p1;->e0:I

    sget-object v0, Lq3/a/p1$a;->a:Lq3/a/p1$a;

    invoke-interface {p1, v0}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v0

    check-cast v0, Lq3/a/p1;

    .line 3
    new-instance v1, Lq3/a/k2;

    invoke-direct {v1, v0}, Lq3/a/k2;-><init>(Lq3/a/p1;)V

    .line 4
    sget-object v0, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object v0, Lq3/a/y2/q;->c:Lq3/a/y1;

    .line 5
    invoke-virtual {v0}, Lq3/a/y1;->K0()Lq3/a/y1;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls1/w/a;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    invoke-interface {p1, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v5

    .line 6
    new-instance p1, Ln3/v/e;

    .line 7
    new-instance v6, Ln3/v/h$a;

    invoke-direct {v6, p0}, Ln3/v/h$a;-><init>(Ln3/v/h;)V

    move-object v0, p1

    move-object v1, p0

    move-object v2, p4

    move-wide v3, p2

    .line 8
    invoke-direct/range {v0 .. v6}, Ln3/v/e;-><init>(Ln3/v/h;Ls1/z/b/p;JLq3/a/i0;Ls1/z/b/a;)V

    iput-object p1, p0, Ln3/v/h;->m:Ln3/v/e;

    return-void
.end method


# virtual methods
.method public h()V
    .locals 9

    .line 1
    invoke-super {p0}, Ln3/v/i0;->h()V

    .line 2
    iget-object v0, p0, Ln3/v/h;->m:Ln3/v/e;

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, v0, Ln3/v/e;->b:Lq3/a/p1;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    :cond_0
    iput-object v2, v0, Ln3/v/e;->b:Lq3/a/p1;

    .line 5
    iget-object v1, v0, Ln3/v/e;->a:Lq3/a/p1;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, v0, Ln3/v/e;->f:Lq3/a/i0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Ln3/v/d;

    invoke-direct {v6, v0, v2}, Ln3/v/d;-><init>(Ln3/v/e;Ls1/w/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v1

    iput-object v1, v0, Ln3/v/e;->a:Lq3/a/p1;

    :cond_2
    :goto_0
    return-void
.end method

.method public i()V
    .locals 8

    .line 1
    invoke-super {p0}, Ln3/v/i0;->i()V

    .line 2
    iget-object v0, p0, Ln3/v/h;->m:Ln3/v/e;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, v0, Ln3/v/e;->b:Lq3/a/p1;

    if-nez v1, :cond_0

    .line 4
    iget-object v2, v0, Ln3/v/e;->f:Lq3/a/i0;

    .line 5
    sget-object v1, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object v1, Lq3/a/y2/q;->c:Lq3/a/y1;

    .line 6
    invoke-virtual {v1}, Lq3/a/y1;->K0()Lq3/a/y1;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Ln3/v/c;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Ln3/v/c;-><init>(Ln3/v/e;Ls1/w/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v1

    iput-object v1, v0, Ln3/v/e;->b:Lq3/a/p1;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cancel call cannot happen without a maybeRun"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final o(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Ln3/v/h$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ln3/v/h$b;

    iget v1, v0, Ln3/v/h$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/v/h$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/v/h$b;

    invoke-direct {v0, p0, p1}, Ln3/v/h$b;-><init>(Ln3/v/h;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Ln3/v/h$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/v/h$b;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Ln3/v/h$b;->g:Ljava/lang/Object;

    check-cast v0, Ln3/v/h;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Ln3/v/h;->n:Ln3/v/l;

    if-eqz p1, :cond_4

    iput-object p0, v0, Ln3/v/h$b;->g:Ljava/lang/Object;

    iput v4, v0, Ln3/v/h$b;->e:I

    .line 5
    sget-object v2, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object v2, Lq3/a/y2/q;->c:Lq3/a/y1;

    .line 6
    invoke-virtual {v2}, Lq3/a/y1;->K0()Lq3/a/y1;

    move-result-object v2

    new-instance v4, Ln3/v/m;

    invoke-direct {v4, p1, v3}, Ln3/v/m;-><init>(Ln3/v/l;Ls1/w/d;)V

    invoke-static {v2, v4, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 7
    :goto_1
    check-cast p1, Ls1/s;

    goto :goto_2

    :cond_4
    move-object v0, p0

    .line 8
    :goto_2
    iput-object v3, v0, Ln3/v/h;->n:Ln3/v/l;

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final p(Landroidx/lifecycle/LiveData;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Ls1/w/d<",
            "-",
            "Lq3/a/v0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ln3/v/h$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln3/v/h$c;

    iget v1, v0, Ln3/v/h$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/v/h$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/v/h$c;

    invoke-direct {v0, p0, p2}, Ln3/v/h$c;-><init>(Ln3/v/h;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Ln3/v/h$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/v/h$c;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ln3/v/h$c;->h:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/LiveData;

    iget-object p1, v0, Ln3/v/h$c;->g:Ljava/lang/Object;

    check-cast p1, Ln3/v/h;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Ln3/v/h$c;->h:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/LiveData;

    iget-object v2, v0, Ln3/v/h$c;->g:Ljava/lang/Object;

    check-cast v2, Ln3/v/h;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Ln3/v/h$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Ln3/v/h$c;->h:Ljava/lang/Object;

    iput v4, v0, Ln3/v/h$c;->e:I

    invoke-virtual {p0, v0}, Ln3/v/h;->o(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p2, p1

    move-object p1, p0

    .line 5
    :goto_1
    iput-object p1, v0, Ln3/v/h$c;->g:Ljava/lang/Object;

    iput-object p2, v0, Ln3/v/h$c;->h:Ljava/lang/Object;

    iput v3, v0, Ln3/v/h$c;->e:I

    .line 6
    sget-object v2, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object v2, Lq3/a/y2/q;->c:Lq3/a/y1;

    .line 7
    invoke-virtual {v2}, Lq3/a/y1;->K0()Lq3/a/y1;

    move-result-object v2

    new-instance v3, Ln3/v/i;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Ln3/v/i;-><init>(Ln3/v/i0;Landroidx/lifecycle/LiveData;Ls1/w/d;)V

    invoke-static {v2, v3, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 8
    :cond_5
    :goto_2
    check-cast p2, Ln3/v/l;

    .line 9
    iput-object p2, p1, Ln3/v/h;->n:Ln3/v/l;

    return-object p2
.end method
