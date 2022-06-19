.class public final Ls1/a/a/a/v0/b/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/f0;


# instance fields
.field public final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/c0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/c0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packageFragments"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/e0;->a:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/f/b;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/b;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/c0;",
            ">;"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/e0;->a:Ljava/util/Collection;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ls1/a/a/a/v0/b/c0;

    .line 4
    invoke-interface {v3}, Ls1/a/a/a/v0/b/c0;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v3

    invoke-static {v3, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public b(Ls1/a/a/a/v0/f/b;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/b;",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/c0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFragments"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/e0;->a:Ljava/util/Collection;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ls1/a/a/a/v0/b/c0;

    .line 3
    invoke-interface {v2}, Ls1/a/a/a/v0/b/c0;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v2

    invoke-static {v2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public r(Ls1/a/a/a/v0/f/b;Ls1/z/b/l;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/b;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/f/b;",
            ">;"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Ls1/a/a/a/v0/b/e0;->a:Ljava/util/Collection;

    invoke-static {p2}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object p2

    .line 2
    sget-object v0, Ls1/a/a/a/v0/b/e0$a;->b:Ls1/a/a/a/v0/b/e0$a;

    invoke-static {p2, v0}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p2

    .line 3
    new-instance v0, Ls1/a/a/a/v0/b/e0$b;

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/b/e0$b;-><init>(Ls1/a/a/a/v0/f/b;)V

    invoke-static {p2, v0}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ls1/e0/x;->r(Ls1/e0/k;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
