.class public final Le/a/i/t/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/t/e;
.implements Le/a/i/m;
.implements Lq3/a/i0;


# instance fields
.field public final a:Lq3/a/y;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/i/m;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/g/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/i<",
            "Le/a/i/f0/m/d;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ln3/g/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/i<",
            "Le/a/i/f0/m/d;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Lq3/a/p1;

.field public final g:Le/a/i/f0/d;

.field public final h:Le/a/i/s;

.field public final i:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/i/f0/d;Le/a/i/s;Ls1/w/f;)V
    .locals 6
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param

    const-string v0, "adsProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/t/f;->g:Le/a/i/f0/d;

    iput-object p2, p0, Le/a/i/t/f;->h:Le/a/i/s;

    iput-object p3, p0, Le/a/i/t/f;->i:Ls1/w/f;

    const/4 p3, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-static {p3, v0, p3}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p3

    iput-object p3, p0, Le/a/i/t/f;->a:Lq3/a/y;

    .line 3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Le/a/i/t/f;->b:Ljava/util/ArrayList;

    .line 4
    new-instance p3, Ln3/g/i;

    invoke-direct {p3}, Ln3/g/i;-><init>()V

    iput-object p3, p0, Le/a/i/t/f;->c:Ln3/g/i;

    .line 5
    new-instance p3, Ln3/g/i;

    invoke-direct {p3}, Ln3/g/i;-><init>()V

    iput-object p3, p0, Le/a/i/t/f;->d:Ln3/g/i;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p0

    .line 6
    invoke-static/range {v0 .. v5}, Le/m/d/y/n;->l1(Le/a/i/f0/d;Le/a/i/s;Le/a/i/m;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i/t/f;->a:Lq3/a/y;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/a/i/t/f;->g:Le/a/i/f0/d;

    iget-object v1, p0, Le/a/i/t/f;->h:Le/a/i/s;

    invoke-interface {v0, v1, p0}, Le/a/i/f0/d;->h(Le/a/i/s;Le/a/i/m;)V

    .line 3
    iget-object v0, p0, Le/a/i/t/f;->d:Ln3/g/i;

    invoke-virtual {v0}, Ln3/g/i;->j()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Le/a/i/t/f;->d:Ln3/g/i;

    invoke-virtual {v2, v1}, Ln3/g/i;->k(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/i/f0/m/d;

    invoke-interface {v2}, Le/a/i/f0/m/d;->destroy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/i/t/f;->d:Ln3/g/i;

    invoke-virtual {v0}, Ln3/g/i;->b()V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/i/t/f;->e:Z

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Le/a/i/t/f;->g:Le/a/i/f0/d;

    iget-object v1, p0, Le/a/i/t/f;->h:Le/a/i/s;

    invoke-interface {v0, v1}, Le/a/i/f0/d;->c(Le/a/i/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/i/t/f;->b:Ljava/util/ArrayList;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/m;

    .line 4
    invoke-interface {v1}, Le/a/i/m;->onAdLoaded()V

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean p1, p0, Le/a/i/t/f;->e:Z

    return-void
.end method

.method public c(J)V
    .locals 6

    .line 1
    new-instance v3, Le/a/i/t/f$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, p2, v0}, Le/a/i/t/f$a;-><init>(Le/a/i/t/f;JLs1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Le/a/i/t/f;->f:Lq3/a/p1;

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i/t/f;->f:Lq3/a/p1;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lq3/a/p1;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "View restored"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lq3/a/p1;->d(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public e(I)Le/a/i/f0/m/d;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i/t/f;->c:Ln3/g/i;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Ln3/g/i;->g(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/a/i/f0/m/d;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-boolean v0, p0, Le/a/i/t/f;->e:Z

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Le/a/i/t/f;->g:Le/a/i/f0/d;

    iget-object v2, p0, Le/a/i/t/f;->h:Le/a/i/s;

    invoke-interface {v0, v2, p1}, Le/a/i/f0/d;->f(Le/a/i/s;I)Le/a/i/f0/m/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v2, p0, Le/a/i/t/f;->c:Ln3/g/i;

    invoke-virtual {v2, p1, v0}, Ln3/g/i;->i(ILjava/lang/Object;)V

    .line 7
    iget-object v2, p0, Le/a/i/t/f;->d:Ln3/g/i;

    .line 8
    invoke-virtual {v2, p1, v1}, Ln3/g/i;->g(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Le/a/i/f0/m/d;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Le/a/i/f0/m/d;->destroy()V

    .line 10
    :cond_1
    iget-object v1, p0, Le/a/i/t/f;->d:Ln3/g/i;

    invoke-virtual {v1, p1, v0}, Ln3/g/i;->i(ILjava/lang/Object;)V

    return-object v0

    .line 11
    :cond_2
    iget-object v0, p0, Le/a/i/t/f;->d:Ln3/g/i;

    .line 12
    invoke-virtual {v0, p1, v1}, Ln3/g/i;->g(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Le/a/i/f0/m/d;

    return-object p1
.end method

.method public ed(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/t/f;->b:Ljava/util/ArrayList;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/m;

    .line 3
    invoke-interface {v1, p1}, Le/a/i/m;->ed(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/t/f;->c:Ln3/g/i;

    invoke-virtual {v0}, Ln3/g/i;->b()V

    return-void
.end method

.method public g(Le/a/i/m;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/t/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Le/a/i/t/f;->g:Le/a/i/f0/d;

    iget-object v1, p0, Le/a/i/t/f;->h:Le/a/i/s;

    invoke-interface {v0, v1}, Le/a/i/f0/d;->c(Le/a/i/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/i/t/f;->e:Z

    if-nez v0, :cond_0

    .line 3
    check-cast p1, Le/a/i/t/a;

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/t/f;->i:Ls1/w/f;

    iget-object v1, p0, Le/a/i/t/f;->a:Lq3/a/y;

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/t/f;->g:Le/a/i/f0/d;

    invoke-interface {v0}, Le/a/i/f0/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/i/t/f;->h:Le/a/i/s;

    .line 3
    iget-boolean v0, v0, Le/a/i/s;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(Le/a/i/m;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/t/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/t/f;->b:Ljava/util/ArrayList;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/m;

    .line 3
    invoke-interface {v1}, Le/a/i/m;->onAdLoaded()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public xe(Le/a/i/f0/m/d;I)V
    .locals 2

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/t/f;->b:Ljava/util/ArrayList;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/m;

    .line 3
    invoke-interface {v1, p1, p2}, Le/a/i/m;->xe(Le/a/i/f0/m/d;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
