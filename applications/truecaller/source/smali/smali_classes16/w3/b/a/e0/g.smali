.class public abstract Lw3/b/a/e0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/b0;
.implements Ljava/lang/Comparable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lw3/b/a/b0;)I
    .locals 6

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-interface {p0}, Lw3/b/a/b0;->size()I

    move-result v1

    invoke-interface {p1}, Lw3/b/a/b0;->size()I

    move-result v2

    const-string v3, "ReadablePartial objects must have matching field types"

    if-ne v1, v2, :cond_6

    .line 2
    invoke-interface {p0}, Lw3/b/a/b0;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    invoke-virtual {p0, v2}, Lw3/b/a/e0/g;->b(I)Lw3/b/a/d;

    move-result-object v4

    invoke-interface {p1, v2}, Lw3/b/a/b0;->b(I)Lw3/b/a/d;

    move-result-object v5

    if-ne v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    invoke-interface {p0}, Lw3/b/a/b0;->size()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_5

    .line 6
    invoke-interface {p0, v2}, Lw3/b/a/b0;->getValue(I)I

    move-result v3

    invoke-interface {p1, v2}, Lw3/b/a/b0;->getValue(I)I

    move-result v4

    if-le v3, v4, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    .line 7
    :cond_3
    invoke-interface {p0, v2}, Lw3/b/a/b0;->getValue(I)I

    move-result v3

    invoke-interface {p1, v2}, Lw3/b/a/b0;->getValue(I)I

    move-result v4

    if-ge v3, v4, :cond_4

    const/4 v0, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return v0

    .line 8
    :cond_6
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(I)Lw3/b/a/d;
    .locals 1

    .line 1
    invoke-interface {p0}, Lw3/b/a/b0;->l()Lw3/b/a/a;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lw3/b/a/e0/g;->c(ILw3/b/a/a;)Lw3/b/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lw3/b/a/c;->w()Lw3/b/a/d;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(ILw3/b/a/a;)Lw3/b/a/c;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lw3/b/a/b0;

    invoke-virtual {p0, p1}, Lw3/b/a/e0/g;->a(Lw3/b/a/b0;)I

    move-result p1

    return p1
.end method

.method public d(Lw3/b/a/b0;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lw3/b/a/e0/g;->a(Lw3/b/a/b0;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_2

    .line 1
    :cond_0
    instance-of v0, p1, Lw3/b/a/b0;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    move p1, v1

    goto :goto_2

    .line 2
    :cond_2
    check-cast p1, Lw3/b/a/b0;

    .line 3
    invoke-interface {p0}, Lw3/b/a/b0;->size()I

    move-result v0

    invoke-interface {p1}, Lw3/b/a/b0;->size()I

    move-result v2

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    invoke-interface {p0}, Lw3/b/a/b0;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_5

    .line 5
    invoke-interface {p0, v2}, Lw3/b/a/b0;->getValue(I)I

    move-result v3

    invoke-interface {p1, v2}, Lw3/b/a/b0;->getValue(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, v2}, Lw3/b/a/e0/g;->b(I)Lw3/b/a/d;

    move-result-object v3

    invoke-interface {p1, v2}, Lw3/b/a/b0;->b(I)Lw3/b/a/d;

    move-result-object v4

    if-eq v3, v4, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_5
    invoke-interface {p0}, Lw3/b/a/b0;->l()Lw3/b/a/a;

    move-result-object v0

    invoke-interface {p1}, Lw3/b/a/b0;->l()Lw3/b/a/a;

    move-result-object p1

    invoke-static {v0, p1}, Ls1/a/a/a/v0/f/d;->J0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_2
    return p1
.end method

.method public getField(I)Lw3/b/a/c;
    .locals 1

    .line 1
    invoke-interface {p0}, Lw3/b/a/b0;->l()Lw3/b/a/a;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lw3/b/a/e0/g;->c(ILw3/b/a/a;)Lw3/b/a/c;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-interface {p0}, Lw3/b/a/b0;->size()I

    move-result v0

    const/16 v1, 0x9d

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x17

    .line 2
    invoke-interface {p0, v2}, Lw3/b/a/b0;->getValue(I)I

    move-result v3

    add-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x17

    .line 3
    invoke-virtual {p0, v2}, Lw3/b/a/e0/g;->b(I)Lw3/b/a/d;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Lw3/b/a/b0;->l()Lw3/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
