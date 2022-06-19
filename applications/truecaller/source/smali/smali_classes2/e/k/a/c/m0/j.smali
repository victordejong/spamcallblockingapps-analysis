.class public Le/k/a/c/m0/j;
.super Le/k/a/c/m0/l;
.source "SourceFile"


# instance fields
.field public final j:Le/k/a/c/i;

.field public final k:Le/k/a/c/i;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V
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
            "Le/k/a/c/i;",
            "Le/k/a/c/i;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p5

    .line 1
    iget v5, v10, Le/k/a/c/i;->b:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    .line 2
    invoke-direct/range {v0 .. v8}, Le/k/a/c/m0/l;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 3
    iput-object v10, v9, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

    if-nez p6, :cond_0

    move-object v0, v9

    goto :goto_0

    :cond_0
    move-object/from16 v0, p6

    .line 4
    :goto_0
    iput-object v0, v9, Le/k/a/c/m0/j;->k:Le/k/a/c/i;

    return-void
.end method


# virtual methods
.method public K(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;)Le/k/a/c/i;
    .locals 10
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
    new-instance p2, Le/k/a/c/m0/j;

    iget-object v2, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v5, p0, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

    iget-object v6, p0, Le/k/a/c/m0/j;->k:Le/k/a/c/i;

    iget-object v7, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v8, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v9, p0, Le/k/a/c/i;->e:Z

    move-object v0, p2

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v9}, Le/k/a/c/m0/j;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object p2
.end method

.method public L(Le/k/a/c/i;)Le/k/a/c/i;
    .locals 11

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/m0/j;

    iget-object v2, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v3, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v4, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v5, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v7, p0, Le/k/a/c/m0/j;->k:Le/k/a/c/i;

    iget-object v8, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v9, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v10, p0, Le/k/a/c/i;->e:Z

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v10}, Le/k/a/c/m0/j;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public M(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 12

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

    .line 2
    iget-object v1, v0, Le/k/a/c/i;->d:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Le/k/a/c/m0/j;

    iget-object v3, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v4, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v5, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v6, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    .line 4
    invoke-virtual {v0, p1}, Le/k/a/c/i;->Q(Ljava/lang/Object;)Le/k/a/c/i;

    move-result-object v7

    iget-object v8, p0, Le/k/a/c/m0/j;->k:Le/k/a/c/i;

    iget-object v9, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v10, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v11, p0, Le/k/a/c/i;->e:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Le/k/a/c/m0/j;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    :goto_0
    return-object v1
.end method

.method public bridge synthetic N(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/j;->Z(Ljava/lang/Object;)Le/k/a/c/m0/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P()Le/k/a/c/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/m0/j;->a0()Le/k/a/c/m0/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Q(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/j;->b0(Ljava/lang/Object;)Le/k/a/c/m0/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic R(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/j;->c0(Ljava/lang/Object;)Le/k/a/c/m0/j;

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

    const/16 v1, 0x3c

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

    invoke-virtual {v1}, Le/k/a/b/z/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic V(Ljava/lang/Object;)Le/k/a/c/m0/l;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/j;->Z(Ljava/lang/Object;)Le/k/a/c/m0/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic W()Le/k/a/c/m0/l;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/m0/j;->a0()Le/k/a/c/m0/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic X(Ljava/lang/Object;)Le/k/a/c/m0/l;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/j;->b0(Ljava/lang/Object;)Le/k/a/c/m0/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Y(Ljava/lang/Object;)Le/k/a/c/m0/l;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/j;->c0(Ljava/lang/Object;)Le/k/a/c/m0/j;

    move-result-object p1

    return-object p1
.end method

.method public Z(Ljava/lang/Object;)Le/k/a/c/m0/j;
    .locals 12

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

    .line 2
    iget-object v1, v0, Le/k/a/c/i;->c:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Le/k/a/c/i;->R(Ljava/lang/Object;)Le/k/a/c/i;

    move-result-object v7

    .line 4
    new-instance p1, Le/k/a/c/m0/j;

    iget-object v3, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v4, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v5, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v6, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v8, p0, Le/k/a/c/m0/j;->k:Le/k/a/c/i;

    iget-object v9, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v10, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v11, p0, Le/k/a/c/i;->e:Z

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Le/k/a/c/m0/j;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object p1
.end method

.method public a()Le/k/a/b/z/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

    return-object v0
.end method

.method public a0()Le/k/a/c/m0/j;
    .locals 11

    .line 1
    iget-boolean v0, p0, Le/k/a/c/i;->e:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/m0/j;

    iget-object v2, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v3, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v4, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v5, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v1, p0, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

    .line 3
    invoke-virtual {v1}, Le/k/a/c/i;->P()Le/k/a/c/i;

    move-result-object v6

    iget-object v7, p0, Le/k/a/c/m0/j;->k:Le/k/a/c/i;

    iget-object v8, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v9, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Le/k/a/c/m0/j;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public b0(Ljava/lang/Object;)Le/k/a/c/m0/j;
    .locals 11

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/m0/j;

    iget-object v2, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v3, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v4, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v5, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v6, p0, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

    iget-object v7, p0, Le/k/a/c/m0/j;->k:Le/k/a/c/i;

    iget-object v8, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-boolean v10, p0, Le/k/a/c/i;->e:Z

    move-object v1, v0

    move-object v9, p1

    invoke-direct/range {v1 .. v10}, Le/k/a/c/m0/j;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public c0(Ljava/lang/Object;)Le/k/a/c/m0/j;
    .locals 11

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/m0/j;

    iget-object v2, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v3, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v4, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v5, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v6, p0, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

    iget-object v7, p0, Le/k/a/c/m0/j;->k:Le/k/a/c/i;

    iget-object v9, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v10, p0, Le/k/a/c/i;->e:Z

    move-object v1, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v10}, Le/k/a/c/m0/j;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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

    const-class v2, Le/k/a/c/m0/j;

    if-eq v1, v2, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Le/k/a/c/m0/j;

    .line 3
    iget-object v1, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v2, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-eq v1, v2, :cond_3

    return v0

    .line 4
    :cond_3
    iget-object v0, p0, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

    iget-object p1, p1, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

    invoke-virtual {v0, p1}, Le/k/a/c/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public k()Le/k/a/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

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
    iget-object v0, p0, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

    invoke-virtual {v0, p1}, Le/k/a/c/i;->m(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ">;"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public p()Le/k/a/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

    return-object v0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x28

    const-string v1, "[reference type, class "

    .line 1
    invoke-static {v0, v1}, Le/d/c/a/a;->x(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Le/k/a/c/m0/j;->T()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
