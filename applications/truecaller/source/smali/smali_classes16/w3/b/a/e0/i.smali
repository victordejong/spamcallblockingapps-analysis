.class public abstract Lw3/b/a/e0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/c0;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw3/b/a/c0;",
        "Ljava/lang/Comparable<",
        "Lw3/b/a/e0/i;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public volatile a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lw3/b/a/e0/i;->a:I

    return-void
.end method


# virtual methods
.method public b(I)Lw3/b/a/k;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/e0/i;->d()Lw3/b/a/k;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lw3/b/a/e0/i;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 3
    iget p1, p1, Lw3/b/a/e0/i;->a:I

    .line 4
    iget v0, p0, Lw3/b/a/e0/i;->a:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-ge v0, p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be compared to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract d()Lw3/b/a/k;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lw3/b/a/c0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lw3/b/a/c0;

    .line 3
    invoke-interface {p1}, Lw3/b/a/c0;->g()Lw3/b/a/v;

    move-result-object v1

    invoke-virtual {p0}, Lw3/b/a/e0/i;->g()Lw3/b/a/v;

    move-result-object v3

    if-ne v1, v3, :cond_2

    invoke-interface {p1, v2}, Lw3/b/a/c0;->getValue(I)I

    move-result p1

    .line 4
    iget v1, p0, Lw3/b/a/e0/i;->a:I

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public abstract g()Lw3/b/a/v;
.end method

.method public getValue(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lw3/b/a/e0/i;->a:I

    return p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lw3/b/a/e0/i;->a:I

    const/16 v1, 0x1cb

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1b

    .line 2
    invoke-virtual {p0}, Lw3/b/a/e0/i;->d()Lw3/b/a/k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public p(Lw3/b/a/k;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw3/b/a/e0/i;->d()Lw3/b/a/k;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    iget p1, p0, Lw3/b/a/e0/i;->a:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
