.class public Ls1/a/a/a/v0/k/b/g0/i;
.super Ls1/a/a/a/v0/k/b/g0/h;
.source "SourceFile"


# instance fields
.field public final g:Ls1/a/a/a/v0/f/b;

.field public final h:Ls1/a/a/a/v0/b/c0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/c0;Ls1/a/a/a/v0/e/l;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/k/b/g0/f;Ls1/a/a/a/v0/k/b/j;Ls1/z/b/a;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/c0;",
            "Ls1/a/a/a/v0/e/l;",
            "Ls1/a/a/a/v0/e/z/c;",
            "Ls1/a/a/a/v0/e/z/a;",
            "Ls1/a/a/a/v0/k/b/g0/f;",
            "Ls1/a/a/a/v0/k/b/j;",
            "Ls1/z/b/a<",
            "+",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/f/e;",
            ">;>;)V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    const-string v1, "packageDescriptor"

    invoke-static {v14, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "proto"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataVersion"

    move-object/from16 v3, p4

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "components"

    move-object/from16 v4, p6

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "classNames"

    move-object/from16 v5, p7

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v10, Ls1/a/a/a/v0/e/z/e;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/e/l;->g:Ls1/a/a/a/v0/e/t;

    const-string v7, "proto.typeTable"

    .line 3
    invoke-static {v1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v1}, Ls1/a/a/a/v0/e/z/e;-><init>(Ls1/a/a/a/v0/e/t;)V

    .line 4
    sget-object v1, Ls1/a/a/a/v0/e/z/g;->c:Ls1/a/a/a/v0/e/z/g$a;

    .line 5
    iget-object v7, v0, Ls1/a/a/a/v0/e/l;->h:Ls1/a/a/a/v0/e/w;

    const-string v8, "proto.versionRequirementTable"

    .line 6
    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ls1/a/a/a/v0/e/z/g$a;->a(Ls1/a/a/a/v0/e/w;)Ls1/a/a/a/v0/e/z/g;

    move-result-object v11

    move-object/from16 v7, p6

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    .line 7
    invoke-virtual/range {v7 .. v13}, Ls1/a/a/a/v0/k/b/j;->a(Ls1/a/a/a/v0/b/c0;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/k/b/g0/f;)Ls1/a/a/a/v0/k/b/l;

    move-result-object v1

    .line 8
    iget-object v2, v0, Ls1/a/a/a/v0/e/l;->d:Ljava/util/List;

    const-string v3, "proto.functionList"

    .line 9
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v3, v0, Ls1/a/a/a/v0/e/l;->e:Ljava/util/List;

    const-string v4, "proto.propertyList"

    .line 11
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v4, v0, Ls1/a/a/a/v0/e/l;->f:Ljava/util/List;

    const-string v0, "proto.typeAliasList"

    .line 13
    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 14
    invoke-direct/range {v0 .. v5}, Ls1/a/a/a/v0/k/b/g0/h;-><init>(Ls1/a/a/a/v0/k/b/l;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ls1/z/b/a;)V

    iput-object v14, v6, Ls1/a/a/a/v0/k/b/g0/i;->h:Ls1/a/a/a/v0/b/c0;

    .line 15
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/b/c0;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v0

    iput-object v0, v6, Ls1/a/a/a/v0/k/b/g0/i;->g:Ls1/a/a/a/v0/f/b;

    return-void
.end method


# virtual methods
.method public f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "location"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->j:Ls1/a/a/a/v0/c/a/c;

    .line 5
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/i;->h:Ls1/a/a/a/v0/b/c0;

    invoke-static {v0, p2, v1, p1}, Le/q/f/a/d/a;->w2(Ls1/a/a/a/v0/c/a/c;Ls1/a/a/a/v0/c/a/b;Ls1/a/a/a/v0/b/c0;Ls1/a/a/a/v0/f/e;)V

    .line 6
    invoke-super {p0, p1, p2}, Ls1/a/a/a/v0/k/b/g0/h;->f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;

    move-result-object p1

    return-object p1
.end method

.method public g(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Collection;
    .locals 3

    const-string v0, "kindFilter"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Ls1/a/a/a/v0/c/a/d;->e:Ls1/a/a/a/v0/c/a/d;

    invoke-virtual {p0, p1, p2, v0}, Ls1/a/a/a/v0/k/b/g0/h;->i(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object p1

    .line 3
    iget-object p2, p0, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 4
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 5
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/j;->l:Ljava/lang/Iterable;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ls1/a/a/a/v0/b/g1/b;

    .line 9
    iget-object v2, p0, Ls1/a/a/a/v0/k/b/g0/i;->g:Ls1/a/a/a/v0/f/b;

    invoke-interface {v1, v2}, Ls1/a/a/a/v0/b/g1/b;->c(Ls1/a/a/a/v0/f/b;)Ljava/util/Collection;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1, v0}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/util/Collection;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public l(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/a;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/f/a;

    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/i;->g:Ls1/a/a/a/v0/f/b;

    invoke-direct {v0, v1, p1}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/e;)V

    return-object v0
.end method

.method public n()Ljava/util/Set;
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

.method public o()Ljava/util/Set;
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

.method public p()Ljava/util/Set;
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

.method public q(Ls1/a/a/a/v0/f/e;)Z
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/k/b/g0/h;->m()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 5
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->l:Ljava/lang/Iterable;

    .line 6
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/b/g1/b;

    .line 8
    iget-object v4, p0, Ls1/a/a/a/v0/k/b/g0/i;->g:Ls1/a/a/a/v0/f/b;

    invoke-interface {v3, v4, p1}, Ls1/a/a/a/v0/b/g1/b;->a(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/e;)Z

    move-result v3

    if-eqz v3, :cond_1

    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    return v1
.end method
