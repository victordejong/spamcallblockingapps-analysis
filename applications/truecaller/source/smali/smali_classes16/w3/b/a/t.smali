.class public Lw3/b/a/t;
.super Lw3/b/a/e0/h;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/w;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>(JLw3/b/a/v;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lw3/b/a/e0/h;-><init>(JLw3/b/a/v;Lw3/b/a/a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lw3/b/a/v;Lw3/b/a/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lw3/b/a/e0/h;-><init>(Ljava/lang/Object;Lw3/b/a/v;Lw3/b/a/a;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/e0/h;->b:[I

    aput p2, v0, p1

    return-void
.end method

.method public c(Lw3/b/a/c0;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/e0/d;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 2
    iget-object v1, p0, Lw3/b/a/e0/h;->b:[I

    array-length v2, v1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lw3/b/a/e0/d;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 4
    invoke-interface {p1}, Lw3/b/a/c0;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 5
    invoke-interface {p1, v3}, Lw3/b/a/c0;->b(I)Lw3/b/a/k;

    move-result-object v4

    .line 6
    invoke-interface {p1, v3}, Lw3/b/a/c0;->getValue(I)I

    move-result v5

    .line 7
    invoke-virtual {p0}, Lw3/b/a/e0/h;->g()Lw3/b/a/v;

    move-result-object v6

    invoke-virtual {v6, v4}, Lw3/b/a/v;->c(Lw3/b/a/k;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    if-nez v5, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Period does not support field \'"

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    iget-object v1, v4, Lw3/b/a/k;->a:Ljava/lang/String;

    const-string v2, "\'"

    .line 10
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    aput v5, v1, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lw3/b/a/e0/h;->b:[I

    array-length v2, p1

    invoke-static {v1, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    return-void
.end method

.method public clear()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lw3/b/a/e0/d;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2
    iget-object v1, p0, Lw3/b/a/e0/h;->b:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Clone error"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(I)V
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->j:Lw3/b/a/k;

    invoke-virtual {p0, v0, p1}, Lw3/b/a/e0/h;->q(Lw3/b/a/k;I)V

    return-void
.end method

.method public f(I)V
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->k:Lw3/b/a/k;

    invoke-virtual {p0, v0, p1}, Lw3/b/a/e0/h;->q(Lw3/b/a/k;I)V

    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->f:Lw3/b/a/k;

    invoke-virtual {p0, v0, p1}, Lw3/b/a/e0/h;->q(Lw3/b/a/k;I)V

    return-void
.end method

.method public i(I)V
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->e:Lw3/b/a/k;

    invoke-virtual {p0, v0, p1}, Lw3/b/a/e0/h;->q(Lw3/b/a/k;I)V

    return-void
.end method

.method public j(I)V
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->m:Lw3/b/a/k;

    invoke-virtual {p0, v0, p1}, Lw3/b/a/e0/h;->q(Lw3/b/a/k;I)V

    return-void
.end method

.method public m(I)V
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->g:Lw3/b/a/k;

    invoke-virtual {p0, v0, p1}, Lw3/b/a/e0/h;->q(Lw3/b/a/k;I)V

    return-void
.end method

.method public n(I)V
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->h:Lw3/b/a/k;

    invoke-virtual {p0, v0, p1}, Lw3/b/a/e0/h;->q(Lw3/b/a/k;I)V

    return-void
.end method

.method public o(I)V
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->l:Lw3/b/a/k;

    invoke-virtual {p0, v0, p1}, Lw3/b/a/e0/h;->q(Lw3/b/a/k;I)V

    return-void
.end method
