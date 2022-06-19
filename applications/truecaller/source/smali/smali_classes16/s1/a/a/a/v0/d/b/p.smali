.class public final Ls1/a/a/a/v0/d/b/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/m/e0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/d/b/p;->e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/d/b/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final b(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/d/b/t;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/e;",
            "Ls1/a/a/a/v0/d/b/t<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeMappingConfiguration"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p0}, Ls1/a/a/a/v0/d/b/t;->e(Ls1/a/a/a/v0/b/e;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {p0}, Ls1/a/a/a/v0/b/e;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v0

    const-string v1, "klass.containingDeclaration"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    .line 4
    sget-object v2, Ls1/a/a/a/v0/f/g;->a:Ls1/a/a/a/v0/f/e;

    if-eqz v1, :cond_1

    .line 5
    iget-boolean v2, v1, Ls1/a/a/a/v0/f/e;->b:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Ls1/a/a/a/v0/f/g;->c:Ls1/a/a/a/v0/f/e;

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    const-string v4, "SpecialNames.safeIdentifier(klass.name)"

    .line 7
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/e;->d()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SpecialNames.safeIdentifier(klass.name).identifier"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    instance-of v4, v0, Ls1/a/a/a/v0/b/c0;

    if-eqz v4, :cond_3

    .line 9
    check-cast v0, Ls1/a/a/a/v0/b/c0;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/c0;->d()Ls1/a/a/a/v0/f/b;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ls1/a/a/a/v0/f/b;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ls1/a/a/a/v0/f/b;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fqName.asString()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2e

    const/4 v2, 0x4

    const/16 v4, 0x2f

    invoke-static {p0, v0, v4, v3, v2}, Ls1/f0/r;->s(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 11
    :cond_3
    instance-of v3, v0, Ls1/a/a/a/v0/b/e;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v0

    :goto_2
    check-cast v2, Ls1/a/a/a/v0/b/e;

    if-eqz v2, :cond_6

    .line 12
    invoke-interface {p1, v2}, Ls1/a/a/a/v0/d/b/t;->b(Ls1/a/a/a/v0/b/e;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    invoke-static {v2, p1}, Ls1/a/a/a/v0/d/b/p;->b(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/d/b/t;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    const/16 p1, 0x24

    .line 14
    invoke-static {p0, p1, v1}, Le/d/c/a/a;->h2(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected container: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_7
    invoke-static {v3}, Ls1/a/a/a/v0/f/g;->a(I)V

    throw v2
.end method

.method public static c(Ls1/a/a/a/v0/b/v;ZZI)Ljava/lang/String;
    .locals 3

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v1

    :cond_1
    const-string p3, "$this$computeJvmDescriptor"

    .line 1
    invoke-static {p0, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_3

    .line 3
    instance-of p2, p0, Ls1/a/a/a/v0/b/j;

    if-eqz p2, :cond_2

    const-string p2, "<init>"

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object p2

    invoke-virtual {p2}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "name.asString()"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p2, "("

    .line 4
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->n0()Ls1/a/a/a/v0/b/n0;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string v0, "it"

    .line 6
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p2

    const-string v0, "it.type"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p2}, Ls1/a/a/a/v0/d/b/p;->a(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/m/e0;)V

    .line 7
    :cond_4
    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/b1;

    const-string v2, "parameter"

    .line 8
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    const-string v2, "parameter.type"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Ls1/a/a/a/v0/d/b/p;->a(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/m/e0;)V

    goto :goto_1

    :cond_5
    const-string p2, ")"

    .line 9
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_9

    const-string p1, "descriptor"

    .line 10
    invoke-static {p0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    instance-of p1, p0, Ls1/a/a/a/v0/b/j;

    if-eqz p1, :cond_6

    goto :goto_2

    .line 12
    :cond_6
    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Ls1/a/a/a/v0/a/g;->M(Ls1/a/a/a/v0/m/e0;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Ls1/a/a/a/v0/m/f1;->g(Ls1/a/a/a/v0/m/e0;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 13
    instance-of p1, p0, Ls1/a/a/a/v0/b/l0;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_8

    const-string p0, "V"

    .line 14
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 15
    :cond_8
    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object p0

    invoke-static {p0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string p1, "returnType!!"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p0}, Ls1/a/a/a/v0/d/b/p;->a(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/m/e0;)V

    .line 16
    :cond_9
    :goto_3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final d(Ls1/a/a/a/v0/b/a;)Ljava/lang/String;
    .locals 5

    const-string v0, "$this$computeJvmSignature"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/d/b/s;->a:Ls1/a/a/a/v0/d/b/s;

    .line 2
    invoke-static {p0}, Ls1/a/a/a/v0/j/g;->t(Ls1/a/a/a/v0/b/k;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-interface {p0}, Ls1/a/a/a/v0/b/l;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v1

    instance-of v3, v1, Ls1/a/a/a/v0/b/e;

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_1
    check-cast v1, Ls1/a/a/a/v0/b/e;

    if-eqz v1, :cond_4

    .line 4
    invoke-interface {v1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v3

    const-string v4, "classDescriptor.name"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-boolean v3, v3, Ls1/a/a/a/v0/f/e;->b:Z

    if-eqz v3, :cond_2

    return-object v2

    .line 6
    :cond_2
    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->a()Ls1/a/a/a/v0/b/a;

    move-result-object p0

    instance-of v3, p0, Ls1/a/a/a/v0/b/q0;

    if-nez v3, :cond_3

    move-object p0, v2

    :cond_3
    check-cast p0, Ls1/a/a/a/v0/b/q0;

    if-eqz p0, :cond_4

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p0, v3, v3, v2}, Ls1/a/a/a/v0/d/b/p;->c(Ls1/a/a/a/v0/b/v;ZZI)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {v0, v1, p0}, Le/q/f/a/d/a;->P2(Ls1/a/a/a/v0/d/b/s;Ls1/a/a/a/v0/b/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v2
.end method

.method public static final e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/d/b/h;
    .locals 4

    const-string v0, "$this$mapToJvmType"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/d/b/j;->a:Ls1/a/a/a/v0/d/b/j;

    sget-object v1, Ls1/a/a/a/v0/d/b/v;->m:Ls1/a/a/a/v0/d/b/v;

    sget-object v2, Ls1/a/a/a/v0/d/b/u;->a:Ls1/a/a/a/v0/d/b/u;

    .line 2
    sget-object v3, Ls1/a/a/a/v0/o/g;->b:Ls1/z/b/q;

    .line 3
    invoke-static {p0, v0, v1, v2, v3}, Ls1/a/a/a/v0/d/b/p;->f(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/d/b/i;Ls1/a/a/a/v0/d/b/v;Ls1/a/a/a/v0/d/b/t;Ls1/z/b/q;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    check-cast p0, Ls1/a/a/a/v0/d/b/h;

    return-object p0
.end method

.method public static final f(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/d/b/i;Ls1/a/a/a/v0/d/b/v;Ls1/a/a/a/v0/d/b/t;Ls1/z/b/q;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/a/a/a/v0/m/e0;",
            "Ls1/a/a/a/v0/d/b/i<",
            "TT;>;",
            "Ls1/a/a/a/v0/d/b/v;",
            "Ls1/a/a/a/v0/d/b/t<",
            "+TT;>;",
            "Ljava/lang/Object<",
            "TT;>;",
            "Ls1/z/b/q<",
            "-",
            "Ls1/a/a/a/v0/m/e0;",
            "-TT;-",
            "Ls1/a/a/a/v0/d/b/v;",
            "Ls1/s;",
            ">;)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    sget-object v5, Ls1/a/a/a/v0/m/l1/n;->a:Ls1/a/a/a/v0/m/l1/n;

    const-string v6, "kotlinType"

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "factory"

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "mode"

    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "typeMappingConfiguration"

    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "writeGenericType"

    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {v3, v0}, Ls1/a/a/a/v0/d/b/t;->c(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 2
    invoke-static {v7, v1, v2, v3, v4}, Ls1/a/a/a/v0/d/b/p;->f(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/d/b/i;Ls1/a/a/a/v0/d/b/v;Ls1/a/a/a/v0/d/b/t;Ls1/z/b/q;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static/range {p0 .. p0}, Ls1/a/a/a/v0/a/f;->h(Ls1/a/a/a/v0/m/e0;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4
    invoke-interface/range {p3 .. p3}, Ls1/a/a/a/v0/d/b/t;->d()Z

    move-result v5

    .line 5
    sget-object v6, Ls1/a/a/a/v0/a/l;->a:Ls1/a/a/a/v0/b/h1/b0;

    const-string v6, "suspendFunType"

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static/range {p0 .. p0}, Ls1/a/a/a/v0/a/f;->h(Ls1/a/a/a/v0/m/e0;)Z

    .line 7
    invoke-static/range {p0 .. p0}, Ls1/a/a/a/v0/f/d;->i1(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/a/g;

    move-result-object v7

    .line 8
    invoke-interface/range {p0 .. p0}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v8

    .line 9
    invoke-static/range {p0 .. p0}, Ls1/a/a/a/v0/a/f;->d(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v9

    .line 10
    invoke-static/range {p0 .. p0}, Ls1/a/a/a/v0/a/f;->f(Ls1/a/a/a/v0/m/e0;)Ljava/util/List;

    move-result-object v6

    .line 11
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v6, v11}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 13
    check-cast v11, Ls1/a/a/a/v0/m/y0;

    .line 14
    invoke-interface {v11}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    sget-object v6, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 16
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v11, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    if-eqz v5, :cond_2

    .line 18
    sget-object v5, Ls1/a/a/a/v0/a/l;->b:Ls1/a/a/a/v0/b/h1/b0;

    invoke-virtual {v5}, Ls1/a/a/a/v0/b/h1/b0;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v5

    goto :goto_1

    .line 19
    :cond_2
    sget-object v5, Ls1/a/a/a/v0/a/l;->a:Ls1/a/a/a/v0/b/h1/b0;

    invoke-virtual {v5}, Ls1/a/a/a/v0/b/h1/b0;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v5

    :goto_1
    move-object v12, v5

    const-string v5, "if (isReleaseCoroutines)\u2026ERIMENTAL.typeConstructor"

    .line 20
    invoke-static {v12, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static/range {p0 .. p0}, Ls1/a/a/a/v0/a/f;->e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v5

    invoke-static {v5}, Ls1/a/a/a/v0/f/d;->F(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y0;

    move-result-object v5

    invoke-static {v5}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x10

    .line 22
    invoke-static/range {v11 .. v16}, Ls1/a/a/a/v0/m/f0;->g(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/m/l1/e;I)Ls1/a/a/a/v0/m/l0;

    move-result-object v5

    .line 23
    invoke-static {v10, v5}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    .line 24
    invoke-static/range {p0 .. p0}, Ls1/a/a/a/v0/f/d;->i1(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/a/g;

    move-result-object v5

    invoke-virtual {v5}, Ls1/a/a/a/v0/a/g;->o()Ls1/a/a/a/v0/m/l0;

    move-result-object v12

    const-string v5, "suspendFunType.builtIns.nullableAnyType"

    invoke-static {v12, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 25
    invoke-static/range {v7 .. v13}, Ls1/a/a/a/v0/a/f;->a(Ls1/a/a/a/v0/a/g;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/e0;Ljava/util/List;Ljava/util/List;Ls1/a/a/a/v0/m/e0;Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v5

    .line 26
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v0

    invoke-virtual {v5, v0}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    .line 27
    invoke-static {v0, v1, v2, v3, v4}, Ls1/a/a/a/v0/d/b/p;->f(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/d/b/i;Ls1/a/a/a/v0/d/b/v;Ls1/a/a/a/v0/d/b/t;Ls1/z/b/q;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v7, "$this$mapBuiltInType"

    .line 28
    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "type"

    invoke-static {v0, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "typeFactory"

    invoke-static {v1, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v5, v0}, Ls1/a/a/a/v0/m/l1/n;->i(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v6

    .line 30
    invoke-virtual {v5, v6}, Ls1/a/a/a/v0/m/l1/n;->G(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result v8

    const-string v9, "["

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v8, :cond_4

    goto/16 :goto_6

    .line 31
    :cond_4
    invoke-virtual {v5, v6}, Ls1/a/a/a/v0/m/l1/n;->E(Ls1/a/a/a/v0/m/n1/l;)Ls1/a/a/a/v0/a/i;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 32
    invoke-interface {v1, v8}, Ls1/a/a/a/v0/d/b/i;->d(Ls1/a/a/a/v0/a/i;)Ljava/lang/Object;

    move-result-object v6

    .line 33
    invoke-virtual {v5, v0}, Ls1/a/a/a/v0/m/l1/n;->r(Ls1/a/a/a/v0/m/n1/h;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 34
    sget-object v8, Ls1/a/a/a/v0/d/a/g0/x;->a:Ls1/a/a/a/v0/d/a/g0/b;

    const-string v8, "$this$hasEnhancedNullability"

    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v7, Ls1/a/a/a/v0/d/a/v;->j:Ls1/a/a/a/v0/f/b;

    const-string v8, "JvmAnnotationNames.ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v0, v7}, Ls1/a/a/a/v0/m/l1/n;->F(Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/f/b;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    move v7, v10

    goto :goto_3

    :cond_6
    :goto_2
    move v7, v11

    :goto_3
    if-eqz v7, :cond_7

    .line 36
    invoke-interface {v1, v6}, Ls1/a/a/a/v0/d/b/i;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_7
    move-object v12, v6

    goto/16 :goto_6

    .line 37
    :cond_8
    invoke-virtual {v5, v6}, Ls1/a/a/a/v0/m/l1/n;->D(Ls1/a/a/a/v0/m/n1/l;)Ls1/a/a/a/v0/a/i;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 38
    invoke-static {v9}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 39
    sget-object v8, Ls1/a/a/a/v0/j/w/c;->o:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/v0/j/w/c;

    if-eqz v7, :cond_9

    const-string v8, "JvmPrimitiveType.get(arrayElementType)"

    .line 40
    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ls1/a/a/a/v0/j/w/c;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ls1/a/a/a/v0/d/b/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_6

    :cond_9
    const/4 v0, 0x4

    .line 41
    invoke-static {v0}, Ls1/a/a/a/v0/j/w/c;->a(I)V

    throw v12

    .line 42
    :cond_a
    invoke-virtual {v5, v6}, Ls1/a/a/a/v0/m/l1/n;->H(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 43
    invoke-virtual {v5, v6}, Ls1/a/a/a/v0/m/l1/n;->C(Ls1/a/a/a/v0/m/n1/l;)Ls1/a/a/a/v0/f/c;

    move-result-object v6

    sget-object v7, Ls1/a/a/a/v0/a/p/c;->m:Ls1/a/a/a/v0/a/p/c;

    invoke-virtual {v7, v6}, Ls1/a/a/a/v0/a/p/c;->h(Ls1/a/a/a/v0/f/c;)Ls1/a/a/a/v0/f/a;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 44
    iget-boolean v7, v2, Ls1/a/a/a/v0/d/b/v;->g:Z

    if-nez v7, :cond_e

    .line 45
    sget-object v7, Ls1/a/a/a/v0/a/p/c;->l:Ljava/util/List;

    .line 46
    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_4

    .line 47
    :cond_b
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls1/a/a/a/v0/a/p/c$a;

    .line 48
    iget-object v8, v8, Ls1/a/a/a/v0/a/p/c$a;->a:Ls1/a/a/a/v0/f/a;

    .line 49
    invoke-static {v8, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    move v7, v11

    goto :goto_5

    :cond_d
    :goto_4
    move v7, v10

    :goto_5
    if-eqz v7, :cond_e

    goto :goto_6

    .line 50
    :cond_e
    invoke-static {v6}, Ls1/a/a/a/v0/j/w/b;->b(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/j/w/b;

    move-result-object v6

    const-string v7, "JvmClassName.byClassId(classId)"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ls1/a/a/a/v0/j/w/b;->e()Ljava/lang/String;

    move-result-object v6

    const-string v7, "JvmClassName.byClassId(classId).internalName"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ls1/a/a/a/v0/d/b/i;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    :cond_f
    :goto_6
    if-eqz v12, :cond_11

    .line 51
    iget-boolean v3, v2, Ls1/a/a/a/v0/d/b/v;->a:Z

    if-eqz v3, :cond_10

    .line 52
    invoke-interface {v1, v12}, Ls1/a/a/a/v0/d/b/i;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 53
    :cond_10
    invoke-interface {v4, v0, v12, v2}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v12

    .line 54
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v6

    .line 55
    instance-of v7, v6, Ls1/a/a/a/v0/m/c0;

    if-eqz v7, :cond_13

    .line 56
    check-cast v6, Ls1/a/a/a/v0/m/c0;

    .line 57
    iget-object v0, v6, Ls1/a/a/a/v0/m/c0;->a:Ls1/a/a/a/v0/m/e0;

    if-eqz v0, :cond_12

    goto :goto_7

    .line 58
    :cond_12
    iget-object v0, v6, Ls1/a/a/a/v0/m/c0;->b:Ljava/util/LinkedHashSet;

    .line 59
    invoke-interface {v3, v0}, Ls1/a/a/a/v0/d/b/t;->g(Ljava/util/Collection;)Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    .line 60
    :goto_7
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->W2(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    .line 61
    invoke-static {v0, v1, v2, v3, v4}, Ls1/a/a/a/v0/d/b/p;->f(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/d/b/i;Ls1/a/a/a/v0/d/b/v;Ls1/a/a/a/v0/d/b/t;Ls1/z/b/q;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 62
    :cond_13
    invoke-interface {v6}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v6

    if-eqz v6, :cond_23

    const-string v7, "constructor.declarationD\u2026structor of $kotlinType\")"

    .line 63
    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {v6}, Ls1/a/a/a/v0/m/x;->j(Ls1/a/a/a/v0/b/k;)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string v2, "error/NonExistentClass"

    .line 65
    invoke-interface {v1, v2}, Ls1/a/a/a/v0/d/b/i;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 66
    check-cast v6, Ls1/a/a/a/v0/b/e;

    invoke-interface {v3, v0, v6}, Ls1/a/a/a/v0/d/b/t;->f(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/e;)V

    return-object v1

    .line 67
    :cond_14
    instance-of v7, v6, Ls1/a/a/a/v0/b/e;

    if-eqz v7, :cond_1b

    invoke-static/range {p0 .. p0}, Ls1/a/a/a/v0/a/g;->y(Ls1/a/a/a/v0/m/e0;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 68
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v11, :cond_1a

    .line 69
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/y0;

    .line 70
    invoke-interface {v0}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v5

    const-string v6, "memberProjection.type"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-interface {v0}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v6

    sget-object v7, Ls1/a/a/a/v0/m/j1;->d:Ls1/a/a/a/v0/m/j1;

    if-ne v6, v7, :cond_15

    const-string v0, "java/lang/Object"

    .line 72
    invoke-interface {v1, v0}, Ls1/a/a/a/v0/d/b/i;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 73
    :cond_15
    invoke-interface {v0}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v0

    const-string v6, "memberProjection.projectionKind"

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "effectiveVariance"

    .line 74
    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-boolean v6, v2, Ls1/a/a/a/v0/d/b/v;->c:Z

    if-eqz v6, :cond_16

    goto :goto_8

    :cond_16
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_18

    if-eq v0, v11, :cond_17

    .line 76
    iget-object v0, v2, Ls1/a/a/a/v0/d/b/v;->f:Ls1/a/a/a/v0/d/b/v;

    if-eqz v0, :cond_19

    goto :goto_9

    .line 77
    :cond_17
    iget-object v0, v2, Ls1/a/a/a/v0/d/b/v;->h:Ls1/a/a/a/v0/d/b/v;

    if-eqz v0, :cond_19

    goto :goto_9

    .line 78
    :cond_18
    iget-object v0, v2, Ls1/a/a/a/v0/d/b/v;->i:Ls1/a/a/a/v0/d/b/v;

    if-eqz v0, :cond_19

    goto :goto_9

    :cond_19
    :goto_8
    move-object v0, v2

    .line 79
    :goto_9
    invoke-static {v5, v1, v0, v3, v4}, Ls1/a/a/a/v0/d/b/p;->f(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/d/b/i;Ls1/a/a/a/v0/d/b/v;Ls1/a/a/a/v0/d/b/t;Ls1/z/b/q;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    :goto_a
    invoke-static {v9}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v0}, Ls1/a/a/a/v0/d/b/i;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ls1/a/a/a/v0/d/b/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 81
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "arrays must have one type argument"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    if-eqz v7, :cond_20

    .line 82
    check-cast v6, Ls1/a/a/a/v0/b/e;

    invoke-interface {v6}, Ls1/a/a/a/v0/b/e;->h()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 83
    iget-boolean v7, v2, Ls1/a/a/a/v0/d/b/v;->b:Z

    if-nez v7, :cond_1c

    const-string v7, "$this$computeExpandedTypeForInlineClass"

    .line 84
    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "inlineClassType"

    invoke-static {v0, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-static {v5, v0, v7}, Le/q/f/a/d/a;->N(Ls1/a/a/a/v0/m/e1;Ls1/a/a/a/v0/m/n1/h;Ljava/util/HashSet;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object v5

    .line 86
    check-cast v5, Ls1/a/a/a/v0/m/e0;

    if-eqz v5, :cond_1c

    .line 87
    new-instance v0, Ls1/a/a/a/v0/d/b/v;

    .line 88
    iget-boolean v8, v2, Ls1/a/a/a/v0/d/b/v;->a:Z

    iget-boolean v10, v2, Ls1/a/a/a/v0/d/b/v;->c:Z

    iget-boolean v11, v2, Ls1/a/a/a/v0/d/b/v;->d:Z

    iget-boolean v12, v2, Ls1/a/a/a/v0/d/b/v;->e:Z

    .line 89
    iget-object v13, v2, Ls1/a/a/a/v0/d/b/v;->f:Ls1/a/a/a/v0/d/b/v;

    iget-boolean v14, v2, Ls1/a/a/a/v0/d/b/v;->g:Z

    iget-object v15, v2, Ls1/a/a/a/v0/d/b/v;->h:Ls1/a/a/a/v0/d/b/v;

    iget-object v2, v2, Ls1/a/a/a/v0/d/b/v;->i:Ls1/a/a/a/v0/d/b/v;

    const/4 v9, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x200

    move-object v7, v0

    move-object/from16 v16, v2

    .line 90
    invoke-direct/range {v7 .. v18}, Ls1/a/a/a/v0/d/b/v;-><init>(ZZZZZLs1/a/a/a/v0/d/b/v;ZLs1/a/a/a/v0/d/b/v;Ls1/a/a/a/v0/d/b/v;ZI)V

    .line 91
    invoke-static {v5, v1, v0, v3, v4}, Ls1/a/a/a/v0/d/b/p;->f(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/d/b/i;Ls1/a/a/a/v0/d/b/v;Ls1/a/a/a/v0/d/b/t;Ls1/z/b/q;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 92
    :cond_1c
    iget-boolean v5, v2, Ls1/a/a/a/v0/d/b/v;->c:Z

    if-eqz v5, :cond_1d

    .line 93
    sget-object v5, Ls1/a/a/a/v0/a/g;->e:Ls1/a/a/a/v0/f/e;

    .line 94
    sget-object v5, Ls1/a/a/a/v0/a/k$a;->W:Ls1/a/a/a/v0/f/c;

    invoke-static {v6, v5}, Ls1/a/a/a/v0/a/g;->c(Ls1/a/a/a/v0/b/h;Ls1/a/a/a/v0/f/c;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 95
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/d/b/i;->b()Ljava/lang/Object;

    move-result-object v1

    goto :goto_b

    .line 96
    :cond_1d
    invoke-interface {v6}, Ls1/a/a/a/v0/b/e;->a()Ls1/a/a/a/v0/b/e;

    move-result-object v5

    const-string v7, "descriptor.original"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ls1/a/a/a/v0/d/b/t;->a(Ls1/a/a/a/v0/b/e;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1e

    move-object v1, v5

    goto :goto_b

    .line 97
    :cond_1e
    invoke-interface {v6}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object v5

    sget-object v7, Ls1/a/a/a/v0/b/f;->d:Ls1/a/a/a/v0/b/f;

    if-ne v5, v7, :cond_1f

    .line 98
    invoke-interface {v6}, Ls1/a/a/a/v0/b/e;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Ls1/a/a/a/v0/b/e;

    .line 99
    :cond_1f
    invoke-interface {v6}, Ls1/a/a/a/v0/b/e;->a()Ls1/a/a/a/v0/b/e;

    move-result-object v5

    const-string v6, "enumClassIfEnumEntry.original"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v3}, Ls1/a/a/a/v0/d/b/p;->b(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/d/b/t;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ls1/a/a/a/v0/d/b/i;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 100
    :goto_b
    invoke-interface {v4, v0, v1, v2}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 101
    :cond_20
    instance-of v5, v6, Ls1/a/a/a/v0/b/w0;

    if-eqz v5, :cond_21

    .line 102
    check-cast v6, Ls1/a/a/a/v0/b/w0;

    invoke-static {v6}, Ls1/a/a/a/v0/f/d;->v1(Ls1/a/a/a/v0/b/w0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    .line 103
    sget-object v4, Ls1/a/a/a/v0/o/g;->b:Ls1/z/b/q;

    .line 104
    invoke-static {v0, v1, v2, v3, v4}, Ls1/a/a/a/v0/d/b/p;->f(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/d/b/i;Ls1/a/a/a/v0/d/b/v;Ls1/a/a/a/v0/d/b/t;Ls1/z/b/q;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 105
    :cond_21
    instance-of v5, v6, Ls1/a/a/a/v0/b/v0;

    if-eqz v5, :cond_22

    .line 106
    iget-boolean v5, v2, Ls1/a/a/a/v0/d/b/v;->j:Z

    if-eqz v5, :cond_22

    .line 107
    check-cast v6, Ls1/a/a/a/v0/b/v0;

    invoke-interface {v6}, Ls1/a/a/a/v0/b/v0;->g0()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    :try_start_0
    invoke-static {v0, v1, v2, v3, v4}, Ls1/a/a/a/v0/d/b/p;->f(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/d/b/i;Ls1/a/a/a/v0/d/b/v;Ls1/a/a/a/v0/d/b/t;Ls1/z/b/q;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 108
    :cond_22
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_23
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no descriptor for type constructor of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
