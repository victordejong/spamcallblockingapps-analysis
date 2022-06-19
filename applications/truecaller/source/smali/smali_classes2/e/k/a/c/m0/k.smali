.class public Le/k/a/c/m0/k;
.super Le/k/a/c/m0/m;
.source "SourceFile"


# instance fields
.field public j:Le/k/a/c/i;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Le/k/a/c/m0/n;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/m0/n;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v8}, Le/k/a/c/m0/m;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;ILjava/lang/Object;Ljava/lang/Object;Z)V

    return-void
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
    .locals 0

    return-object p0
.end method

.method public M(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    return-object p0
.end method

.method public N(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    return-object p0
.end method

.method public P()Le/k/a/c/i;
    .locals 0

    return-object p0
.end method

.method public Q(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    return-object p0
.end method

.method public R(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

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

    move-result-object p1

    const-class v1, Le/k/a/c/m0/k;

    if-ne p1, v1, :cond_2

    :cond_2
    return v0
.end method

.method public j()Le/k/a/c/m0/n;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/k;->j:Le/k/a/c/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Le/k/a/c/i;->j()Le/k/a/c/m0/n;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/m0/m;->h:Le/k/a/c/m0/n;

    return-object v0
.end method

.method public l(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/k;->j:Le/k/a/c/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/k/a/c/i;->l(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public m(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/k;->j:Le/k/a/c/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/k/a/c/i;->l(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "?"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public q()Le/k/a/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/m0/k;->j:Le/k/a/c/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Le/k/a/c/i;->q()Le/k/a/c/i;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/m0/m;->f:Le/k/a/c/i;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x28

    const-string v1, "[recursive type; "

    .line 1
    invoke-static {v0, v1}, Le/d/c/a/a;->x(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/k/a/c/m0/k;->j:Le/k/a/c/i;

    if-nez v1, :cond_0

    const-string v1, "UNRESOLVED"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
