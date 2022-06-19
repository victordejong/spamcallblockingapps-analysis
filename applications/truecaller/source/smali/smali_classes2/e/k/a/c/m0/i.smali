.class public Le/k/a/c/m0/i;
.super Le/k/a/c/m0/m;
.source "SourceFile"


# instance fields
.field public final j:I

.field public k:Le/k/a/c/i;


# direct methods
.method public constructor <init>(I)V
    .locals 9

    .line 1
    const-class v1, Ljava/lang/Object;

    .line 2
    sget-object v2, Le/k/a/c/m0/n;->g:Le/k/a/c/m0/n;

    .line 3
    invoke-static {}, Le/k/a/c/m0/o;->p()Le/k/a/c/i;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 4
    invoke-direct/range {v0 .. v8}, Le/k/a/c/m0/m;-><init>(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 5
    iput p1, p0, Le/k/a/c/m0/i;->j:I

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

    .line 1
    invoke-virtual {p0}, Le/k/a/c/m0/i;->U()Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public L(Le/k/a/c/i;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/k/a/c/m0/i;->U()Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public M(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/k/a/c/m0/i;->U()Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public N(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/k/a/c/m0/i;->U()Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public P()Le/k/a/c/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/m0/i;->U()Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0
.end method

.method public Q(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/k/a/c/m0/i;->U()Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public R(Ljava/lang/Object;)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/k/a/c/m0/i;->U()Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public T()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/m0/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final U()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation should not be attempted on "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Le/k/a/c/m0/i;

    invoke-static {v2, v1}, Le/d/c/a/a;->Z1(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public l(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    const/16 v0, 0x24

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Le/k/a/c/m0/i;->j:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public m(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/m0/i;->l(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Le/k/a/c/m0/i;->l(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
