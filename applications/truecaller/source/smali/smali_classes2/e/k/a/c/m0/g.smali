.class public Le/k/a/c/m0/g;
.super Le/k/a/c/m0/m;
.source "SourceFile"


# instance fields
.field public final j:Le/k/a/c/i;

.field public final k:Le/k/a/c/i;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/m0/n;",
            "Le/k/a/c/i;",
            "[",
            "Le/k/a/c/i;",
            "Le/k/a/c/i;",
            "Le/k/a/c/i;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 1
    iget v0, v10, Le/k/a/c/i;->b:I

    .line 2
    iget v1, v11, Le/k/a/c/i;->b:I

    xor-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    .line 3
    invoke-direct/range {v0 .. v8}, Le/k/a/c/m0/m;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 4
    iput-object v10, v9, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    .line 5
    iput-object v11, v9, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    return-void
.end method


# virtual methods
.method public F()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public K(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;)Le/k/a/c/i;
    .locals 11
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

    .line 1
    new-instance v10, Le/k/a/c/m0/g;

    iget-object v5, p0, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    iget-object v6, p0, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    iget-object v7, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v8, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v9, p0, Le/k/a/c/i;->e:Z

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v9}, Le/k/a/c/m0/g;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v10
.end method

.method public L(Le/k/a/c/i;)Le/k/a/c/i;
    .locals 11

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/m0/g;

    iget-object v2, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v3, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v4, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v5, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v6, p0, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    iget-object v8, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v9, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v10, p0, Le/k/a/c/i;->e:Z

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v10}, Le/k/a/c/m0/g;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic M(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/g;->U(Ljava/lang/Object;)Le/k/a/c/m0/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic N(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/g;->V(Ljava/lang/Object;)Le/k/a/c/m0/g;

    move-result-object p1

    return-object p1
.end method

.method public O(Le/k/a/c/i;)Le/k/a/c/i;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Le/k/a/c/i;->O(Le/k/a/c/i;)Le/k/a/c/i;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Le/k/a/c/i;->o()Le/k/a/c/i;

    move-result-object v1

    .line 3
    instance-of v2, v0, Le/k/a/c/m0/g;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    invoke-virtual {v2, v1}, Le/k/a/c/i;->O(Le/k/a/c/i;)Le/k/a/c/i;

    move-result-object v1

    .line 5
    iget-object v2, p0, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    if-eq v1, v2, :cond_0

    .line 6
    check-cast v0, Le/k/a/c/m0/g;

    invoke-virtual {v0, v1}, Le/k/a/c/m0/g;->W(Le/k/a/c/i;)Le/k/a/c/m0/g;

    move-result-object v0

    .line 7
    :cond_0
    invoke-virtual {p1}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object v1, p0, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    invoke-virtual {v1, p1}, Le/k/a/c/i;->O(Le/k/a/c/i;)Le/k/a/c/i;

    move-result-object p1

    .line 9
    iget-object v1, p0, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    if-eq p1, v1, :cond_1

    .line 10
    invoke-virtual {v0, p1}, Le/k/a/c/i;->L(Le/k/a/c/i;)Le/k/a/c/i;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic P()Le/k/a/c/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/m0/g;->Y()Le/k/a/c/m0/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Q(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/g;->Z(Ljava/lang/Object;)Le/k/a/c/m0/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic R(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/g;->a0(Ljava/lang/Object;)Le/k/a/c/m0/g;

    move-result-object p1

    return-object p1
.end method

.method public T()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    if-eqz v1, :cond_0

    const/16 v1, 0x3c

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    invoke-virtual {v1}, Le/k/a/b/z/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    invoke-virtual {v1}, Le/k/a/b/z/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public U(Ljava/lang/Object;)Le/k/a/c/m0/g;
    .locals 11

    .line 1
    new-instance v10, Le/k/a/c/m0/g;

    iget-object v1, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v2, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v3, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v4, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v5, p0, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    iget-object v0, p0, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    .line 2
    invoke-virtual {v0, p1}, Le/k/a/c/i;->Q(Ljava/lang/Object;)Le/k/a/c/i;

    move-result-object v6

    iget-object v7, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v8, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v9, p0, Le/k/a/c/i;->e:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Le/k/a/c/m0/g;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v10
.end method

.method public V(Ljava/lang/Object;)Le/k/a/c/m0/g;
    .locals 11

    .line 1
    new-instance v10, Le/k/a/c/m0/g;

    iget-object v1, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v2, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v3, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v4, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v5, p0, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    iget-object v0, p0, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    .line 2
    invoke-virtual {v0, p1}, Le/k/a/c/i;->R(Ljava/lang/Object;)Le/k/a/c/i;

    move-result-object v6

    iget-object v7, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v8, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v9, p0, Le/k/a/c/i;->e:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Le/k/a/c/m0/g;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v10
.end method

.method public W(Le/k/a/c/i;)Le/k/a/c/m0/g;
    .locals 11

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/m0/g;

    iget-object v2, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v3, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v4, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v5, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v7, p0, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    iget-object v8, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v9, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v10, p0, Le/k/a/c/i;->e:Z

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v10}, Le/k/a/c/m0/g;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public X(Ljava/lang/Object;)Le/k/a/c/m0/g;
    .locals 11

    .line 1
    new-instance v10, Le/k/a/c/m0/g;

    iget-object v1, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v2, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v3, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v4, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v0, p0, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    .line 2
    invoke-virtual {v0, p1}, Le/k/a/c/i;->R(Ljava/lang/Object;)Le/k/a/c/i;

    move-result-object v5

    iget-object v6, p0, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    iget-object v7, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v8, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v9, p0, Le/k/a/c/i;->e:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Le/k/a/c/m0/g;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v10
.end method

.method public Y()Le/k/a/c/m0/g;
    .locals 11

    .line 1
    iget-boolean v0, p0, Le/k/a/c/i;->e:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/m0/g;

    iget-object v2, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v3, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v4, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v5, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v6, p0, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    iget-object v1, p0, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    .line 3
    invoke-virtual {v1}, Le/k/a/c/i;->P()Le/k/a/c/i;

    move-result-object v7

    iget-object v8, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v9, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Le/k/a/c/m0/g;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public Z(Ljava/lang/Object;)Le/k/a/c/m0/g;
    .locals 11

    .line 1
    new-instance v10, Le/k/a/c/m0/g;

    iget-object v1, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v2, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v3, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v4, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v5, p0, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    iget-object v6, p0, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    iget-object v7, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-boolean v9, p0, Le/k/a/c/i;->e:Z

    move-object v0, v10

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Le/k/a/c/m0/g;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v10
.end method

.method public a0(Ljava/lang/Object;)Le/k/a/c/m0/g;
    .locals 11

    .line 1
    new-instance v10, Le/k/a/c/m0/g;

    iget-object v1, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v2, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v3, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v4, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v5, p0, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    iget-object v6, p0, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    iget-object v8, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v9, p0, Le/k/a/c/i;->e:Z

    move-object v0, v10

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Le/k/a/c/m0/g;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Le/k/a/c/m0/g;

    .line 3
    iget-object v2, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v3, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    iget-object v3, p1, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    invoke-virtual {v2, v3}, Le/k/a/c/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    iget-object p1, p1, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    .line 4
    invoke-virtual {v2, p1}, Le/k/a/c/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public k()Le/k/a/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    return-object v0
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
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Le/k/a/c/m0/m;->S(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x3c

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    invoke-virtual {v0, p1}, Le/k/a/c/i;->m(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p0, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    invoke-virtual {v0, p1}, Le/k/a/c/i;->m(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v0, ">;"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public o()Le/k/a/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    return-object v0
.end method

.method public t()Z
    .locals 1

    .line 1
    invoke-super {p0}, Le/k/a/c/i;->t()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    invoke-virtual {v0}, Le/k/a/c/i;->t()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    .line 2
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
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Le/k/a/c/m0/g;->k:Le/k/a/c/i;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "[map-like type; class %s, %s -> %s]"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
