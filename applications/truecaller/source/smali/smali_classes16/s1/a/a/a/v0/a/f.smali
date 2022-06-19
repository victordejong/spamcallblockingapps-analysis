.class public final Ls1/a/a/a/v0/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ls1/a/a/a/v0/a/g;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/e0;Ljava/util/List;Ljava/util/List;Ls1/a/a/a/v0/m/e0;Z)Ls1/a/a/a/v0/m/l0;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/a/g;",
            "Ls1/a/a/a/v0/b/f1/h;",
            "Ls1/a/a/a/v0/m/e0;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/m/e0;",
            ">;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/f/e;",
            ">;",
            "Ls1/a/a/a/v0/m/e0;",
            "Z)",
            "Ls1/a/a/a/v0/m/l0;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-string v5, "builtIns"

    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "annotations"

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "parameterTypes"

    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "returnType"

    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz p2, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    move v10, v8

    :goto_0
    add-int/2addr v7, v10

    add-int/2addr v7, v9

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p2, :cond_1

    .line 3
    invoke-static/range {p2 .. p2}, Ls1/a/a/a/v0/f/d;->F(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y0;

    move-result-object v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    invoke-static {v6, v10}, Ls1/a/a/a/v0/f/d;->r(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 4
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v8, 0x1

    if-ltz v8, :cond_4

    .line 5
    check-cast v11, Ls1/a/a/a/v0/m/e0;

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls1/a/a/a/v0/f/e;

    if-eqz v8, :cond_2

    .line 7
    iget-boolean v13, v8, Ls1/a/a/a/v0/f/e;->b:Z

    if-nez v13, :cond_2

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_3

    .line 8
    new-instance v13, Ls1/a/a/a/v0/b/f1/j;

    .line 9
    sget-object v14, Ls1/a/a/a/v0/a/k$a;->x:Ls1/a/a/a/v0/f/b;

    const-string v15, "name"

    .line 10
    invoke-static {v15}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v15

    new-instance v9, Ls1/a/a/a/v0/j/t/w;

    invoke-virtual {v8}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v8

    const-string v7, "name.asString()"

    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v8}, Ls1/a/a/a/v0/j/t/w;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance v7, Ls1/k;

    invoke-direct {v7, v15, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-static {v7}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v7

    .line 13
    invoke-direct {v13, v0, v14, v7}, Ls1/a/a/a/v0/b/f1/j;-><init>(Ls1/a/a/a/v0/a/g;Ls1/a/a/a/v0/f/b;Ljava/util/Map;)V

    .line 14
    sget-object v7, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    invoke-interface {v11}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v8

    invoke-static {v8, v13}, Ls1/u/i;->k0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ls1/a/a/a/v0/b/f1/h$a;->a(Ljava/util/List;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v7

    invoke-static {v11, v7}, Ls1/a/a/a/v0/f/d;->V2(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/e0;

    move-result-object v11

    .line 15
    :cond_3
    invoke-static {v11}, Ls1/a/a/a/v0/f/d;->F(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y0;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v12

    const/4 v9, 0x1

    goto :goto_2

    .line 16
    :cond_4
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 v0, 0x0

    throw v0

    .line 17
    :cond_5
    invoke-static/range {p5 .. p5}, Ls1/a/a/a/v0/f/d;->F(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y0;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 19
    :goto_4
    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p6, :cond_7

    .line 20
    invoke-virtual {v0, v2}, Ls1/a/a/a/v0/a/g;->v(I)Ls1/a/a/a/v0/b/e;

    move-result-object v2

    goto :goto_5

    .line 21
    :cond_7
    sget-object v3, Ls1/a/a/a/v0/a/k;->a:Ls1/a/a/a/v0/f/e;

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Function"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ls1/a/a/a/v0/a/g;->j(Ljava/lang/String;)Ls1/a/a/a/v0/b/e;

    move-result-object v2

    :goto_5
    const-string v3, "if (isSuspendFunction) b\u2026tFunction(parameterCount)"

    .line 24
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_9

    const-string v3, "$this$withExtensionFunctionAnnotation"

    .line 25
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v3, Ls1/a/a/a/v0/a/k$a;->w:Ls1/a/a/a/v0/f/b;

    invoke-interface {v1, v3}, Ls1/a/a/a/v0/b/f1/h;->Y1(Ls1/a/a/a/v0/f/b;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_6

    .line 27
    :cond_8
    sget-object v4, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    new-instance v5, Ls1/a/a/a/v0/b/f1/j;

    sget-object v7, Ls1/u/t;->a:Ls1/u/t;

    invoke-direct {v5, v0, v3, v7}, Ls1/a/a/a/v0/b/f1/j;-><init>(Ls1/a/a/a/v0/a/g;Ls1/a/a/a/v0/f/b;Ljava/util/Map;)V

    invoke-static {v1, v5}, Ls1/u/i;->k0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Ls1/a/a/a/v0/b/f1/h$a;->a(Ljava/util/List;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    goto :goto_7

    :cond_9
    :goto_6
    move-object v0, v1

    .line 28
    :goto_7
    invoke-static {v0, v2, v6}, Ls1/a/a/a/v0/m/f0;->e(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/e;Ljava/util/List;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    return-object v0
.end method

.method public static final b(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/f/e;
    .locals 2

    const-string v0, "$this$extractParameterNameFromFunctionTypeArgument"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object p0

    sget-object v0, Ls1/a/a/a/v0/a/k$a;->x:Ls1/a/a/a/v0/f/b;

    invoke-interface {p0, v0}, Ls1/a/a/a/v0/b/f1/h;->s(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2
    invoke-interface {p0}, Ls1/a/a/a/v0/b/f1/c;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Ls1/u/i;->C0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ls1/a/a/a/v0/j/t/w;

    if-nez v1, :cond_0

    move-object p0, v0

    :cond_0
    check-cast p0, Ls1/a/a/a/v0/j/t/w;

    if-eqz p0, :cond_2

    .line 3
    iget-object p0, p0, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 4
    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 5
    invoke-static {p0}, Ls1/a/a/a/v0/f/e;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 6
    invoke-static {p0}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static final c(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/o/c;
    .locals 4

    const-string v0, "$this$getFunctionalClassKind"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Ls1/a/a/a/v0/b/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p0}, Ls1/a/a/a/v0/a/g;->L(Ls1/a/a/a/v0/b/k;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-static {p0}, Ls1/a/a/a/v0/j/v/b;->i(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ls1/a/a/a/v0/f/c;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ls1/a/a/a/v0/f/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Ls1/a/a/a/v0/a/o/c;->h:Ls1/a/a/a/v0/a/o/c$a;

    invoke-virtual {p0}, Ls1/a/a/a/v0/f/c;->h()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    invoke-virtual {v2}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shortName().asString()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ls1/a/a/a/v0/f/c;->i()Ls1/a/a/a/v0/f/b;

    move-result-object p0

    invoke-virtual {p0}, Ls1/a/a/a/v0/f/b;->e()Ls1/a/a/a/v0/f/b;

    move-result-object p0

    const-string v3, "toSafe().parent()"

    invoke-static {p0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "className"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "packageFqName"

    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v2, p0}, Ls1/a/a/a/v0/a/o/c$a;->a(Ljava/lang/String;Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/a/o/c$a$a;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 8
    iget-object v1, p0, Ls1/a/a/a/v0/a/o/c$a$a;->a:Ls1/a/a/a/v0/a/o/c;

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static final d(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;
    .locals 2

    const-string v0, "$this$getReceiverTypeFromFunctionType"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/a/f;->g(Ls1/a/a/a/v0/m/e0;)Z

    .line 2
    invoke-interface {p0}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/a/k$a;->w:Ls1/a/a/a/v0/f/b;

    invoke-interface {v0, v1}, Ls1/a/a/a/v0/b/f1/h;->s(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/m/y0;

    invoke-interface {p0}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static final e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;
    .locals 1

    const-string v0, "$this$getReturnTypeFromFunctionType"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/a/f;->g(Ls1/a/a/a/v0/m/e0;)Z

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/m/y0;

    invoke-interface {p0}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p0

    const-string v0, "arguments.last().type"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final f(Ls1/a/a/a/v0/m/e0;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/e0;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/y0;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$getValueParameterTypesFromFunctionType"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/a/f;->g(Ls1/a/a/a/v0/m/e0;)Z

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v0

    const-string v1, "$this$isBuiltinExtensionFunctionalType"

    .line 3
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Ls1/a/a/a/v0/a/f;->g(Ls1/a/a/a/v0/m/e0;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {p0}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object p0

    sget-object v1, Ls1/a/a/a/v0/a/k$a;->w:Ls1/a/a/a/v0/f/b;

    invoke-interface {p0, v1}, Ls1/a/a/a/v0/b/f1/h;->s(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eqz p0, :cond_1

    move v2, v3

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v3

    .line 7
    invoke-interface {v0, v2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Ls1/a/a/a/v0/m/e0;)Z
    .locals 3

    const-string v0, "$this$isBuiltinFunctionalType"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p0

    invoke-interface {p0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    const-string v2, "$this$isBuiltinFunctionalClassDescriptor"

    .line 2
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Ls1/a/a/a/v0/a/f;->c(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/o/c;

    move-result-object p0

    .line 4
    sget-object v2, Ls1/a/a/a/v0/a/o/c;->c:Ls1/a/a/a/v0/a/o/c;

    if-eq p0, v2, :cond_1

    sget-object v2, Ls1/a/a/a/v0/a/o/c;->d:Ls1/a/a/a/v0/a/o/c;

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-ne p0, v1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public static final h(Ls1/a/a/a/v0/m/e0;)Z
    .locals 1

    const-string v0, "$this$isSuspendFunctionType"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p0

    invoke-interface {p0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ls1/a/a/a/v0/a/f;->c(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/o/c;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Ls1/a/a/a/v0/a/o/c;->d:Ls1/a/a/a/v0/a/o/c;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
