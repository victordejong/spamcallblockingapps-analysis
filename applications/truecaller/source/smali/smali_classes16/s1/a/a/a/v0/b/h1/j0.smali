.class public Ls1/a/a/a/v0/b/h1/j0;
.super Ls1/a/a/a/v0/j/y/j;
.source "SourceFile"


# instance fields
.field public final b:Ls1/a/a/a/v0/b/a0;

.field public final c:Ls1/a/a/a/v0/f/b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/b;)V
    .locals 1

    const-string v0, "moduleDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/j/y/j;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/j0;->b:Ls1/a/a/a/v0/b/a0;

    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/j0;->c:Ls1/a/a/a/v0/f/b;

    return-void
.end method


# virtual methods
.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/u;->a:Ls1/u/u;

    return-object v0
.end method

.method public g(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/y/d;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k;",
            ">;"
        }
    .end annotation

    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    const-string v1, "kindFilter"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameFilter"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Ls1/a/a/a/v0/j/y/d;->u:Ls1/a/a/a/v0/j/y/d$a;

    .line 2
    sget v1, Ls1/a/a/a/v0/j/y/d;->g:I

    .line 3
    invoke-virtual {p1, v1}, Ls1/a/a/a/v0/j/y/d;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/j0;->c:Ls1/a/a/a/v0/f/b;

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object p1, p1, Ls1/a/a/a/v0/j/y/d;->b:Ljava/util/List;

    .line 6
    sget-object v1, Ls1/a/a/a/v0/j/y/c$b;->a:Ls1/a/a/a/v0/j/y/c$b;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    .line 7
    :cond_1
    iget-object p1, p0, Ls1/a/a/a/v0/b/h1/j0;->b:Ls1/a/a/a/v0/b/a0;

    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/j0;->c:Ls1/a/a/a/v0/f/b;

    invoke-interface {p1, v0, p2}, Ls1/a/a/a/v0/b/a0;->r(Ls1/a/a/a/v0/f/b;Ls1/z/b/l;)Ljava/util/Collection;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/f/b;

    .line 10
    invoke-virtual {v1}, Ls1/a/a/a/v0/f/b;->g()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    const-string v2, "subFqName.shortName()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p2, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "name"

    .line 12
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-boolean v2, v1, Ls1/a/a/a/v0/f/e;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    iget-object v2, p0, Ls1/a/a/a/v0/b/h1/j0;->b:Ls1/a/a/a/v0/b/a0;

    iget-object v4, p0, Ls1/a/a/a/v0/b/h1/j0;->c:Ls1/a/a/a/v0/f/b;

    invoke-virtual {v4, v1}, Ls1/a/a/a/v0/f/b;->c(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;

    move-result-object v1

    const-string v4, "fqName.child(name)"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ls1/a/a/a/v0/b/a0;->Q(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/g0;

    move-result-object v1

    .line 15
    invoke-interface {v1}, Ls1/a/a/a/v0/b/g0;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v1

    .line 16
    :goto_1
    invoke-static {v0, v3}, Ls1/a/a/a/v0/f/d;->r(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    return-object v0
.end method
