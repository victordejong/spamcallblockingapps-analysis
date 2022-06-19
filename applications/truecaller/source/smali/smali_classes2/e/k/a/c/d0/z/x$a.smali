.class public final Le/k/a/c/d0/z/x$a;
.super Le/k/a/c/d0/z/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/x<",
        "[Z>;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, [Z

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/x;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/z/x$a;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V
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
    invoke-virtual {p1}, Le/k/a/b/j;->V1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/x;->o0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Z

    goto :goto_3

    .line 3
    :cond_0
    invoke-virtual {p2}, Le/k/a/c/g;->z()Le/k/a/c/n0/c;

    move-result-object v0

    .line 4
    iget-object v1, v0, Le/k/a/c/n0/c;->a:Le/k/a/c/n0/c$b;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Le/k/a/c/n0/c$b;

    invoke-direct {v1}, Le/k/a/c/n0/c$b;-><init>()V

    iput-object v1, v0, Le/k/a/c/n0/c;->a:Le/k/a/c/n0/c$b;

    .line 6
    :cond_1
    iget-object v0, v0, Le/k/a/c/n0/c;->a:Le/k/a/c/n0/c$b;

    .line 7
    invoke-virtual {v0}, Le/k/a/c/n0/v;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    const/4 v2, 0x0

    move v3, v2

    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v4

    sget-object v5, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-eq v4, v5, :cond_7

    .line 9
    sget-object v5, Le/k/a/b/m;->s:Le/k/a/b/m;

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    .line 10
    :cond_2
    sget-object v5, Le/k/a/b/m;->t:Le/k/a/b/m;

    if-ne v4, v5, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    sget-object v5, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v4, v5, :cond_5

    .line 12
    iget-object v4, p0, Le/k/a/c/d0/z/x;->f:Le/k/a/c/d0/r;

    if-eqz v4, :cond_4

    .line 13
    invoke-interface {v4, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->d0(Le/k/a/c/g;)V

    :goto_1
    move v4, v2

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->O(Le/k/a/b/j;Le/k/a/c/g;)Z

    move-result v4

    .line 16
    :goto_2
    array-length v5, v1

    if-lt v3, v5, :cond_6

    .line 17
    invoke-virtual {v0, v1, v3}, Le/k/a/c/n0/v;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v2

    move-object v1, v5

    :cond_6
    add-int/lit8 v5, v3, 0x1

    .line 18
    :try_start_1
    aput-boolean v4, v1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v5

    goto :goto_0

    :catch_0
    move-exception p1

    move v3, v5

    goto :goto_4

    .line 19
    :cond_7
    invoke-virtual {v0, v1, v3}, Le/k/a/c/n0/v;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Z

    :goto_3
    return-object p1

    :catch_1
    move-exception p1

    .line 20
    :goto_4
    iget p2, v0, Le/k/a/c/n0/v;->d:I

    add-int/2addr p2, v3

    .line 21
    invoke-static {p1, v1, p2}, Le/k/a/c/k;->i(Ljava/lang/Throwable;Ljava/lang/Object;I)Le/k/a/c/k;

    move-result-object p1

    throw p1
.end method

.method public m0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [Z

    check-cast p2, [Z

    .line 2
    array-length v0, p1

    .line 3
    array-length v1, p2

    add-int v2, v0, v1

    .line 4
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    const/4 v2, 0x0

    .line 5
    invoke-static {p2, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public n0()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Z

    return-object v0
.end method

.method public p0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->O(Le/k/a/b/j;Le/k/a/c/g;)Z

    move-result p1

    const/4 p2, 0x0

    aput-boolean p1, v0, p2

    return-object v0
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
    new-instance v0, Le/k/a/c/d0/z/x$a;

    invoke-direct {v0, p0, p1, p2}, Le/k/a/c/d0/z/x$a;-><init>(Le/k/a/c/d0/z/x$a;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

    return-object v0
.end method
