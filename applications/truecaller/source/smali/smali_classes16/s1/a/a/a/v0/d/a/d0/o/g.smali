.class public final Ls1/a/a/a/v0/d/a/d0/o/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/a/a/a/v0/d/a/d0/h;

.field public final b:Ls1/a/a/a/v0/d/a/d0/m;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/d0/m;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/o/g;->a:Ls1/a/a/a/v0/d/a/d0/h;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/o/g;->b:Ls1/a/a/a/v0/d/a/d0/m;

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/d/a/f0/j;Ls1/a/a/a/v0/d/a/d0/o/a;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v0, p3

    .line 1
    sget-object v1, Ls1/a/a/a/v0/m/j1;->e:Ls1/a/a/a/v0/m/j1;

    sget-object v2, Ls1/a/a/a/v0/d/a/b0/k;->a:Ls1/a/a/a/v0/d/a/b0/k;

    sget-object v3, Ls1/a/a/a/v0/d/a/d0/o/b;->c:Ls1/a/a/a/v0/d/a/d0/o/b;

    if-eqz v0, :cond_0

    invoke-interface/range {p3 .. p3}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v8, p1

    goto :goto_0

    :cond_0
    new-instance v4, Ls1/a/a/a/v0/d/a/d0/f;

    iget-object v5, v6, Ls1/a/a/a/v0/d/a/d0/o/g;->a:Ls1/a/a/a/v0/d/a/d0/h;

    move-object/from16 v8, p1

    invoke-direct {v4, v5, v8}, Ls1/a/a/a/v0/d/a/d0/f;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/d;)V

    :goto_0
    move-object v9, v4

    .line 2
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/d/a/f0/j;->b()Ls1/a/a/a/v0/d/a/f0/i;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_10

    .line 3
    instance-of v12, v4, Ls1/a/a/a/v0/d/a/f0/g;

    if-eqz v12, :cond_d

    .line 4
    move-object v12, v4

    check-cast v12, Ls1/a/a/a/v0/d/a/f0/g;

    invoke-interface {v12}, Ls1/a/a/a/v0/d/a/f0/g;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 5
    iget-boolean v4, v7, Ls1/a/a/a/v0/d/a/d0/o/a;->c:Z

    if-eqz v4, :cond_3

    .line 6
    sget-object v4, Ls1/a/a/a/v0/d/a/d0/o/i;->a:Ls1/a/a/a/v0/f/b;

    .line 7
    invoke-static {v13, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    iget-object v4, v6, Ls1/a/a/a/v0/d/a/d0/o/g;->a:Ls1/a/a/a/v0/d/a/d0/h;

    .line 9
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 10
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/d0/c;->p:Ls1/a/a/a/v0/a/j;

    .line 11
    iget-object v13, v4, Ls1/a/a/a/v0/a/j;->b:Ls1/a/a/a/v0/a/j$a;

    sget-object v14, Ls1/a/a/a/v0/a/j;->d:[Ls1/a/l;

    aget-object v14, v14, v11

    .line 12
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "types"

    invoke-static {v4, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "property"

    invoke-static {v14, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v14}, Ls1/a/b;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ls1/f0/r;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 14
    invoke-static {v13}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v13

    const-string v14, "Name.identifier(className)"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v14, v4, Ls1/a/a/a/v0/a/j;->a:Ls1/g;

    invoke-interface {v14}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ls1/a/a/a/v0/j/y/i;

    .line 16
    sget-object v15, Ls1/a/a/a/v0/c/a/d;->c:Ls1/a/a/a/v0/c/a/d;

    invoke-interface {v14, v13, v15}, Ls1/a/a/a/v0/j/y/k;->f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;

    move-result-object v14

    instance-of v15, v14, Ls1/a/a/a/v0/b/e;

    if-nez v15, :cond_1

    move-object v14, v5

    :cond_1
    check-cast v14, Ls1/a/a/a/v0/b/e;

    if-eqz v14, :cond_2

    goto/16 :goto_4

    .line 17
    :cond_2
    iget-object v4, v4, Ls1/a/a/a/v0/a/j;->c:Ls1/a/a/a/v0/b/b0;

    new-instance v14, Ls1/a/a/a/v0/f/a;

    sget-object v15, Ls1/a/a/a/v0/a/k;->h:Ls1/a/a/a/v0/f/b;

    invoke-direct {v14, v15, v13}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/e;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v4, v14, v13}, Ls1/a/a/a/v0/b/b0;->a(Ls1/a/a/a/v0/f/a;Ljava/util/List;)Ls1/a/a/a/v0/b/e;

    move-result-object v14

    goto/16 :goto_4

    .line 18
    :cond_3
    sget-object v4, Ls1/a/a/a/v0/a/p/d;->a:Ls1/a/a/a/v0/a/p/d;

    .line 19
    iget-object v14, v6, Ls1/a/a/a/v0/d/a/d0/o/g;->a:Ls1/a/a/a/v0/d/a/d0/h;

    .line 20
    iget-object v14, v14, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 21
    iget-object v14, v14, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 22
    invoke-interface {v14}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v14

    const/4 v15, 0x4

    invoke-static {v4, v13, v14, v5, v15}, Ls1/a/a/a/v0/a/p/d;->d(Ls1/a/a/a/v0/a/p/d;Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/a/g;Ljava/lang/Integer;I)Ls1/a/a/a/v0/b/e;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 23
    invoke-virtual {v4, v14}, Ls1/a/a/a/v0/a/p/d;->c(Ls1/a/a/a/v0/b/e;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 24
    iget-object v13, v7, Ls1/a/a/a/v0/d/a/d0/o/a;->b:Ls1/a/a/a/v0/d/a/d0/o/b;

    if-eq v13, v3, :cond_7

    .line 25
    iget-object v13, v7, Ls1/a/a/a/v0/d/a/d0/o/a;->a:Ls1/a/a/a/v0/d/a/b0/k;

    if-eq v13, v2, :cond_7

    .line 26
    sget-object v13, Ls1/a/a/a/v0/d/a/d0/o/c;->b:Ls1/a/a/a/v0/d/a/d0/o/c;

    .line 27
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/d/a/f0/j;->o()Ljava/util/List;

    move-result-object v15

    invoke-static {v15}, Ls1/u/i;->S(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ls1/a/a/a/v0/d/a/f0/v;

    invoke-virtual {v13, v15}, Ls1/a/a/a/v0/d/a/d0/o/c;->a(Ls1/a/a/a/v0/d/a/f0/v;)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_1

    :cond_4
    const-string v13, "readOnly"

    .line 28
    invoke-static {v14, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {v14}, Ls1/a/a/a/v0/j/g;->g(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object v13

    .line 30
    sget-object v15, Ls1/a/a/a/v0/a/p/c;->m:Ls1/a/a/a/v0/a/p/c;

    .line 31
    sget-object v15, Ls1/a/a/a/v0/a/p/c;->k:Ljava/util/HashMap;

    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ls1/a/a/a/v0/f/b;

    if-eqz v13, :cond_6

    .line 32
    invoke-static {v14}, Ls1/a/a/a/v0/j/v/b;->f(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/g;

    move-result-object v15

    invoke-virtual {v15, v13}, Ls1/a/a/a/v0/a/g;->i(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/e;

    move-result-object v13

    const-string v15, "descriptor.builtIns.getB\u2026Name(oppositeClassFqName)"

    invoke-static {v13, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {v13}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v13

    const-string v15, "JavaToKotlinClassMapper.\u2026         .typeConstructor"

    invoke-static {v13, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v13

    const-string v15, "JavaToKotlinClassMapper.\u2026ypeConstructor.parameters"

    invoke-static {v13, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {v13}, Ls1/u/i;->S(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ls1/a/a/a/v0/b/w0;

    if-eqz v13, :cond_5

    invoke-interface {v13}, Ls1/a/a/a/v0/b/w0;->k()Ls1/a/a/a/v0/m/j1;

    move-result-object v13

    if-eqz v13, :cond_5

    const-string v15, "JavaToKotlinClassMapper.\u2026.variance ?: return false"

    invoke-static {v13, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v13, v1, :cond_5

    move v13, v10

    goto :goto_2

    :cond_5
    :goto_1
    move v13, v11

    :goto_2
    if-eqz v13, :cond_9

    goto :goto_3

    .line 35
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "read-only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " collection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_7
    :goto_3
    invoke-virtual {v4, v14}, Ls1/a/a/a/v0/a/p/d;->a(Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/b/e;

    move-result-object v14

    goto :goto_4

    :cond_8
    move-object v14, v5

    :cond_9
    :goto_4
    if-eqz v14, :cond_a

    goto :goto_5

    .line 37
    :cond_a
    iget-object v4, v6, Ls1/a/a/a/v0/d/a/d0/o/g;->a:Ls1/a/a/a/v0/d/a/d0/h;

    .line 38
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 39
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/d0/c;->k:Ls1/a/a/a/v0/d/a/d0/j;

    .line 40
    invoke-interface {v4, v12}, Ls1/a/a/a/v0/d/a/d0/j;->a(Ls1/a/a/a/v0/d/a/f0/g;)Ls1/a/a/a/v0/b/e;

    move-result-object v14

    :goto_5
    if-eqz v14, :cond_b

    .line 41
    invoke-interface {v14}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v4

    if-eqz v4, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual/range {p0 .. p1}, Ls1/a/a/a/v0/d/a/d0/o/g;->b(Ls1/a/a/a/v0/d/a/f0/j;)Ls1/a/a/a/v0/m/v0;

    move-result-object v4

    goto :goto_6

    .line 42
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class type should have a FQ name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 43
    :cond_d
    instance-of v12, v4, Ls1/a/a/a/v0/d/a/f0/w;

    if-eqz v12, :cond_f

    .line 44
    iget-object v12, v6, Ls1/a/a/a/v0/d/a/d0/o/g;->b:Ls1/a/a/a/v0/d/a/d0/m;

    check-cast v4, Ls1/a/a/a/v0/d/a/f0/w;

    invoke-interface {v12, v4}, Ls1/a/a/a/v0/d/a/d0/m;->a(Ls1/a/a/a/v0/d/a/f0/w;)Ls1/a/a/a/v0/b/w0;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-interface {v4}, Ls1/a/a/a/v0/b/w0;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v4

    goto :goto_6

    :cond_e
    move-object v12, v5

    goto :goto_7

    .line 45
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown classifier kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_10
    invoke-virtual/range {p0 .. p1}, Ls1/a/a/a/v0/d/a/d0/o/g;->b(Ls1/a/a/a/v0/d/a/f0/j;)Ls1/a/a/a/v0/m/v0;

    move-result-object v4

    :goto_6
    move-object v12, v4

    :goto_7
    if-eqz v12, :cond_23

    .line 47
    iget-object v4, v7, Ls1/a/a/a/v0/d/a/d0/o/a;->b:Ls1/a/a/a/v0/d/a/d0/o/b;

    if-ne v4, v3, :cond_11

    move v13, v11

    goto :goto_9

    .line 48
    :cond_11
    iget-boolean v3, v7, Ls1/a/a/a/v0/d/a/d0/o/a;->c:Z

    if-nez v3, :cond_12

    .line 49
    iget-object v3, v7, Ls1/a/a/a/v0/d/a/d0/o/a;->a:Ls1/a/a/a/v0/d/a/b0/k;

    if-eq v3, v2, :cond_12

    move v2, v10

    goto :goto_8

    :cond_12
    move v2, v11

    :goto_8
    move v13, v2

    :goto_9
    if-eqz v0, :cond_13

    .line 50
    invoke-virtual/range {p3 .. p3}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v2

    goto :goto_a

    :cond_13
    move-object v2, v5

    :goto_a
    invoke-static {v2, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/d/a/f0/j;->B()Z

    move-result v2

    if-nez v2, :cond_14

    if-eqz v13, :cond_14

    .line 51
    invoke-virtual {v0, v10}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    return-object v0

    .line 52
    :cond_14
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/d/a/f0/j;->B()Z

    move-result v14

    const-string v0, "constructor.parameters"

    if-nez v14, :cond_16

    .line 53
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/d/a/f0/j;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v12}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v10

    if-eqz v2, :cond_15

    goto :goto_b

    :cond_15
    move v2, v11

    goto :goto_c

    :cond_16
    :goto_b
    move v2, v10

    .line 54
    :goto_c
    invoke-interface {v12}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "parameter"

    const/16 v0, 0xa

    if-eqz v2, :cond_19

    .line 55
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v3, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 57
    move-object v11, v0

    check-cast v11, Ls1/a/a/a/v0/b/w0;

    .line 58
    new-instance v5, Ls1/a/a/a/v0/m/h0;

    iget-object v0, v6, Ls1/a/a/a/v0/d/a/d0/o/g;->a:Ls1/a/a/a/v0/d/a/d0/h;

    .line 59
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 60
    iget-object v4, v0, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 61
    new-instance v3, Ls1/a/a/a/v0/d/a/d0/o/e;

    move-object v0, v3

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 p1, v10

    move-object v10, v3

    move-object/from16 v3, p2

    move/from16 v16, v13

    move-object v13, v4

    move-object v4, v12

    move-object/from16 v17, v12

    move-object v12, v5

    move v5, v14

    invoke-direct/range {v0 .. v5}, Ls1/a/a/a/v0/d/a/d0/o/e;-><init>(Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/d/a/d0/o/g;Ls1/a/a/a/v0/d/a/d0/o/a;Ls1/a/a/a/v0/m/v0;Z)V

    invoke-direct {v12, v13, v10}, Ls1/a/a/a/v0/m/h0;-><init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V

    .line 62
    sget-object v0, Ls1/a/a/a/v0/d/a/d0/o/j;->d:Ls1/a/a/a/v0/d/a/d0/o/j;

    .line 63
    invoke-static {v11, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v14, :cond_17

    move-object v1, v7

    goto :goto_e

    .line 64
    :cond_17
    sget-object v1, Ls1/a/a/a/v0/d/a/d0/o/b;->a:Ls1/a/a/a/v0/d/a/d0/o/b;

    invoke-virtual {v7, v1}, Ls1/a/a/a/v0/d/a/d0/o/a;->a(Ls1/a/a/a/v0/d/a/d0/o/b;)Ls1/a/a/a/v0/d/a/d0/o/a;

    move-result-object v1

    .line 65
    :goto_e
    invoke-virtual {v0, v11, v1, v12}, Ls1/a/a/a/v0/d/a/d0/o/j;->h(Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/d/a/d0/o/a;Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y0;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p1

    move/from16 v13, v16

    move-object/from16 v12, v17

    goto :goto_d

    :cond_18
    move-object/from16 v17, v12

    move/from16 v16, v13

    .line 66
    invoke-static {v8}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_16

    :cond_19
    move-object/from16 v17, v12

    move/from16 v16, v13

    .line 67
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/d/a/f0/j;->o()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_1b

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v3, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 70
    check-cast v2, Ls1/a/a/a/v0/b/w0;

    .line 71
    new-instance v3, Ls1/a/a/a/v0/m/a1;

    const-string v4, "p"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    invoke-virtual {v2}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls1/a/a/a/v0/m/x;->d(Ljava/lang/String;)Ls1/a/a/a/v0/m/l0;

    move-result-object v2

    invoke-direct {v3, v2}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/e0;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1a
    invoke-static {v1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_16

    .line 72
    :cond_1b
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/d/a/f0/j;->o()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ls1/u/i;->h1(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    .line 73
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    check-cast v2, Ls1/u/x;

    invoke-virtual {v2}, Ls1/u/x;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    move-object v2, v0

    check-cast v2, Ls1/u/y;

    invoke-virtual {v2}, Ls1/u/y;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-virtual {v2}, Ls1/u/y;->next()Ljava/lang/Object;

    move-result-object v2

    .line 75
    check-cast v2, Ls1/u/w;

    .line 76
    iget v7, v2, Ls1/u/w;->a:I

    .line 77
    iget-object v2, v2, Ls1/u/w;->b:Ljava/lang/Object;

    .line 78
    check-cast v2, Ls1/a/a/a/v0/d/a/f0/v;

    .line 79
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 80
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/v0/b/w0;

    .line 81
    sget-object v8, Ls1/a/a/a/v0/d/a/b0/k;->b:Ls1/a/a/a/v0/d/a/b0/k;

    const/4 v12, 0x3

    invoke-static {v8, v11, v5, v12}, Ls1/a/a/a/v0/d/a/d0/o/i;->c(Ls1/a/a/a/v0/d/a/b0/k;ZLs1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/d/a/d0/o/a;

    move-result-object v13

    invoke-static {v7, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v14, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    instance-of v10, v2, Ls1/a/a/a/v0/d/a/f0/z;

    if-eqz v10, :cond_21

    .line 83
    check-cast v2, Ls1/a/a/a/v0/d/a/f0/z;

    invoke-interface {v2}, Ls1/a/a/a/v0/d/a/f0/z;->n()Ls1/a/a/a/v0/d/a/f0/v;

    move-result-object v10

    .line 84
    invoke-interface {v2}, Ls1/a/a/a/v0/d/a/f0/z;->K()Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object v2, v1

    goto :goto_11

    :cond_1c
    sget-object v2, Ls1/a/a/a/v0/m/j1;->d:Ls1/a/a/a/v0/m/j1;

    :goto_11
    if-eqz v10, :cond_20

    .line 85
    invoke-interface {v7}, Ls1/a/a/a/v0/b/w0;->k()Ls1/a/a/a/v0/m/j1;

    move-result-object v5

    if-ne v5, v14, :cond_1d

    goto :goto_12

    .line 86
    :cond_1d
    invoke-interface {v7}, Ls1/a/a/a/v0/b/w0;->k()Ls1/a/a/a/v0/m/j1;

    move-result-object v5

    if-eq v2, v5, :cond_1e

    const/4 v5, 0x1

    goto :goto_13

    :cond_1e
    :goto_12
    move v5, v11

    :goto_13
    if-eqz v5, :cond_1f

    goto :goto_14

    :cond_1f
    const/4 v5, 0x0

    .line 87
    invoke-static {v8, v11, v5, v12}, Ls1/a/a/a/v0/d/a/d0/o/i;->c(Ls1/a/a/a/v0/d/a/b0/k;ZLs1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/d/a/d0/o/a;

    move-result-object v8

    invoke-virtual {v6, v10, v8}, Ls1/a/a/a/v0/d/a/d0/o/g;->d(Ls1/a/a/a/v0/d/a/f0/v;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/a/a/a/v0/m/e0;

    move-result-object v5

    .line 88
    invoke-static {v5, v2, v7}, Ls1/a/a/a/v0/f/d;->w0(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/b/w0;)Ls1/a/a/a/v0/m/y0;

    move-result-object v2

    goto :goto_15

    .line 89
    :cond_20
    :goto_14
    invoke-static {v7, v13}, Ls1/a/a/a/v0/d/a/d0/o/i;->b(Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/a/a/a/v0/m/y0;

    move-result-object v2

    goto :goto_15

    .line 90
    :cond_21
    new-instance v5, Ls1/a/a/a/v0/m/a1;

    invoke-virtual {v6, v2, v13}, Ls1/a/a/a/v0/d/a/d0/o/g;->d(Ls1/a/a/a/v0/d/a/f0/v;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    invoke-direct {v5, v14, v2}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    move-object v2, v5

    .line 91
    :goto_15
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v10, 0x1

    goto :goto_10

    .line 92
    :cond_22
    invoke-static {v4}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_16
    const/4 v11, 0x0

    const/16 v12, 0x10

    move-object v7, v9

    move-object/from16 v8, v17

    move-object v9, v0

    move/from16 v10, v16

    .line 93
    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/m/f0;->g(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/m/l1/e;I)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    return-object v0

    :cond_23
    move-object v0, v5

    return-object v0
.end method

.method public final b(Ls1/a/a/a/v0/d/a/f0/j;)Ls1/a/a/a/v0/m/v0;
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/f/b;

    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/j;->w()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object p1

    const-string v0, "ClassId.topLevel(FqName(\u2026classifierQualifiedName))"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/o/g;->a:Ls1/a/a/a/v0/d/a/d0/h;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->d:Ls1/a/a/a/v0/d/b/d;

    .line 5
    invoke-virtual {v0}, Ls1/a/a/a/v0/d/b/d;->b()Ls1/a/a/a/v0/k/b/j;

    move-result-object v0

    .line 6
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->m:Ls1/a/a/a/v0/b/b0;

    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ls1/a/a/a/v0/b/b0;->a(Ls1/a/a/a/v0/f/a;Ljava/util/List;)Ls1/a/a/a/v0/b/e;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object p1

    const-string v0, "c.components.deserialize\u2026istOf(0)).typeConstructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Ls1/a/a/a/v0/d/a/f0/f;Ls1/a/a/a/v0/d/a/d0/o/a;Z)Ls1/a/a/a/v0/m/e0;
    .locals 7

    sget-object v0, Ls1/a/a/a/v0/m/j1;->e:Ls1/a/a/a/v0/m/j1;

    sget-object v1, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    const-string v2, "arrayType"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "attr"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/f;->j()Ls1/a/a/a/v0/d/a/f0/v;

    move-result-object p1

    .line 2
    instance-of v2, p1, Ls1/a/a/a/v0/d/a/f0/u;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    check-cast v2, Ls1/a/a/a/v0/d/a/f0/u;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ls1/a/a/a/v0/d/a/f0/u;->getType()Ls1/a/a/a/v0/a/i;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 3
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/o/g;->a:Ls1/a/a/a/v0/d/a/d0/h;

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 5
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 6
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object p1

    invoke-virtual {p1, v2}, Ls1/a/a/a/v0/a/g;->q(Ls1/a/a/a/v0/a/i;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    const-string p3, "c.module.builtIns.getPri\u2026KotlinType(primitiveType)"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-boolean p2, p2, Ls1/a/a/a/v0/d/a/d0/o/a;->c:Z

    if-eqz p2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p1, v4}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object p2

    invoke-static {p1, p2}, Ls1/a/a/a/v0/m/f0;->c(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    :goto_2
    return-object p1

    .line 9
    :cond_3
    sget-object v2, Ls1/a/a/a/v0/d/a/b0/k;->b:Ls1/a/a/a/v0/d/a/b0/k;

    .line 10
    iget-boolean v5, p2, Ls1/a/a/a/v0/d/a/d0/o/a;->c:Z

    const/4 v6, 0x2

    .line 11
    invoke-static {v2, v5, v3, v6}, Ls1/a/a/a/v0/d/a/d0/o/i;->c(Ls1/a/a/a/v0/d/a/b0/k;ZLs1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/d/a/d0/o/a;

    move-result-object v2

    .line 12
    invoke-virtual {p0, p1, v2}, Ls1/a/a/a/v0/d/a/d0/o/g;->d(Ls1/a/a/a/v0/d/a/f0/v;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    .line 13
    iget-boolean p2, p2, Ls1/a/a/a/v0/d/a/d0/o/a;->c:Z

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v1

    .line 14
    :goto_3
    iget-object p2, p0, Ls1/a/a/a/v0/d/a/d0/o/g;->a:Ls1/a/a/a/v0/d/a/d0/h;

    .line 15
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 16
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 17
    invoke-interface {p2}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Ls1/a/a/a/v0/a/g;->h(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    const-string p2, "c.module.builtIns.getArr\u2026ctionKind, componentType)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 18
    :cond_5
    iget-object p2, p0, Ls1/a/a/a/v0/d/a/d0/o/g;->a:Ls1/a/a/a/v0/d/a/d0/h;

    .line 19
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 20
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 21
    invoke-interface {p2}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Ls1/a/a/a/v0/a/g;->h(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p2

    const-string p3, "c.module.builtIns.getArr\u2026INVARIANT, componentType)"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object p3, p0, Ls1/a/a/a/v0/d/a/d0/o/g;->a:Ls1/a/a/a/v0/d/a/d0/h;

    .line 23
    iget-object p3, p3, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 24
    iget-object p3, p3, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 25
    invoke-interface {p3}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object p3

    invoke-virtual {p3, v0, p1}, Ls1/a/a/a/v0/a/g;->h(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    invoke-virtual {p1, v4}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    .line 26
    invoke-static {p2, p1}, Ls1/a/a/a/v0/m/f0;->c(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ls1/a/a/a/v0/d/a/f0/v;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/a/a/a/v0/m/e0;
    .locals 4

    const-string v0, "attr"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/d/a/f0/u;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Ls1/a/a/a/v0/d/a/f0/u;

    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/u;->getType()Ls1/a/a/a/v0/a/i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Ls1/a/a/a/v0/d/a/d0/o/g;->a:Ls1/a/a/a/v0/d/a/d0/h;

    .line 4
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 5
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 6
    invoke-interface {p2}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Ls1/a/a/a/v0/a/g;->s(Ls1/a/a/a/v0/a/i;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/o/g;->a:Ls1/a/a/a/v0/d/a/d0/h;

    .line 8
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 9
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 10
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object p1

    invoke-virtual {p1}, Ls1/a/a/a/v0/a/g;->w()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    :goto_0
    const-string p2, "if (primitiveType != nul\u2026.module.builtIns.unitType"

    .line 11
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 12
    :cond_1
    instance-of v0, p1, Ls1/a/a/a/v0/d/a/f0/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Ls1/a/a/a/v0/d/a/f0/j;

    .line 13
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/o/f;

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/d/a/d0/o/f;-><init>(Ls1/a/a/a/v0/d/a/f0/j;)V

    .line 14
    iget-boolean v2, p2, Ls1/a/a/a/v0/d/a/d0/o/a;->c:Z

    if-nez v2, :cond_2

    .line 15
    iget-object v2, p2, Ls1/a/a/a/v0/d/a/d0/o/a;->a:Ls1/a/a/a/v0/d/a/b0/k;

    .line 16
    sget-object v3, Ls1/a/a/a/v0/d/a/b0/k;->a:Ls1/a/a/a/v0/d/a/b0/k;

    if-eq v2, v3, :cond_2

    const/4 v1, 0x1

    .line 17
    :cond_2
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/j;->B()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    .line 18
    invoke-virtual {p0, p1, p2, v3}, Ls1/a/a/a/v0/d/a/d0/o/g;->a(Ls1/a/a/a/v0/d/a/f0/j;Ls1/a/a/a/v0/d/a/d0/o/a;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    if-eqz p1, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v0}, Ls1/a/a/a/v0/d/a/d0/o/f;->a()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    goto/16 :goto_2

    .line 19
    :cond_4
    sget-object v1, Ls1/a/a/a/v0/d/a/d0/o/b;->c:Ls1/a/a/a/v0/d/a/d0/o/b;

    invoke-virtual {p2, v1}, Ls1/a/a/a/v0/d/a/d0/o/a;->a(Ls1/a/a/a/v0/d/a/d0/o/b;)Ls1/a/a/a/v0/d/a/d0/o/a;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v3}, Ls1/a/a/a/v0/d/a/d0/o/g;->a(Ls1/a/a/a/v0/d/a/f0/j;Ls1/a/a/a/v0/d/a/d0/o/a;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 20
    sget-object v3, Ls1/a/a/a/v0/d/a/d0/o/b;->b:Ls1/a/a/a/v0/d/a/d0/o/b;

    invoke-virtual {p2, v3}, Ls1/a/a/a/v0/d/a/d0/o/a;->a(Ls1/a/a/a/v0/d/a/d0/o/b;)Ls1/a/a/a/v0/d/a/d0/o/a;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Ls1/a/a/a/v0/d/a/d0/o/g;->a(Ls1/a/a/a/v0/d/a/f0/j;Ls1/a/a/a/v0/d/a/d0/o/a;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    if-eqz p1, :cond_6

    if-eqz v2, :cond_5

    .line 21
    new-instance p2, Ls1/a/a/a/v0/d/a/d0/o/k;

    invoke-direct {p2, v1, p1}, Ls1/a/a/a/v0/d/a/d0/o/k;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)V

    goto :goto_1

    .line 22
    :cond_5
    invoke-static {v1, p1}, Ls1/a/a/a/v0/m/f0;->c(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/i1;

    move-result-object p2

    :goto_1
    move-object p1, p2

    goto :goto_2

    .line 23
    :cond_6
    invoke-virtual {v0}, Ls1/a/a/a/v0/d/a/d0/o/f;->a()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    goto :goto_2

    .line 24
    :cond_7
    invoke-virtual {v0}, Ls1/a/a/a/v0/d/a/d0/o/f;->a()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    goto :goto_2

    .line 25
    :cond_8
    instance-of v0, p1, Ls1/a/a/a/v0/d/a/f0/f;

    if-eqz v0, :cond_9

    check-cast p1, Ls1/a/a/a/v0/d/a/f0/f;

    .line 26
    invoke-virtual {p0, p1, p2, v1}, Ls1/a/a/a/v0/d/a/d0/o/g;->c(Ls1/a/a/a/v0/d/a/f0/f;Ls1/a/a/a/v0/d/a/d0/o/a;Z)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    goto :goto_2

    .line 27
    :cond_9
    instance-of v0, p1, Ls1/a/a/a/v0/d/a/f0/z;

    const-string v1, "c.module.builtIns.defaultBound"

    if-eqz v0, :cond_b

    check-cast p1, Ls1/a/a/a/v0/d/a/f0/z;

    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/z;->n()Ls1/a/a/a/v0/d/a/f0/v;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/d/a/d0/o/g;->d(Ls1/a/a/a/v0/d/a/f0/v;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/o/g;->a:Ls1/a/a/a/v0/d/a/d0/h;

    .line 28
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 29
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 30
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object p1

    invoke-virtual {p1}, Ls1/a/a/a/v0/a/g;->l()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    if-nez p1, :cond_c

    .line 31
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/o/g;->a:Ls1/a/a/a/v0/d/a/d0/h;

    .line 32
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 33
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 34
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object p1

    invoke-virtual {p1}, Ls1/a/a/a/v0/a/g;->l()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1

    .line 35
    :cond_c
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
