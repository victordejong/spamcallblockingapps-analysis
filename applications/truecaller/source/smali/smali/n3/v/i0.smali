.class public Ln3/v/i0;
.super Ln3/v/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/v/i0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/v/k0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public l:Ln3/c/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c/a/b/b<",
            "Landroidx/lifecycle/LiveData<",
            "*>;",
            "Ln3/v/i0$a<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/v/k0;-><init>()V

    .line 2
    new-instance v0, Ln3/c/a/b/b;

    invoke-direct {v0}, Ln3/c/a/b/b;-><init>()V

    iput-object v0, p0, Ln3/v/i0;->l:Ln3/c/a/b/b;

    return-void
.end method


# virtual methods
.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/v/i0;->l:Ln3/c/a/b/b;

    invoke-virtual {v0}, Ln3/c/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, Ln3/c/a/b/b$e;

    invoke-virtual {v1}, Ln3/c/a/b/b$e;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ln3/c/a/b/b$e;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/v/i0$a;

    .line 3
    iget-object v2, v1, Ln3/v/i0$a;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->g(Ln3/v/l0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/v/i0;->l:Ln3/c/a/b/b;

    invoke-virtual {v0}, Ln3/c/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, Ln3/c/a/b/b$e;

    invoke-virtual {v1}, Ln3/c/a/b/b$e;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ln3/c/a/b/b$e;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/v/i0$a;

    .line 3
    iget-object v2, v1, Ln3/v/i0$a;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->k(Ln3/v/l0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m(Landroidx/lifecycle/LiveData;Ln3/v/l0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TS;>;",
            "Ln3/v/l0<",
            "-TS;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/v/i0$a;

    invoke-direct {v0, p1, p2}, Ln3/v/i0$a;-><init>(Landroidx/lifecycle/LiveData;Ln3/v/l0;)V

    .line 2
    iget-object v1, p0, Ln3/v/i0;->l:Ln3/c/a/b/b;

    invoke-virtual {v1, p1, v0}, Ln3/c/a/b/b;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/v/i0$a;

    if-eqz p1, :cond_1

    .line 3
    iget-object v1, p1, Ln3/v/i0$a;->b:Ln3/v/l0;

    if-ne v1, p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This source was already added with the different observer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, v0, Ln3/v/i0$a;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->g(Ln3/v/l0;)V

    :cond_3
    return-void
.end method

.method public n(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TS;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/v/i0;->l:Ln3/c/a/b/b;

    invoke-virtual {v0, p1}, Ln3/c/a/b/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/v/i0$a;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p1, Ln3/v/i0$a;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->k(Ln3/v/l0;)V

    :cond_0
    return-void
.end method
