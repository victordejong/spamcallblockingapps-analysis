.class public final Le/k/a/c/d0/z/x$c;
.super Le/k/a/c/d0/z/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/x<",
        "[C>;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, [C

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/x;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->p:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->W0()[C

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Le/k/a/b/j;->l1()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Le/k/a/b/j;->j1()I

    move-result p1

    .line 5
    new-array v2, p1, [C

    .line 6
    invoke-static {p2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    .line 7
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/j;->V1()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9
    :goto_0
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v3

    sget-object v4, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-eq v3, v4, :cond_5

    .line 10
    sget-object v4, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-ne v3, v4, :cond_1

    .line 11
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 12
    :cond_1
    sget-object v4, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v3, v4, :cond_4

    .line 13
    iget-object v3, p0, Le/k/a/c/d0/z/x;->f:Le/k/a/c/d0/r;

    if-eqz v3, :cond_2

    .line 14
    invoke-interface {v3, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->d0(Le/k/a/c/g;)V

    const-string v3, "\u0000"

    .line 16
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 17
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    new-array p1, v5, [Ljava/lang/Object;

    .line 18
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "Cannot convert a JSON String of length %d into a char element of char array"

    .line 19
    invoke-virtual {p2, p0, v0, p1}, Le/k/a/c/g;->a0(Le/k/a/c/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 20
    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2

    .line 21
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    goto :goto_2

    .line 22
    :cond_6
    sget-object v0, Le/k/a/b/m;->o:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    invoke-virtual {p1}, Le/k/a/b/j;->p0()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 24
    :cond_7
    instance-of v3, v0, [C

    if-eqz v3, :cond_8

    .line 25
    move-object v2, v0

    check-cast v2, [C

    goto :goto_2

    .line 26
    :cond_8
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 27
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    goto :goto_2

    .line 28
    :cond_9
    instance-of v3, v0, [B

    if-eqz v3, :cond_a

    .line 29
    sget-object p1, Le/k/a/b/b;->b:Le/k/a/b/a;

    .line 30
    check-cast v0, [B

    invoke-virtual {p1, v0, v1}, Le/k/a/b/a;->g([BZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_2
    return-object v2

    .line 31
    :cond_a
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2
.end method

.method public m0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [C

    check-cast p2, [C

    .line 2
    array-length v0, p1

    .line 3
    array-length v1, p2

    add-int v2, v0, v1

    .line 4
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    const/4 v2, 0x0

    .line 5
    invoke-static {p2, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public n0()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    return-object v0
.end method

.method public p0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public q0(Le/k/a/c/d0/r;Ljava/lang/Boolean;)Le/k/a/c/d0/z/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/r;",
            "Ljava/lang/Boolean;",
            ")",
            "Le/k/a/c/d0/z/x<",
            "*>;"
        }
    .end annotation

    return-object p0
.end method
