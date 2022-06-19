.class public Le/k/a/c/d0/z/k0;
.super Le/k/a/c/d0/z/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/e0<",
        "Le/k/a/c/n0/a0;",
        ">;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/n0/a0;

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/e0;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    new-instance v0, Le/k/a/c/n0/a0;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p1, v1}, Le/k/a/c/n0/a0;-><init>(Le/k/a/b/j;Le/k/a/c/g;)V

    .line 3
    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    invoke-virtual {p1, v1}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Le/k/a/c/n0/a0;->A2(Le/k/a/b/j;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Le/k/a/c/n0/a0;->M1()V

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Le/k/a/c/n0/a0;->A2(Le/k/a/b/j;)V

    .line 7
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v1

    sget-object v2, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-eq v1, v2, :cond_1

    .line 8
    sget-object p1, Le/k/a/b/m;->k:Le/k/a/b/m;

    if-ne v1, p1, :cond_2

    .line 9
    invoke-virtual {v0}, Le/k/a/c/n0/a0;->t0()V

    :goto_0
    return-object v0

    .line 10
    :cond_2
    const-class v0, Le/k/a/c/n0/a0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_OBJECT after copying contents of a JsonParser into TokenBuffer, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p2, v1, v2}, Le/k/a/c/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 12
    iget-object v2, p2, Le/k/a/c/g;->g:Le/k/a/b/j;

    .line 13
    invoke-virtual {p2, v2, v0, p1, v1}, Le/k/a/c/g;->j0(Le/k/a/b/j;Ljava/lang/Class;Le/k/a/b/m;Ljava/lang/String;)Le/k/a/c/k;

    move-result-object p1

    throw p1
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->e:Le/k/a/c/m0/f;

    return-object v0
.end method
