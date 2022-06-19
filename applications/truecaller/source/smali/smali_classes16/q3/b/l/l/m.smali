.class public final Lq3/b/l/l/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lq3/b/l/d;Lq3/b/a;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/b/l/d;",
            "Lq3/b/a<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "$this$decodeSerializableValuePolymorphic"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v1, p1, Lq3/b/k/b;

    if-eqz v1, :cond_7

    invoke-interface {p0}, Lq3/b/l/d;->v()Lq3/b/l/a;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lq3/b/l/a;->a:Lq3/b/l/l/c;

    .line 3
    iget-boolean v1, v1, Lq3/b/l/l/c;->h:Z

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-interface {p0}, Lq3/b/l/d;->n()Lq3/b/l/e;

    move-result-object v1

    invoke-interface {p1}, Lq3/b/a;->a()Lq3/b/i/d;

    move-result-object v2

    .line 5
    instance-of v3, v1, Lq3/b/l/j;

    const/4 v4, -0x1

    if-eqz v3, :cond_6

    .line 6
    check-cast v1, Lq3/b/l/j;

    .line 7
    invoke-interface {p0}, Lq3/b/l/d;->v()Lq3/b/l/a;

    move-result-object v2

    .line 8
    iget-object v2, v2, Lq3/b/l/a;->a:Lq3/b/l/l/c;

    .line 9
    iget-object v2, v2, Lq3/b/l/l/c;->i:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Lq3/b/l/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/b/l/e;

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    const-string v6, "$this$jsonPrimitive"

    .line 11
    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    instance-of v6, v3, Lq3/b/l/k;

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v3

    :goto_0
    check-cast v5, Lq3/b/l/k;

    if-eqz v5, :cond_2

    .line 13
    invoke-virtual {v5}, Lq3/b/l/k;->c()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 14
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Element "

    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "JsonPrimitive"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_3
    :goto_1
    check-cast p1, Lq3/b/k/b;

    invoke-virtual {p1, p0, v5}, Lq3/b/k/b;->f(Lq3/b/j/b;Ljava/lang/String;)Lq3/b/a;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 16
    invoke-interface {p0}, Lq3/b/l/d;->v()Lq3/b/l/a;

    move-result-object p0

    const-string v3, "$this$readPolymorphicJson"

    .line 17
    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "discriminator"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "element"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lq3/b/l/l/j;

    invoke-interface {p1}, Lq3/b/a;->a()Lq3/b/i/d;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lq3/b/l/l/j;-><init>(Lq3/b/l/a;Lq3/b/l/j;Ljava/lang/String;Lq3/b/i/d;)V

    invoke-virtual {v0, p1}, Lq3/b/l/l/a;->w(Lq3/b/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    if-nez v5, :cond_5

    const-string p0, "missing class discriminator (\'null\')"

    goto :goto_2

    .line 19
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "class discriminator \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    const-string p1, "Polymorphic serializer was not found for "

    .line 20
    invoke-static {p1, p0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lq3/b/l/j;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p0, p1}, Ls1/a/a/a/v0/f/d;->l(ILjava/lang/String;Ljava/lang/String;)Lq3/b/l/l/d;

    move-result-object p0

    throw p0

    :cond_6
    const-string p0, "Expected "

    .line 21
    invoke-static {p0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-class p1, Lq3/b/l/j;

    invoke-static {p1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as the serialized body of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lq3/b/i/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but had "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-static {v4, p0}, Ls1/a/a/a/v0/f/d;->k(ILjava/lang/String;)Lq3/b/l/l/d;

    move-result-object p0

    throw p0

    .line 23
    :cond_7
    :goto_3
    invoke-interface {p1, p0}, Lq3/b/a;->d(Lq3/b/j/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lq3/b/l/a;Lq3/b/i/d;)Lq3/b/l/l/r;
    .locals 2

    const-string v0, "$this$switchMode"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lq3/b/i/d;->getKind()Lq3/b/i/h;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lq3/b/i/b;

    if-eqz v1, :cond_0

    sget-object p0, Lq3/b/l/l/r;->h:Lq3/b/l/l/r;

    goto :goto_1

    .line 3
    :cond_0
    sget-object v1, Lq3/b/i/i$b;->a:Lq3/b/i/i$b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lq3/b/l/l/r;->f:Lq3/b/l/l/r;

    goto :goto_1

    .line 4
    :cond_1
    sget-object v1, Lq3/b/i/i$c;->a:Lq3/b/i/i$c;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Lq3/b/i/d;->c(I)Lq3/b/i/d;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Lq3/b/i/d;->getKind()Lq3/b/i/h;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lq3/b/i/c;

    if-nez v1, :cond_4

    sget-object v1, Lq3/b/i/h$b;->a:Lq3/b/i/h$b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object p0, p0, Lq3/b/l/a;->a:Lq3/b/l/l/c;

    .line 9
    iget-boolean p0, p0, Lq3/b/l/l/c;->d:Z

    if-eqz p0, :cond_3

    .line 10
    sget-object p0, Lq3/b/l/l/r;->f:Lq3/b/l/l/r;

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->i(Lq3/b/i/d;)Lq3/b/l/l/e;

    move-result-object p0

    throw p0

    .line 12
    :cond_4
    :goto_0
    sget-object p0, Lq3/b/l/l/r;->g:Lq3/b/l/l/r;

    goto :goto_1

    .line 13
    :cond_5
    sget-object p0, Lq3/b/l/l/r;->e:Lq3/b/l/l/r;

    :goto_1
    return-object p0
.end method
