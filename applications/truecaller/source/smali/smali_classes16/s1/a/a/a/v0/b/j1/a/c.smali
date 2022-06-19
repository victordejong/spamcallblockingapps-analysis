.class public final Ls1/a/a/a/v0/b/j1/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Class;)Ls1/a/a/a/v0/j/t/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ls1/a/a/a/v0/j/t/f;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "currentClass.componentType"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance p0, Ls1/a/a/a/v0/j/t/f;

    sget-object v1, Ls1/a/a/a/v0/a/k$a;->d:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/c;->i()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    invoke-static {v1}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    const-string v2, "ClassId.topLevel(Standar\u2026es.FqNames.unit.toSafe())"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Ls1/a/a/a/v0/j/t/f;-><init>(Ls1/a/a/a/v0/f/a;I)V

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ls1/a/a/a/v0/j/w/c;->c(Ljava/lang/String;)Ls1/a/a/a/v0/j/w/c;

    move-result-object p0

    const-string v1, "JvmPrimitiveType.get(currentClass.name)"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ls1/a/a/a/v0/j/w/c;->e()Ls1/a/a/a/v0/a/i;

    move-result-object p0

    const-string v1, "JvmPrimitiveType.get(cur\u2026Class.name).primitiveType"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v0, :cond_2

    .line 7
    new-instance v1, Ls1/a/a/a/v0/j/t/f;

    .line 8
    iget-object p0, p0, Ls1/a/a/a/v0/a/i;->d:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/f/b;

    .line 9
    invoke-static {p0}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object p0

    const-string v2, "ClassId.topLevel(primitiveType.arrayTypeFqName)"

    invoke-static {p0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, p0, v0}, Ls1/a/a/a/v0/j/t/f;-><init>(Ls1/a/a/a/v0/f/a;I)V

    return-object v1

    .line 10
    :cond_2
    new-instance v1, Ls1/a/a/a/v0/j/t/f;

    .line 11
    iget-object p0, p0, Ls1/a/a/a/v0/a/i;->c:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/f/b;

    .line 12
    invoke-static {p0}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object p0

    const-string v2, "ClassId.topLevel(primitiveType.typeFqName)"

    invoke-static {p0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Ls1/a/a/a/v0/j/t/f;-><init>(Ls1/a/a/a/v0/f/a;I)V

    return-object v1

    .line 13
    :cond_3
    invoke-static {p0}, Ls1/a/a/a/v0/b/j1/b/b;->b(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object p0

    .line 14
    sget-object v1, Ls1/a/a/a/v0/a/p/c;->m:Ls1/a/a/a/v0/a/p/c;

    invoke-virtual {p0}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object v2

    const-string v3, "javaClassId.asSingleFqName()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ls1/a/a/a/v0/a/p/c;->g(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object p0, v1

    .line 15
    :cond_4
    new-instance v1, Ls1/a/a/a/v0/j/t/f;

    invoke-direct {v1, p0, v0}, Ls1/a/a/a/v0/j/t/f;-><init>(Ls1/a/a/a/v0/f/a;I)V

    return-object v1
.end method

.method public static final b(Ls1/a/a/a/v0/d/b/l$c;Ljava/lang/annotation/Annotation;)V
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->B0(Ljava/lang/annotation/Annotation;)Ls1/a/c;

    move-result-object v0

    invoke-static {v0}, Le/q/f/a/d/a;->O0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ls1/a/a/a/v0/b/j1/b/b;->b(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    new-instance v2, Ls1/a/a/a/v0/b/j1/a/b;

    invoke-direct {v2, p1}, Ls1/a/a/a/v0/b/j1/a/b;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-interface {p0, v1, v2}, Ls1/a/a/a/v0/d/b/l$c;->a(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/d/b/l$a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0, p1, v0}, Ls1/a/a/a/v0/b/j1/a/c;->c(Ls1/a/a/a/v0/d/b/l$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static final c(Ls1/a/a/a/v0/d/b/l$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/d/b/l$a;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_a

    aget-object v3, p2, v2

    :try_start_0
    new-array v4, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "method"

    .line 3
    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v3

    const-string v5, "Name.identifier(method.name)"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 5
    const-class v6, Ljava/lang/Class;

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    check-cast v4, Ljava/lang/Class;

    invoke-static {v4}, Ls1/a/a/a/v0/b/j1/a/c;->a(Ljava/lang/Class;)Ls1/a/a/a/v0/j/t/f;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ls1/a/a/a/v0/d/b/l$a;->d(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/j/t/f;)V

    goto/16 :goto_5

    .line 7
    :cond_0
    sget-object v6, Ls1/a/a/a/v0/b/j1/a/g;->a:Ljava/util/Set;

    .line 8
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    invoke-interface {p0, v3, v4}, Ls1/a/a/a/v0/d/b/l$a;->e(Ls1/a/a/a/v0/f/e;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 10
    :cond_1
    sget-object v6, Ls1/a/a/a/v0/b/j1/b/b;->a:Ljava/util/List;

    const-string v6, "$this$isEnumClassOrSpecializedEnumEntryClass"

    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const-class v6, Ljava/lang/Enum;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 12
    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "clazz.enclosingClass"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-static {v5}, Ls1/a/a/a/v0/b/j1/b/b;->b(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v5

    .line 13
    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v4

    const-string v6, "Name.identifier((value as Enum<*>).name)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v3, v5, v4}, Ls1/a/a/a/v0/d/b/l$a;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/e;)V

    goto/16 :goto_5

    .line 14
    :cond_3
    const-class v6, Ljava/lang/annotation/Annotation;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 15
    invoke-virtual {v5}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    const-string v6, "clazz.interfaces"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Le/q/f/a/d/a;->R2([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 16
    invoke-static {v5}, Ls1/a/a/a/v0/b/j1/b/b;->b(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v6

    invoke-interface {p0, v3, v6}, Ls1/a/a/a/v0/d/b/l$a;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/d/b/l$a;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 17
    check-cast v4, Ljava/lang/annotation/Annotation;

    const-string v6, "annotationClass"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Ls1/a/a/a/v0/b/j1/a/c;->c(Ls1/a/a/a/v0/d/b/l$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto/16 :goto_5

    .line 18
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 19
    invoke-interface {p0, v3}, Ls1/a/a/a/v0/d/b/l$a;->f(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/d/b/l$b;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 20
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 21
    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 22
    invoke-static {v5}, Ls1/a/a/a/v0/b/j1/b/b;->b(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v5

    .line 23
    check-cast v4, [Ljava/lang/Object;

    array-length v6, v4

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_7

    aget-object v8, v4, v7

    const-string v9, "null cannot be cast to non-null type kotlin.Enum<*>"

    .line 24
    invoke-static {v8, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v8, Ljava/lang/Enum;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v8

    const-string v9, "Name.identifier((element as Enum<*>).name)"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v5, v8}, Ls1/a/a/a/v0/d/b/l$b;->c(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/e;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 25
    :cond_5
    const-class v6, Ljava/lang/Class;

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    move v6, v1

    :goto_3
    if-ge v6, v5, :cond_7

    aget-object v7, v4, v6

    const-string v8, "null cannot be cast to non-null type java.lang.Class<*>"

    .line 26
    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Ljava/lang/Class;

    invoke-static {v7}, Ls1/a/a/a/v0/b/j1/a/c;->a(Ljava/lang/Class;)Ls1/a/a/a/v0/j/t/f;

    move-result-object v7

    invoke-interface {v3, v7}, Ls1/a/a/a/v0/d/b/l$b;->d(Ls1/a/a/a/v0/j/t/f;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 27
    :cond_6
    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    move v6, v1

    :goto_4
    if-ge v6, v5, :cond_7

    aget-object v7, v4, v6

    .line 28
    invoke-interface {v3, v7}, Ls1/a/a/a/v0/d/b/l$b;->b(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 29
    :cond_7
    invoke-interface {v3}, Ls1/a/a/a/v0/d/b/l$b;->a()V

    goto :goto_5

    .line 30
    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported annotation argument value ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 31
    :cond_a
    invoke-interface {p0}, Ls1/a/a/a/v0/d/b/l$a;->a()V

    return-void
.end method
