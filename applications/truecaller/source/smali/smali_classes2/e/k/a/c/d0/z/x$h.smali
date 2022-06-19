.class public final Le/k/a/c/d0/z/x$h;
.super Le/k/a/c/d0/z/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/x<",
        "[S>;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, [S

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/x;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/z/x$h;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V
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

    check-cast p1, [S

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p2}, Le/k/a/c/g;->z()Le/k/a/c/n0/c;

    move-result-object v0

    .line 4
    iget-object v1, v0, Le/k/a/c/n0/c;->c:Le/k/a/c/n0/c$h;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Le/k/a/c/n0/c$h;

    invoke-direct {v1}, Le/k/a/c/n0/c$h;-><init>()V

    iput-object v1, v0, Le/k/a/c/n0/c;->c:Le/k/a/c/n0/c$h;

    .line 6
    :cond_1
    iget-object v0, v0, Le/k/a/c/n0/c;->c:Le/k/a/c/n0/c$h;

    .line 7
    invoke-virtual {v0}, Le/k/a/c/n0/v;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    const/4 v2, 0x0

    move v3, v2

    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v4

    sget-object v5, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-eq v4, v5, :cond_5

    .line 9
    sget-object v5, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v4, v5, :cond_3

    .line 10
    iget-object v4, p0, Le/k/a/c/d0/z/x;->f:Le/k/a/c/d0/r;

    if-eqz v4, :cond_2

    .line 11
    invoke-interface {v4, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->d0(Le/k/a/c/g;)V

    move v4, v2

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->Z(Le/k/a/b/j;Le/k/a/c/g;)S

    move-result v4

    .line 14
    :goto_1
    array-length v5, v1

    if-lt v3, v5, :cond_4

    .line 15
    invoke-virtual {v0, v1, v3}, Le/k/a/c/n0/v;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v2

    move-object v1, v5

    :cond_4
    add-int/lit8 v5, v3, 0x1

    .line 16
    :try_start_1
    aput-short v4, v1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v5

    goto :goto_0

    :catch_0
    move-exception p1

    move v3, v5

    goto :goto_3

    .line 17
    :cond_5
    invoke-virtual {v0, v1, v3}, Le/k/a/c/n0/v;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    :goto_2
    return-object p1

    :catch_1
    move-exception p1

    .line 18
    :goto_3
    iget p2, v0, Le/k/a/c/n0/v;->d:I

    add-int/2addr p2, v3

    .line 19
    invoke-static {p1, v1, p2}, Le/k/a/c/k;->i(Ljava/lang/Throwable;Ljava/lang/Object;I)Le/k/a/c/k;

    move-result-object p1

    throw p1
.end method

.method public m0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [S

    check-cast p2, [S

    .line 2
    array-length v0, p1

    .line 3
    array-length v1, p2

    add-int v2, v0, v1

    .line 4
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    const/4 v2, 0x0

    .line 5
    invoke-static {p2, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public n0()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [S

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

    new-array v0, v0, [S

    .line 1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->Z(Le/k/a/b/j;Le/k/a/c/g;)S

    move-result p1

    const/4 p2, 0x0

    aput-short p1, v0, p2

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
    new-instance v0, Le/k/a/c/d0/z/x$h;

    invoke-direct {v0, p0, p1, p2}, Le/k/a/c/d0/z/x$h;-><init>(Le/k/a/c/d0/z/x$h;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

    return-object v0
.end method
