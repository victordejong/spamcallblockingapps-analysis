.class public final Le/a/a/o/r/i;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/o/r/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/o/r/h;",
        ">;",
        "Le/a/a/o/r/g;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ls1/w/f;

.field public final h:Le/a/a/g1/b;

.field public final i:Le/a/a/o/f;

.field public final j:Le/a/q2/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/a/g1/b;Le/a/a/o/f;Le/a/q2/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translateManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p2, p0, Le/a/a/o/r/i;->g:Ls1/w/f;

    iput-object p3, p0, Le/a/a/o/r/i;->h:Le/a/a/g1/b;

    iput-object p4, p0, Le/a/a/o/r/i;->i:Le/a/a/o/f;

    iput-object p5, p0, Le/a/a/o/r/i;->j:Le/a/q2/a;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Le/a/a/o/r/i;->d:Ljava/util/List;

    .line 3
    sget-object p1, Ls1/u/t;->a:Ls1/u/t;

    iput-object p1, p0, Le/a/a/o/r/i;->e:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/a/o/r/i;->f:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final Ij(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/o/r/h;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Le/a/a/o/r/i$a;

    invoke-direct {v2, p0, p1}, Le/a/a/o/r/i$a;-><init>(Le/a/a/o/r/i;Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Le/a/a/o/r/h;->He(ILs1/z/b/a;)V

    :cond_0
    return-void
.end method

.method public final Jj(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/o/r/i;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/o/r/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/o/r/h;->g()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/o/r/i;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/a/o/r/i;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/a/o/r/i;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_0
    iget-object p1, p0, Le/a/a/o/r/i;->f:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/r/h;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/a/o/r/h;->e()V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/r/h;

    if-eqz p1, :cond_3

    iget-object v0, p0, Le/a/a/o/r/i;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/o/r/h;->T0(Ljava/lang/String;)V

    .line 8
    :cond_3
    :goto_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/r/h;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/a/o/r/h;->c0()V

    .line 9
    :cond_4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/r/h;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/a/o/r/h;->u1()V

    :cond_5
    return-void
.end method

.method public d(I)V
    .locals 2

    const v0, 0x7f0a00a5

    if-eq p1, v0, :cond_4

    const v0, 0x7f0a00e3

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/a/o/r/i;->d:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object v1, p0, Le/a/a/o/r/i;->f:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/r/h;

    if-eqz p1, :cond_2

    iget-object v0, p0, Le/a/a/o/r/i;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/o/r/h;->T0(Ljava/lang/String;)V

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/r/h;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/a/o/r/h;->u1()V

    .line 6
    :cond_3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/r/h;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/a/o/r/h;->c0()V

    goto :goto_1

    .line 7
    :cond_4
    iget-object p1, p0, Le/a/a/o/r/i;->f:Ljava/util/Set;

    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/a/o/r/i;->Ij(Ljava/util/List;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public e1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/o/r/i;->d:Ljava/util/List;

    return-object v0
.end method

.method public f1()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/o/r/i;->f:Ljava/util/Set;

    return-object v0
.end method

.method public h0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/o/r/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public if()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/o/r/i;->e:Ljava/util/Map;

    return-object v0
.end method

.method public je()V
    .locals 6

    .line 1
    new-instance v3, Le/a/a/o/r/i$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/a/o/r/i$b;-><init>(Le/a/a/o/r/i;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public k6(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/o/r/i;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Le/a/a/o/r/i;->Jj(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public p3(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/o/r/i;->Jj(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public s1()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/o/r/i;->d:Ljava/util/List;

    invoke-virtual {p0, v0}, Le/a/a/o/r/i;->Ij(Ljava/util/List;)V

    return-void
.end method

.method public u(I)Z
    .locals 3

    const v0, 0x7f0a00a5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a00e3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/a/o/r/i;->f:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object v0, p0, Le/a/a/o/r/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public w5(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/a/o/r/i;->Ij(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/o/r/i;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/o/r/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/o/r/h;->c0()V

    :cond_0
    return-void
.end method
