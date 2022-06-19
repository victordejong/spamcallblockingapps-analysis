.class public final Le/k/a/c/d0/z/x$b;
.super Le/k/a/c/d0/z/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/x<",
        "[B>;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, [B

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/x;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/z/x$b;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/d0/z/x;-><init>(Le/k/a/c/d0/z/x;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

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
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    .line 2
    sget-object v1, Le/k/a/b/m;->p:Le/k/a/b/m;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p2}, Le/k/a/c/g;->A()Le/k/a/b/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/k/a/b/j;->I(Le/k/a/b/a;)[B

    move-result-object v3
    :try_end_0
    .catch Le/k/a/b/i; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Le/k/a/b/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "base64"

    .line 5
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    const-class v0, [B

    .line 7
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p2, v0, p1, v1, v2}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v3

    .line 9
    :cond_1
    :goto_0
    sget-object v1, Le/k/a/b/m;->o:Le/k/a/b/m;

    if-ne v0, v1, :cond_3

    .line 10
    invoke-virtual {p1}, Le/k/a/b/j;->p0()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 11
    :cond_2
    instance-of v1, v0, [B

    if-eqz v1, :cond_3

    .line 12
    move-object v3, v0

    check-cast v3, [B

    goto/16 :goto_3

    .line 13
    :cond_3
    invoke-virtual {p1}, Le/k/a/b/j;->V1()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/x;->o0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [B

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {p2}, Le/k/a/c/g;->z()Le/k/a/c/n0/c;

    move-result-object v0

    .line 16
    iget-object v1, v0, Le/k/a/c/n0/c;->b:Le/k/a/c/n0/c$c;

    if-nez v1, :cond_5

    .line 17
    new-instance v1, Le/k/a/c/n0/c$c;

    invoke-direct {v1}, Le/k/a/c/n0/c$c;-><init>()V

    iput-object v1, v0, Le/k/a/c/n0/c;->b:Le/k/a/c/n0/c$c;

    .line 18
    :cond_5
    iget-object v0, v0, Le/k/a/c/n0/c;->b:Le/k/a/c/n0/c$c;

    .line 19
    invoke-virtual {v0}, Le/k/a/c/n0/v;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move v3, v2

    .line 20
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v4

    sget-object v5, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-eq v4, v5, :cond_a

    .line 21
    sget-object v5, Le/k/a/b/m;->q:Le/k/a/b/m;

    if-ne v4, v5, :cond_6

    .line 22
    invoke-virtual {p1}, Le/k/a/b/j;->J()B

    move-result v4

    goto :goto_2

    .line 23
    :cond_6
    sget-object v5, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v4, v5, :cond_8

    .line 24
    iget-object v4, p0, Le/k/a/c/d0/z/x;->f:Le/k/a/c/d0/r;

    if-eqz v4, :cond_7

    .line 25
    invoke-interface {v4, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    goto :goto_1

    .line 26
    :cond_7
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->d0(Le/k/a/c/g;)V

    move v4, v2

    goto :goto_2

    .line 27
    :cond_8
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->P(Le/k/a/b/j;Le/k/a/c/g;)B

    move-result v4

    .line 28
    :goto_2
    array-length v5, v1

    if-lt v3, v5, :cond_9

    .line 29
    invoke-virtual {v0, v1, v3}, Le/k/a/c/n0/v;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v3, v2

    move-object v1, v5

    :cond_9
    add-int/lit8 v5, v3, 0x1

    .line 30
    :try_start_2
    aput-byte v4, v1, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v3, v5

    goto :goto_1

    :catch_1
    move-exception p1

    move v3, v5

    goto :goto_4

    .line 31
    :cond_a
    invoke-virtual {v0, v1, v3}, Le/k/a/c/n0/v;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [B

    :goto_3
    return-object v3

    :catch_2
    move-exception p1

    .line 32
    :goto_4
    iget p2, v0, Le/k/a/c/n0/v;->d:I

    add-int/2addr p2, v3

    .line 33
    invoke-static {p1, v1, p2}, Le/k/a/c/k;->i(Ljava/lang/Throwable;Ljava/lang/Object;I)Le/k/a/c/k;

    move-result-object p1

    throw p1
.end method

.method public m0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [B

    check-cast p2, [B

    .line 2
    array-length v0, p1

    .line 3
    array-length v1, p2

    add-int v2, v0, v1

    .line 4
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const/4 v2, 0x0

    .line 5
    invoke-static {p2, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public n0()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->k:Le/k/a/c/m0/f;

    return-object v0
.end method

.method public p0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    .line 2
    sget-object v1, Le/k/a/b/m;->q:Le/k/a/b/m;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Le/k/a/b/j;->J()B

    move-result p1

    const/4 p2, 0x1

    new-array v3, p2, [B

    aput-byte p1, v3, v2

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v0, v1, :cond_3

    .line 5
    iget-object p1, p0, Le/k/a/c/d0/z/x;->f:Le/k/a/c/d0/r;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Le/k/a/c/d0/z/x;->e:Ljava/lang/Object;

    if-nez p1, :cond_1

    new-array p1, v2, [B

    .line 8
    iput-object p1, p0, Le/k/a/c/d0/z/x;->e:Ljava/lang/Object;

    .line 9
    :cond_1
    move-object v3, p1

    check-cast v3, [B

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->d0(Le/k/a/c/g;)V

    :goto_0
    return-object v3

    .line 11
    :cond_3
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v3
.end method

.method public q0(Le/k/a/c/d0/r;Ljava/lang/Boolean;)Le/k/a/c/d0/z/x;
    .locals 1
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

    .line 1
    new-instance v0, Le/k/a/c/d0/z/x$b;

    invoke-direct {v0, p0, p1, p2}, Le/k/a/c/d0/z/x$b;-><init>(Le/k/a/c/d0/z/x$b;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

    return-object v0
.end method
