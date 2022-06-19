.class public abstract Lw3/b/a/e0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/c0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Lw3/b/a/k;
    .locals 1

    .line 1
    invoke-interface {p0}, Lw3/b/a/c0;->g()Lw3/b/a/v;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lw3/b/a/v;->b:[Lw3/b/a/k;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

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
    invoke-virtual {p0}, Lw3/b/a/e0/d;->size()I

    move-result v1

    invoke-interface {p1}, Lw3/b/a/c0;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-virtual {p0}, Lw3/b/a/e0/d;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    .line 5
    invoke-interface {p0, v3}, Lw3/b/a/c0;->getValue(I)I

    move-result v4

    invoke-interface {p1, v3}, Lw3/b/a/c0;->getValue(I)I

    move-result v5

    if-ne v4, v5, :cond_4

    invoke-virtual {p0, v3}, Lw3/b/a/e0/d;->b(I)Lw3/b/a/k;

    move-result-object v4

    invoke-interface {p1, v3}, Lw3/b/a/c0;->b(I)Lw3/b/a/k;

    move-result-object v5

    if-eq v4, v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lw3/b/a/e0/d;->size()I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1b

    .line 2
    invoke-interface {p0, v2}, Lw3/b/a/c0;->getValue(I)I

    move-result v3

    add-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x1b

    .line 3
    invoke-virtual {p0, v2}, Lw3/b/a/e0/d;->b(I)Lw3/b/a/k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public k()[I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lw3/b/a/e0/d;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    move-object v3, p0

    check-cast v3, Lw3/b/a/e0/h;

    .line 3
    iget-object v3, v3, Lw3/b/a/e0/h;->b:[I

    aget v3, v3, v2

    .line 4
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public p(Lw3/b/a/k;)I
    .locals 1

    .line 1
    invoke-interface {p0}, Lw3/b/a/c0;->g()Lw3/b/a/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lw3/b/a/v;->c(Lw3/b/a/k;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {p0, p1}, Lw3/b/a/c0;->getValue(I)I

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-interface {p0}, Lw3/b/a/c0;->g()Lw3/b/a/v;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lw3/b/a/v;->b:[Lw3/b/a/k;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .line 1
    invoke-static {}, Ls1/a/a/a/v0/f/d;->r3()Lw3/b/a/i0/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lw3/b/a/i0/m;->c(Lw3/b/a/c0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
