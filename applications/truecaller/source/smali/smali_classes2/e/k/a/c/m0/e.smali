.class public final Le/k/a/c/m0/e;
.super Le/k/a/c/m0/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V
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
            "Le/k/a/c/i;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p8}, Le/k/a/c/m0/d;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

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
    new-instance v9, Le/k/a/c/m0/e;

    iget-object v5, p0, Le/k/a/c/m0/d;->j:Le/k/a/c/i;

    iget-object v6, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v7, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v8, p0, Le/k/a/c/i;->e:Z

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Le/k/a/c/m0/e;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v9
.end method

.method public L(Le/k/a/c/i;)Le/k/a/c/i;
    .locals 10

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/d;->j:Le/k/a/c/i;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/m0/e;

    iget-object v2, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v3, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v4, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v5, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v7, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v8, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v9, p0, Le/k/a/c/i;->e:Z

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v9}, Le/k/a/c/m0/e;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic M(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/e;->Z(Ljava/lang/Object;)Le/k/a/c/m0/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic N(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/e;->a0(Ljava/lang/Object;)Le/k/a/c/m0/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P()Le/k/a/c/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/m0/e;->b0()Le/k/a/c/m0/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Q(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/e;->c0(Ljava/lang/Object;)Le/k/a/c/m0/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic R(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/e;->d0(Ljava/lang/Object;)Le/k/a/c/m0/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic U(Ljava/lang/Object;)Le/k/a/c/m0/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/e;->Z(Ljava/lang/Object;)Le/k/a/c/m0/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic V(Ljava/lang/Object;)Le/k/a/c/m0/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/e;->a0(Ljava/lang/Object;)Le/k/a/c/m0/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic W()Le/k/a/c/m0/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/m0/e;->b0()Le/k/a/c/m0/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic X(Ljava/lang/Object;)Le/k/a/c/m0/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/e;->c0(Ljava/lang/Object;)Le/k/a/c/m0/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Y(Ljava/lang/Object;)Le/k/a/c/m0/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/e;->d0(Ljava/lang/Object;)Le/k/a/c/m0/e;

    move-result-object p1

    return-object p1
.end method

.method public Z(Ljava/lang/Object;)Le/k/a/c/m0/e;
    .locals 10

    .line 1
    new-instance v9, Le/k/a/c/m0/e;

    iget-object v1, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v2, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v3, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v4, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v0, p0, Le/k/a/c/m0/d;->j:Le/k/a/c/i;

    .line 2
    invoke-virtual {v0, p1}, Le/k/a/c/i;->Q(Ljava/lang/Object;)Le/k/a/c/i;

    move-result-object v5

    iget-object v6, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v7, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v8, p0, Le/k/a/c/i;->e:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Le/k/a/c/m0/e;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v9
.end method

.method public a0(Ljava/lang/Object;)Le/k/a/c/m0/e;
    .locals 10

    .line 1
    new-instance v9, Le/k/a/c/m0/e;

    iget-object v1, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v2, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v3, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v4, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v0, p0, Le/k/a/c/m0/d;->j:Le/k/a/c/i;

    .line 2
    invoke-virtual {v0, p1}, Le/k/a/c/i;->R(Ljava/lang/Object;)Le/k/a/c/i;

    move-result-object v5

    iget-object v6, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v7, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v8, p0, Le/k/a/c/i;->e:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Le/k/a/c/m0/e;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v9
.end method

.method public b0()Le/k/a/c/m0/e;
    .locals 10

    .line 1
    iget-boolean v0, p0, Le/k/a/c/i;->e:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/m0/e;

    iget-object v2, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v3, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v4, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v5, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v1, p0, Le/k/a/c/m0/d;->j:Le/k/a/c/i;

    .line 3
    invoke-virtual {v1}, Le/k/a/c/i;->P()Le/k/a/c/i;

    move-result-object v6

    iget-object v7, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-object v8, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Le/k/a/c/m0/e;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public c0(Ljava/lang/Object;)Le/k/a/c/m0/e;
    .locals 10

    .line 1
    new-instance v9, Le/k/a/c/m0/e;

    iget-object v1, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v2, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v3, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v4, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v5, p0, Le/k/a/c/m0/d;->j:Le/k/a/c/i;

    iget-object v6, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    iget-boolean v8, p0, Le/k/a/c/i;->e:Z

    move-object v0, v9

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Le/k/a/c/m0/e;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v9
.end method

.method public d0(Ljava/lang/Object;)Le/k/a/c/m0/e;
    .locals 10

    .line 1
    new-instance v9, Le/k/a/c/m0/e;

    iget-object v1, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    iget-object v2, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    iget-object v3, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    iget-object v4, p0, Le/k/a/c/m0/m;->g:[Le/k/a/c/i;

    iget-object v5, p0, Le/k/a/c/m0/d;->j:Le/k/a/c/i;

    iget-object v7, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    iget-boolean v8, p0, Le/k/a/c/i;->e:Z

    move-object v0, v9

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Le/k/a/c/m0/e;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;Le/k/a/c/i;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v9
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "[collection type; class "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    const-string v2, ", contains "

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->z0(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Le/k/a/c/m0/d;->j:Le/k/a/c/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
