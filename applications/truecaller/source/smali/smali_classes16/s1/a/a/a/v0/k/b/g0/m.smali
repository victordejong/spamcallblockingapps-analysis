.class public final Ls1/a/a/a/v0/k/b/g0/m;
.super Ls1/a/a/a/v0/b/h1/c;
.source "SourceFile"


# instance fields
.field public final k:Ls1/a/a/a/v0/k/b/g0/a;

.field public final l:Ls1/a/a/a/v0/k/b/l;

.field public final m:Ls1/a/a/a/v0/e/s;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/l;Ls1/a/a/a/v0/e/s;I)V
    .locals 10

    const-string v0, "c"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 2
    iget-object v2, v0, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 3
    iget-object v3, p1, Ls1/a/a/a/v0/k/b/l;->e:Ls1/a/a/a/v0/b/k;

    .line 4
    iget-object v0, p1, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 5
    iget v1, p2, Ls1/a/a/a/v0/e/s;->e:I

    .line 6
    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object v4

    .line 7
    iget-object v0, p2, Ls1/a/a/a/v0/e/s;->g:Ls1/a/a/a/v0/e/s$c;

    const-string v1, "proto.variance"

    .line 8
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "variance"

    .line 9
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 11
    sget-object v0, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 12
    :cond_1
    sget-object v0, Ls1/a/a/a/v0/m/j1;->e:Ls1/a/a/a/v0/m/j1;

    goto :goto_0

    .line 13
    :cond_2
    sget-object v0, Ls1/a/a/a/v0/m/j1;->d:Ls1/a/a/a/v0/m/j1;

    :goto_0
    move-object v5, v0

    .line 14
    iget-boolean v6, p2, Ls1/a/a/a/v0/e/s;->f:Z

    .line 15
    sget-object v8, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    sget-object v9, Ls1/a/a/a/v0/b/u0$a;->a:Ls1/a/a/a/v0/b/u0$a;

    move-object v1, p0

    move v7, p3

    .line 16
    invoke-direct/range {v1 .. v9}, Ls1/a/a/a/v0/b/h1/c;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/m/j1;ZILs1/a/a/a/v0/b/r0;Ls1/a/a/a/v0/b/u0;)V

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/m;->l:Ls1/a/a/a/v0/k/b/l;

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/g0/m;->m:Ls1/a/a/a/v0/e/s;

    .line 17
    new-instance p2, Ls1/a/a/a/v0/k/b/g0/a;

    .line 18
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 19
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 20
    new-instance p3, Ls1/a/a/a/v0/k/b/g0/m$a;

    invoke-direct {p3, p0}, Ls1/a/a/a/v0/k/b/g0/m$a;-><init>(Ls1/a/a/a/v0/k/b/g0/m;)V

    invoke-direct {p2, p1, p3}, Ls1/a/a/a/v0/k/b/g0/a;-><init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/g0/m;->k:Ls1/a/a/a/v0/k/b/g0/a;

    return-void
.end method


# virtual methods
.method public N0()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/m;->m:Ls1/a/a/a/v0/e/s;

    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/m;->l:Ls1/a/a/a/v0/k/b/l;

    .line 2
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    const-string v2, "$this$upperBounds"

    .line 3
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "typeTable"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, v0, Ls1/a/a/a/v0/e/s;->h:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-eqz v2, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    iget-object v0, v0, Ls1/a/a/a/v0/e/s;->i:Ljava/util/List;

    const-string v2, "upperBoundIdList"

    .line 7
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 10
    check-cast v4, Ljava/lang/Integer;

    const-string v5, "it"

    .line 11
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Ls1/a/a/a/v0/e/z/e;->a(I)Ls1/a/a/a/v0/e/q;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-static {p0}, Ls1/a/a/a/v0/j/v/b;->f(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/g;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/a/g;->l()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 14
    :cond_3
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/m;->l:Ls1/a/a/a/v0/k/b/l;

    .line 15
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 18
    check-cast v3, Ls1/a/a/a/v0/e/q;

    .line 19
    invoke-virtual {v0, v3}, Ls1/a/a/a/v0/k/b/c0;->e(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/m/e0;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    return-object v1
.end method

.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/m;->k:Ls1/a/a/a/v0/k/b/g0/a;

    return-object v0
.end method

.method public w0(Ls1/a/a/a/v0/m/e0;)V
    .locals 2

    const-string v0, "type"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There should be no cycles for deserialized type parameters, but found for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
