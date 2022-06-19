.class public abstract Ln3/z/q1;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/z/q1$b;,
        Ln3/z/q1$c;,
        Ln3/z/q1$a;,
        Ln3/z/q1$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Runnable;

.field public final b:I

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Ln3/z/q1$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Ls1/z/b/p<",
            "Ln3/z/t0;",
            "Ln3/z/r0;",
            "Ls1/s;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final e:Ln3/z/k2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/k2<",
            "*TT;>;"
        }
    .end annotation
.end field

.field public final f:Lq3/a/i0;

.field public final g:Lq3/a/g0;

.field public final h:Ln3/z/x1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/x1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final i:Ln3/z/q1$c;


# direct methods
.method public constructor <init>(Ln3/z/k2;Lq3/a/i0;Lq3/a/g0;Ln3/z/x1;Ln3/z/q1$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/k2<",
            "*TT;>;",
            "Lq3/a/i0;",
            "Lq3/a/g0;",
            "Ln3/z/x1<",
            "TT;>;",
            "Ln3/z/q1$c;",
            ")V"
        }
    .end annotation

    const-string v0, "pagingSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifyDispatcher"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Ln3/z/q1;->e:Ln3/z/k2;

    iput-object p2, p0, Ln3/z/q1;->f:Lq3/a/i0;

    iput-object p3, p0, Ln3/z/q1;->g:Lq3/a/g0;

    iput-object p4, p0, Ln3/z/q1;->h:Ln3/z/x1;

    iput-object p5, p0, Ln3/z/q1;->i:Ln3/z/q1$c;

    .line 2
    iget p1, p5, Ln3/z/q1$c;->b:I

    mul-int/lit8 p1, p1, 0x2

    iget p2, p5, Ln3/z/q1$c;->a:I

    add-int/2addr p1, p2

    iput p1, p0, Ln3/z/q1;->b:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln3/z/q1;->c:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln3/z/q1;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final c(Ln3/z/q1$b;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ln3/z/q1;->c:Ljava/util/List;

    sget-object v1, Ln3/z/q1$e;->b:Ln3/z/q1$e;

    invoke-static {v0, v1}, Ls1/u/i;->w0(Ljava/util/List;Ls1/z/b/l;)Z

    .line 2
    iget-object v0, p0, Ln3/z/q1;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Ls1/z/b/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/p<",
            "-",
            "Ln3/z/t0;",
            "-",
            "Ln3/z/r0;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ln3/z/q1;->d:Ljava/util/List;

    sget-object v1, Ln3/z/q1$f;->b:Ln3/z/q1$f;

    invoke-static {v0, v1}, Ls1/u/i;->w0(Ljava/util/List;Ls1/z/b/l;)Z

    .line 2
    iget-object v0, p0, Ln3/z/q1;->d:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, p1}, Ln3/z/q1;->e(Ls1/z/b/p;)V

    return-void
.end method

.method public abstract e(Ls1/z/b/p;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/p<",
            "-",
            "Ln3/z/t0;",
            "-",
            "Ln3/z/r0;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract f()Ljava/lang/Object;
.end method

.method public g()Ln3/z/k2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln3/z/k2<",
            "*TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/z/q1;->e:Ln3/z/k2;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/z/q1;->h:Ln3/z/x1;

    invoke-virtual {v0, p1}, Ln3/z/x1;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract h()Z
.end method

.method public i()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/z/q1;->h()Z

    move-result v0

    return v0
.end method

.method public final j(I)V
    .locals 4

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Ln3/z/q1;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/z/q1;->h:Ln3/z/x1;

    .line 3
    iget v1, v0, Ln3/z/x1;->b:I

    sub-int v1, p1, v1

    const/4 v2, 0x0

    .line 4
    iget v3, v0, Ln3/z/x1;->f:I

    add-int/lit8 v3, v3, -0x1

    .line 5
    invoke-static {v1, v2, v3}, Ls1/d0/j;->d(III)I

    move-result v1

    iput v1, v0, Ln3/z/x1;->g:I

    .line 6
    invoke-virtual {p0, p1}, Ln3/z/q1;->k(I)V

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: "

    const-string v2, ", Size: "

    invoke-static {v1, p1, v2}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ln3/z/q1;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract k(I)V
.end method

.method public final l(II)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Ln3/z/q1;->c:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/z/q1$b;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Ln3/z/q1$b;->a(II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final m(II)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Ln3/z/q1;->c:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/z/q1$b;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Ln3/z/q1$b;->b(II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public n(Ln3/z/t0;Ln3/z/r0;)V
    .locals 1

    const-string v0, "loadType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "loadState"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/q1;->h:Ln3/z/x1;

    .line 2
    invoke-virtual {v0}, Ln3/z/x1;->a()I

    move-result v0

    return v0
.end method
