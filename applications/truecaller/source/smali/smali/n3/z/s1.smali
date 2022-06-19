.class public final Ln3/z/s1;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.PagedList$dispatchStateChangeAsync$1"
    f = "PagedList.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ln3/z/q1;

.field public final synthetic f:Ln3/z/t0;

.field public final synthetic g:Ln3/z/r0;


# direct methods
.method public constructor <init>(Ln3/z/q1;Ln3/z/t0;Ln3/z/r0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/s1;->e:Ln3/z/q1;

    iput-object p2, p0, Ln3/z/s1;->f:Ln3/z/t0;

    iput-object p3, p0, Ln3/z/s1;->g:Ln3/z/r0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/s1;

    iget-object v0, p0, Ln3/z/s1;->e:Ln3/z/q1;

    iget-object v1, p0, Ln3/z/s1;->f:Ln3/z/t0;

    iget-object v2, p0, Ln3/z/s1;->g:Ln3/z/r0;

    invoke-direct {p1, v0, v1, v2, p2}, Ln3/z/s1;-><init>(Ln3/z/q1;Ln3/z/t0;Ln3/z/r0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ln3/z/s1;->e:Ln3/z/q1;

    iget-object v1, p0, Ln3/z/s1;->f:Ln3/z/t0;

    iget-object v2, p0, Ln3/z/s1;->g:Ln3/z/r0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Ln3/z/q1;->d:Ljava/util/List;

    .line 5
    sget-object v3, Ln3/z/s1$a;->b:Ln3/z/s1$a;

    invoke-static {p2, v3}, Ls1/u/i;->w0(Ljava/util/List;Ls1/z/b/l;)Z

    .line 6
    iget-object p2, v0, Ln3/z/q1;->d:Ljava/util/List;

    .line 7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/z/b/p;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1, v2}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Ln3/z/s1;->e:Ln3/z/q1;

    .line 3
    iget-object p1, p1, Ln3/z/q1;->d:Ljava/util/List;

    .line 4
    sget-object v0, Ln3/z/s1$a;->b:Ln3/z/s1$a;

    invoke-static {p1, v0}, Ls1/u/i;->w0(Ljava/util/List;Ls1/z/b/l;)Z

    .line 5
    iget-object p1, p0, Ln3/z/s1;->e:Ln3/z/q1;

    .line 6
    iget-object p1, p1, Ln3/z/q1;->d:Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/z/b/p;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ln3/z/s1;->f:Ln3/z/t0;

    iget-object v2, p0, Ln3/z/s1;->g:Ln3/z/r0;

    invoke-interface {v0, v1, v2}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    goto :goto_0

    .line 9
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
