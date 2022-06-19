.class public final Ls1/a/a/a/v0/d/a/d0/n/t;
.super Ls1/a/a/a/v0/b/h1/c;
.source "SourceFile"


# instance fields
.field public final k:Ls1/a/a/a/v0/d/a/d0/f;

.field public final l:Ls1/a/a/a/v0/d/a/d0/h;

.field public final m:Ls1/a/a/a/v0/d/a/f0/w;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/w;ILs1/a/a/a/v0/b/k;)V
    .locals 10

    const-string v0, "c"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaTypeParameter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 2
    iget-object v2, v0, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 3
    invoke-interface {p2}, Ls1/a/a/a/v0/d/a/f0/s;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v4

    .line 4
    sget-object v5, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    .line 5
    sget-object v8, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    .line 6
    iget-object v0, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 7
    iget-object v9, v0, Ls1/a/a/a/v0/d/a/d0/c;->m:Ls1/a/a/a/v0/b/u0;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p4

    move v7, p3

    .line 8
    invoke-direct/range {v1 .. v9}, Ls1/a/a/a/v0/b/h1/c;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/m/j1;ZILs1/a/a/a/v0/b/r0;Ls1/a/a/a/v0/b/u0;)V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/t;->l:Ls1/a/a/a/v0/d/a/d0/h;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/t;->m:Ls1/a/a/a/v0/d/a/f0/w;

    .line 9
    new-instance p3, Ls1/a/a/a/v0/d/a/d0/f;

    invoke-direct {p3, p1, p2}, Ls1/a/a/a/v0/d/a/d0/f;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/d;)V

    iput-object p3, p0, Ls1/a/a/a/v0/d/a/d0/n/t;->k:Ls1/a/a/a/v0/d/a/d0/f;

    return-void
.end method


# virtual methods
.method public N0()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/t;->m:Ls1/a/a/a/v0/d/a/f0/w;

    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/w;->getUpperBounds()Ljava/util/Collection;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/t;->l:Ls1/a/a/a/v0/d/a/d0/h;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 5
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 6
    invoke-interface {v0}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/a/g;->f()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    const-string v1, "c.module.builtIns.anyType"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/t;->l:Ls1/a/a/a/v0/d/a/d0/h;

    .line 8
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 9
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 10
    invoke-interface {v1}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v1

    invoke-virtual {v1}, Ls1/a/a/a/v0/a/g;->o()Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    const-string v2, "c.module.builtIns.nullableAnyType"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {v0, v1}, Ls1/a/a/a/v0/m/f0;->c(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/i1;

    move-result-object v0

    .line 12
    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 13
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 15
    check-cast v2, Ls1/a/a/a/v0/d/a/f0/j;

    .line 16
    iget-object v3, p0, Ls1/a/a/a/v0/d/a/d0/n/t;->l:Ls1/a/a/a/v0/d/a/d0/h;

    .line 17
    iget-object v3, v3, Ls1/a/a/a/v0/d/a/d0/h;->b:Ls1/a/a/a/v0/d/a/d0/o/g;

    .line 18
    sget-object v4, Ls1/a/a/a/v0/d/a/b0/k;->b:Ls1/a/a/a/v0/d/a/b0/k;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, p0, v6}, Ls1/a/a/a/v0/d/a/d0/o/i;->c(Ls1/a/a/a/v0/d/a/b0/k;ZLs1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/d/a/d0/o/a;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ls1/a/a/a/v0/d/a/d0/o/g;->d(Ls1/a/a/a/v0/d/a/f0/v;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/t;->k:Ls1/a/a/a/v0/d/a/d0/f;

    return-object v0
.end method

.method public w0(Ls1/a/a/a/v0/m/e0;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
