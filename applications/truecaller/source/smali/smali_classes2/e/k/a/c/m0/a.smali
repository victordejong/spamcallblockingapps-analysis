.class public final Le/k/a/c/m0/a;
.super Le/k/a/c/m0/m;
.source "SourceFile"


# instance fields
.field public final j:Le/k/a/c/i;

.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/m0/n;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 9

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    iget v5, p1, Le/k/a/c/i;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    .line 3
    invoke-direct/range {v0 .. v8}, Le/k/a/c/m0/m;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 4
    iput-object p1, p0, Le/k/a/c/m0/a;->j:Le/k/a/c/i;

    .line 5
    iput-object p3, p0, Le/k/a/c/m0/a;->k:Ljava/lang/Object;

    return-void
.end method

.method public static U(Le/k/a/c/i;Le/k/a/c/m0/n;)Le/k/a/c/m0/a;
    .locals 9

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    .line 3
    new-instance v0, Le/k/a/c/m0/a;

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Le/k/a/c/m0/a;-><init>(Le/k/a/c/i;Le/k/a/c/m0/n;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
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
    .locals 9

    .line 1
    iget-object v0, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    .line 3
    new-instance v0, Le/k/a/c/m0/a;

    iget-object v4, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v6, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v7, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v8, p0, Le/k/a/c/i;->e:Z

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Le/k/a/c/m0/a;-><init>(Le/k/a/c/i;Le/k/a/c/m0/n;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public M(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 9

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/a;->j:Le/k/a/c/i;

    .line 2
    iget-object v1, v0, Le/k/a/c/i;->d:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Le/k/a/c/m0/a;

    invoke-virtual {v0, p1}, Le/k/a/c/i;->Q(Ljava/lang/Object;)Le/k/a/c/i;

    move-result-object v3

    iget-object v4, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v5, p0, Le/k/a/c/m0/a;->k:Ljava/lang/Object;

    iget-object v6, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v7, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v8, p0, Le/k/a/c/i;->e:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Le/k/a/c/m0/a;-><init>(Le/k/a/c/i;Le/k/a/c/m0/n;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    :goto_0
    return-object v1
.end method

.method public N(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 9

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/a;->j:Le/k/a/c/i;

    .line 2
    iget-object v1, v0, Le/k/a/c/i;->c:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Le/k/a/c/m0/a;

    invoke-virtual {v0, p1}, Le/k/a/c/i;->R(Ljava/lang/Object;)Le/k/a/c/i;

    move-result-object v3

    iget-object v4, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v5, p0, Le/k/a/c/m0/a;->k:Ljava/lang/Object;

    iget-object v6, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v7, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v8, p0, Le/k/a/c/i;->e:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Le/k/a/c/m0/a;-><init>(Le/k/a/c/i;Le/k/a/c/m0/n;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    :goto_0
    return-object v1
.end method

.method public P()Le/k/a/c/i;
    .locals 8

    .line 1
    iget-boolean v0, p0, Le/k/a/c/i;->e:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/m0/a;

    iget-object v1, p0, Le/k/a/c/m0/a;->j:Le/k/a/c/i;

    invoke-virtual {v1}, Le/k/a/c/i;->P()Le/k/a/c/i;

    move-result-object v2

    iget-object v3, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v4, p0, Le/k/a/c/m0/a;->k:Ljava/lang/Object;

    iget-object v5, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v6, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Le/k/a/c/m0/a;-><init>(Le/k/a/c/i;Le/k/a/c/m0/n;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    :goto_0
    return-object v0
.end method

.method public Q(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 8

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/m0/a;

    iget-object v2, p0, Le/k/a/c/m0/a;->j:Le/k/a/c/i;

    iget-object v3, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v4, p0, Le/k/a/c/m0/a;->k:Ljava/lang/Object;

    iget-object v5, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-boolean v7, p0, Le/k/a/c/i;->e:Z

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Le/k/a/c/m0/a;-><init>(Le/k/a/c/i;Le/k/a/c/m0/n;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    :goto_0
    return-object v0
.end method

.method public R(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 8

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/m0/a;

    iget-object v2, p0, Le/k/a/c/m0/a;->j:Le/k/a/c/i;

    iget-object v3, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v4, p0, Le/k/a/c/m0/a;->k:Ljava/lang/Object;

    iget-object v6, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v7, p0, Le/k/a/c/i;->e:Z

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Le/k/a/c/m0/a;-><init>(Le/k/a/c/i;Le/k/a/c/m0/n;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    :goto_0
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

    const-class v2, Le/k/a/c/m0/a;

    if-eq v1, v2, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Le/k/a/c/m0/a;

    .line 3
    iget-object v0, p0, Le/k/a/c/m0/a;->j:Le/k/a/c/i;

    iget-object p1, p1, Le/k/a/c/m0/a;->j:Le/k/a/c/i;

    invoke-virtual {v0, p1}, Le/k/a/c/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public k()Le/k/a/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/a;->j:Le/k/a/c/i;

    return-object v0
.end method

.method public l(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    const/16 v0, 0x5b

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Le/k/a/c/m0/a;->j:Le/k/a/c/i;

    invoke-virtual {v0, p1}, Le/k/a/c/i;->l(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    const/16 v0, 0x5b

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Le/k/a/c/m0/a;->j:Le/k/a/c/i;

    invoke-virtual {v0, p1}, Le/k/a/c/i;->m(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/a;->j:Le/k/a/c/i;

    invoke-virtual {v0}, Le/k/a/c/i;->s()Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    invoke-super {p0}, Le/k/a/c/i;->t()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/k/a/c/m0/a;->j:Le/k/a/c/i;

    invoke-virtual {v0}, Le/k/a/c/i;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "[array type, component type: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/k/a/c/m0/a;->j:Le/k/a/c/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
