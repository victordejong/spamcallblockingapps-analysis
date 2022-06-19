.class public Le/k/a/c/m0/l;
.super Le/k/a/c/m0/m;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2
    sget-object v2, Le/k/a/c/m0/n;->g:Le/k/a/c/m0/n;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-direct/range {v0 .. v7}, Le/k/a/c/m0/l;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/m0/n;",
            "Le/k/a/c/i;",
            "[",
            "Le/k/a/c/i;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 4
    invoke-direct/range {p0 .. p8}, Le/k/a/c/m0/m;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;ILjava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/m0/n;",
            "Le/k/a/c/i;",
            "[",
            "Le/k/a/c/i;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    .line 1
    invoke-direct/range {v0 .. v8}, Le/k/a/c/m0/m;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;ILjava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static U(Ljava/lang/Class;)Le/k/a/c/m0/l;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/m0/l;"
        }
    .end annotation

    .line 1
    new-instance v8, Le/k/a/c/m0/l;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Le/k/a/c/m0/l;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v8
.end method


# virtual methods
.method public K(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;)Le/k/a/c/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/m0/n;",
            "Le/k/a/c/i;",
            "[",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/i;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public L(Le/k/a/c/i;)Le/k/a/c/i;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Simple types have no content types; cannot call withContentType()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public M(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Simple types have no content types; cannot call withContenTypeHandler()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic N(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/l;->V(Ljava/lang/Object;)Le/k/a/c/m0/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P()Le/k/a/c/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/m0/l;->W()Le/k/a/c/m0/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Q(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/l;->X(Ljava/lang/Object;)Le/k/a/c/m0/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic R(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/l;->Y(Ljava/lang/Object;)Le/k/a/c/m0/l;

    move-result-object p1

    return-object p1
.end method

.method public T()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    .line 4
    iget-object v1, v1, Le/k/a/c/m0/n;->b:[Le/k/a/c/i;

    array-length v1, v1

    if-lez v1, :cond_2

    const/16 v2, 0x3c

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    invoke-virtual {p0, v2}, Le/k/a/c/m0/m;->f(I)Le/k/a/c/i;

    move-result-object v3

    if-lez v2, :cond_0

    const/16 v4, 0x2c

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    invoke-virtual {v3}, Le/k/a/b/z/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x3e

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public V(Ljava/lang/Object;)Le/k/a/c/m0/l;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Simple types have no content types; cannot call withContenValueHandler()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public W()Le/k/a/c/m0/l;
    .locals 9

    .line 1
    iget-boolean v0, p0, Le/k/a/c/i;->e:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Le/k/a/c/m0/l;

    iget-object v2, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v3, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v4, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v5, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v6, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v7, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Le/k/a/c/m0/l;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    :goto_0
    return-object v0
.end method

.method public X(Ljava/lang/Object;)Le/k/a/c/m0/l;
    .locals 9

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/m0/l;

    iget-object v2, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v3, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v4, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v5, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v6, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-boolean v8, p0, Le/k/a/c/i;->e:Z

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v8}, Le/k/a/c/m0/l;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public Y(Ljava/lang/Object;)Le/k/a/c/m0/l;
    .locals 9

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/m0/l;

    iget-object v2, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v3, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v4, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v5, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v7, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v8, p0, Le/k/a/c/i;->e:Z

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v8}, Le/k/a/c/m0/l;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Le/k/a/c/m0/l;

    .line 3
    iget-object v1, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v2, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-eq v1, v2, :cond_3

    return v0

    .line 4
    :cond_3
    iget-object v0, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    .line 5
    iget-object p1, p1, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    .line 6
    invoke-virtual {v0, p1}, Le/k/a/c/m0/n;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public l(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Le/k/a/c/m0/m;->S(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public m(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Le/k/a/c/m0/m;->S(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    .line 3
    iget-object v0, v0, Le/k/a/c/m0/n;->b:[Le/k/a/c/i;

    array-length v0, v0

    if-lez v0, :cond_1

    const/16 v2, 0x3c

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Le/k/a/c/m0/m;->f(I)Le/k/a/c/i;

    move-result-object v2

    invoke-virtual {v2, p1}, Le/k/a/c/i;->m(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v0, 0x3b

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x28

    const-string v1, "[simple type, class "

    .line 1
    invoke-static {v0, v1}, Le/d/c/a/a;->x(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Le/k/a/c/m0/l;->T()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
