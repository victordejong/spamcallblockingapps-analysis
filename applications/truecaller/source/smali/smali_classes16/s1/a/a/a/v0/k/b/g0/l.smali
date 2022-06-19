.class public final Ls1/a/a/a/v0/k/b/g0/l;
.super Ls1/a/a/a/v0/b/h1/f;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/k/b/g0/g;


# instance fields
.field public h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/h1/k0;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ls1/a/a/a/v0/m/l0;

.field public j:Ls1/a/a/a/v0/m/l0;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ls1/a/a/a/v0/m/l0;

.field public m:Ls1/a/a/a/v0/k/b/g0/g$a;

.field public final n:Ls1/a/a/a/v0/l/m;

.field public final o:Ls1/a/a/a/v0/e/r;

.field public final p:Ls1/a/a/a/v0/e/z/c;

.field public final q:Ls1/a/a/a/v0/e/z/e;

.field public final r:Ls1/a/a/a/v0/e/z/g;

.field public final s:Ls1/a/a/a/v0/k/b/g0/f;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/e/r;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/k/b/g0/f;)V
    .locals 12

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    move-object v1, p2

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object v2, p3

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v4, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    const-string v0, "SourceElement.NO_SOURCE"

    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ls1/a/a/a/v0/b/h1/f;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;Ls1/a/a/a/v0/b/r;)V

    iput-object v7, v6, Ls1/a/a/a/v0/k/b/g0/l;->n:Ls1/a/a/a/v0/l/m;

    iput-object v8, v6, Ls1/a/a/a/v0/k/b/g0/l;->o:Ls1/a/a/a/v0/e/r;

    iput-object v9, v6, Ls1/a/a/a/v0/k/b/g0/l;->p:Ls1/a/a/a/v0/e/z/c;

    iput-object v10, v6, Ls1/a/a/a/v0/k/b/g0/l;->q:Ls1/a/a/a/v0/e/z/e;

    iput-object v11, v6, Ls1/a/a/a/v0/k/b/g0/l;->r:Ls1/a/a/a/v0/e/z/g;

    move-object/from16 v0, p10

    iput-object v0, v6, Ls1/a/a/a/v0/k/b/g0/l;->s:Ls1/a/a/a/v0/k/b/g0/f;

    .line 2
    sget-object v0, Ls1/a/a/a/v0/k/b/g0/g$a;->a:Ls1/a/a/a/v0/k/b/g0/g$a;

    iput-object v0, v6, Ls1/a/a/a/v0/k/b/g0/l;->m:Ls1/a/a/a/v0/k/b/g0/g$a;

    return-void
.end method


# virtual methods
.method public A()Ls1/a/a/a/v0/e/z/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/l;->q:Ls1/a/a/a/v0/e/z/e;

    return-object v0
.end method

.method public G0()Ls1/a/a/a/v0/m/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/l;->i:Ls1/a/a/a/v0/m/l0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "underlyingType"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public M0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/z/f;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->D1(Ls1/a/a/a/v0/k/b/g0/g;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public O()Ls1/a/a/a/v0/h/p;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/l;->o:Ls1/a/a/a/v0/e/r;

    return-object v0
.end method

.method public c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/l;
    .locals 12

    const-string v0, "substitutor"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/d1;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ls1/a/a/a/v0/k/b/g0/l;

    .line 4
    iget-object v2, p0, Ls1/a/a/a/v0/k/b/g0/l;->n:Ls1/a/a/a/v0/l/m;

    .line 5
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/n;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v3

    const-string v1, "containingDeclaration"

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/f1/b;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v4

    const-string v1, "annotations"

    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/m;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v5

    const-string v1, "name"

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v6, p0, Ls1/a/a/a/v0/b/h1/f;->g:Ls1/a/a/a/v0/b/r;

    .line 7
    iget-object v7, p0, Ls1/a/a/a/v0/k/b/g0/l;->o:Ls1/a/a/a/v0/e/r;

    .line 8
    iget-object v8, p0, Ls1/a/a/a/v0/k/b/g0/l;->p:Ls1/a/a/a/v0/e/z/c;

    .line 9
    iget-object v9, p0, Ls1/a/a/a/v0/k/b/g0/l;->q:Ls1/a/a/a/v0/e/z/e;

    .line 10
    iget-object v10, p0, Ls1/a/a/a/v0/k/b/g0/l;->r:Ls1/a/a/a/v0/e/z/g;

    .line 11
    iget-object v11, p0, Ls1/a/a/a/v0/k/b/g0/l;->s:Ls1/a/a/a/v0/k/b/g0/f;

    move-object v1, v0

    .line 12
    invoke-direct/range {v1 .. v11}, Ls1/a/a/a/v0/k/b/g0/l;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/e/r;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/k/b/g0/f;)V

    .line 13
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/f;->u()Ljava/util/List;

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Ls1/a/a/a/v0/k/b/g0/l;->G0()Ls1/a/a/a/v0/m/l0;

    move-result-object v2

    sget-object v3, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    invoke-virtual {p1, v2, v3}, Ls1/a/a/a/v0/m/d1;->i(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    const-string v4, "substitutor.safeSubstitu\u2026Type, Variance.INVARIANT)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/a/a/a/v0/f/d;->C(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v2

    .line 15
    invoke-virtual {p0}, Ls1/a/a/a/v0/k/b/g0/l;->g0()Ls1/a/a/a/v0/m/l0;

    move-result-object v5

    invoke-virtual {p1, v5, v3}, Ls1/a/a/a/v0/m/d1;->i(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->C(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    .line 16
    iget-object v3, p0, Ls1/a/a/a/v0/k/b/g0/l;->m:Ls1/a/a/a/v0/k/b/g0/g$a;

    .line 17
    invoke-virtual {v0, v1, v2, p1, v3}, Ls1/a/a/a/v0/k/b/g0/l;->w0(Ljava/util/List;Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/k/b/g0/g$a;)V

    :goto_0
    return-object v0
.end method

.method public g0()Ls1/a/a/a/v0/m/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/l;->j:Ls1/a/a/a/v0/m/l0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "expandedType"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public h0()Ls1/a/a/a/v0/e/z/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/l;->r:Ls1/a/a/a/v0/e/z/g;

    return-object v0
.end method

.method public i0()Ls1/a/a/a/v0/e/z/c;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/l;->p:Ls1/a/a/a/v0/e/z/c;

    return-object v0
.end method

.method public j0()Ls1/a/a/a/v0/k/b/g0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/l;->s:Ls1/a/a/a/v0/k/b/g0/f;

    return-object v0
.end method

.method public m()Ls1/a/a/a/v0/b/e;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/k/b/g0/l;->g0()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ls1/a/a/a/v0/k/b/g0/l;->g0()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v0

    instance-of v2, v0, Ls1/a/a/a/v0/b/e;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    check-cast v1, Ls1/a/a/a/v0/b/e;

    :goto_1
    return-object v1
.end method

.method public t()Ls1/a/a/a/v0/m/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/l;->l:Ls1/a/a/a/v0/m/l0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "defaultTypeImpl"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final w0(Ljava/util/List;Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/k/b/g0/g$a;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/w0;",
            ">;",
            "Ls1/a/a/a/v0/m/l0;",
            "Ls1/a/a/a/v0/m/l0;",
            "Ls1/a/a/a/v0/k/b/g0/g$a;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v9, p4

    const-string v3, "declaredTypeParameters"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "underlyingType"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "expandedType"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "isExperimentalCoroutineInReleaseEnvironment"

    invoke-static {v9, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object v0, v8, Ls1/a/a/a/v0/b/h1/f;->e:Ljava/util/List;

    .line 3
    iput-object v1, v8, Ls1/a/a/a/v0/k/b/g0/l;->i:Ls1/a/a/a/v0/m/l0;

    .line 4
    iput-object v2, v8, Ls1/a/a/a/v0/k/b/g0/l;->j:Ls1/a/a/a/v0/m/l0;

    .line 5
    invoke-static/range {p0 .. p0}, Le/q/f/a/d/a;->M(Ls1/a/a/a/v0/b/i;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v8, Ls1/a/a/a/v0/k/b/g0/l;->k:Ljava/util/List;

    .line 6
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/k/b/g0/l;->m()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->J()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ls1/a/a/a/v0/j/y/i$b;->b:Ls1/a/a/a/v0/j/y/i$b;

    :goto_0
    new-instance v1, Ls1/a/a/a/v0/b/h1/e;

    invoke-direct {v1, v8}, Ls1/a/a/a/v0/b/h1/e;-><init>(Ls1/a/a/a/v0/b/h1/f;)V

    invoke-static {v8, v0, v1}, Ls1/a/a/a/v0/m/f1;->n(Ls1/a/a/a/v0/b/h;Ls1/a/a/a/v0/j/y/i;Ls1/z/b/l;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    const-string v1, "TypeUtils.makeUnsubstitu\u2026s)?.defaultType\n        }"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object v0, v8, Ls1/a/a/a/v0/k/b/g0/l;->l:Ls1/a/a/a/v0/m/l0;

    .line 8
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/k/b/g0/l;->m()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 9
    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->p()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "classDescriptor.constructors"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 12
    move-object v12, v0

    check-cast v12, Ls1/a/a/a/v0/b/d;

    .line 13
    sget-object v0, Ls1/a/a/a/v0/b/h1/l0;->L:Ls1/a/a/a/v0/b/h1/l0$a;

    .line 14
    iget-object v1, v8, Ls1/a/a/a/v0/k/b/g0/l;->n:Ls1/a/a/a/v0/l/m;

    const-string v13, "it"

    .line 15
    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "storageManager"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAliasDescriptor"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/k/b/g0/l;->m()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    const/4 v14, 0x0

    if-nez v0, :cond_2

    move-object v15, v14

    goto :goto_2

    .line 18
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/k/b/g0/l;->g0()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/m/d1;->d(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/d1;

    move-result-object v0

    move-object v15, v0

    :goto_2
    if-eqz v15, :cond_5

    .line 19
    invoke-interface {v12, v15}, Ls1/a/a/a/v0/b/d;->c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/d;

    move-result-object v16

    if-eqz v16, :cond_5

    .line 20
    new-instance v7, Ls1/a/a/a/v0/b/h1/l0;

    const/4 v4, 0x0

    .line 21
    invoke-interface {v12}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v5

    .line 22
    invoke-interface {v12}, Ls1/a/a/a/v0/b/b;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v6

    const-string v0, "constructor.kind"

    invoke-static {v6, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/h1/n;->getSource()Ls1/a/a/a/v0/b/r0;

    move-result-object v3

    const-string v0, "typeAliasDescriptor.source"

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v7

    move-object/from16 v2, p0

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    move-object/from16 p1, v7

    move-object/from16 v7, v17

    .line 23
    invoke-direct/range {v0 .. v7}, Ls1/a/a/a/v0/b/h1/l0;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/v0;Ls1/a/a/a/v0/b/d;Ls1/a/a/a/v0/b/h1/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;)V

    .line 24
    invoke-interface {v12}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object v4, v15

    .line 25
    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/b/h1/r;->P0(Ls1/a/a/a/v0/b/v;Ljava/util/List;Ls1/a/a/a/v0/m/d1;ZZ[Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "FunctionDescriptorImpl.g\u2026         ) ?: return null"

    .line 26
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface/range {v16 .. v16}, Ls1/a/a/a/v0/b/j;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v1

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->C2(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/k/b/g0/l;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v2

    const-string v3, "typeAliasDescriptor.defaultType"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Ls1/a/a/a/v0/m/o0;->d(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v22

    .line 28
    invoke-interface {v12}, Ls1/a/a/a/v0/b/a;->k0()Ls1/a/a/a/v0/b/n0;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 29
    invoke-static {v1, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    sget-object v2, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    invoke-virtual {v15, v1, v2}, Ls1/a/a/a/v0/m/d1;->i(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    .line 30
    sget-object v2, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 31
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v2, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    move-object/from16 v3, p1

    .line 33
    invoke-static {v3, v1, v2}, Ls1/a/a/a/v0/f/d;->u0(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/n0;

    move-result-object v14

    goto :goto_3

    :cond_3
    move-object/from16 v3, p1

    :goto_3
    move-object/from16 v18, v14

    const/16 v19, 0x0

    .line 34
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/h1/f;->u()Ljava/util/List;

    move-result-object v20

    .line 35
    sget-object v23, Ls1/a/a/a/v0/b/y;->a:Ls1/a/a/a/v0/b/y;

    .line 36
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/h1/f;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v24

    move-object/from16 v17, v3

    move-object/from16 v21, v0

    .line 37
    invoke-virtual/range {v17 .. v24}, Ls1/a/a/a/v0/b/h1/r;->Q0(Ls1/a/a/a/v0/b/n0;Ls1/a/a/a/v0/b/n0;Ljava/util/List;Ljava/util/List;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;)Ls1/a/a/a/v0/b/h1/r;

    move-object v14, v3

    goto :goto_4

    :cond_4
    const/16 v0, 0x1a

    .line 38
    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/r;->X(I)V

    throw v14

    :cond_5
    :goto_4
    if-eqz v14, :cond_1

    .line 39
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 40
    :cond_6
    sget-object v10, Ls1/u/s;->a:Ls1/u/s;

    .line 41
    :cond_7
    iput-object v10, v8, Ls1/a/a/a/v0/k/b/g0/l;->h:Ljava/util/Collection;

    .line 42
    iput-object v9, v8, Ls1/a/a/a/v0/k/b/g0/l;->m:Ls1/a/a/a/v0/k/b/g0/g$a;

    return-void
.end method
