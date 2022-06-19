.class public abstract Lorg/joda/time/x/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/t;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/joda/time/t;",
        "Ljava/lang/Comparable<",
        "Lorg/joda/time/t;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public L(I)Lorg/joda/time/c;
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/joda/time/t;->f()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/x/c;->d(ILorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/joda/time/t;)I
    .locals 6

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0}, Lorg/joda/time/t;->size()I

    move-result v1

    invoke-interface {p1}, Lorg/joda/time/t;->size()I

    move-result v2

    const-string v3, "ReadablePartial objects must have matching field types"

    if-ne v1, v2, :cond_6

    .line 2
    invoke-interface {p0}, Lorg/joda/time/t;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    invoke-virtual {p0, v2}, Lorg/joda/time/x/c;->g(I)Lorg/joda/time/d;

    move-result-object v4

    invoke-interface {p1, v2}, Lorg/joda/time/t;->g(I)Lorg/joda/time/d;

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
    invoke-interface {p0}, Lorg/joda/time/t;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    .line 6
    invoke-interface {p0, v2}, Lorg/joda/time/t;->i(I)I

    move-result v3

    invoke-interface {p1, v2}, Lorg/joda/time/t;->i(I)I

    move-result v4

    if-le v3, v4, :cond_3

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_3
    invoke-interface {p0, v2}, Lorg/joda/time/t;->i(I)I

    move-result v3

    invoke-interface {p1, v2}, Lorg/joda/time/t;->i(I)I

    move-result v4

    if-ge v3, v4, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return v0

    .line 8
    :cond_6
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/joda/time/t;

    invoke-virtual {p0, p1}, Lorg/joda/time/x/c;->c(Lorg/joda/time/t;)I

    move-result p1

    return p1
.end method

.method protected abstract d(ILorg/joda/time/a;)Lorg/joda/time/c;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lorg/joda/time/t;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    check-cast p1, Lorg/joda/time/t;

    .line 3
    invoke-interface {p0}, Lorg/joda/time/t;->size()I

    move-result v0

    invoke-interface {p1}, Lorg/joda/time/t;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-interface {p0}, Lorg/joda/time/t;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 5
    invoke-interface {p0, v2}, Lorg/joda/time/t;->i(I)I

    move-result v3

    invoke-interface {p1, v2}, Lorg/joda/time/t;->i(I)I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {p0, v2}, Lorg/joda/time/x/c;->g(I)Lorg/joda/time/d;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/joda/time/t;->g(I)Lorg/joda/time/d;

    move-result-object v4

    if-eq v3, v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1

    .line 6
    :cond_5
    invoke-interface {p0}, Lorg/joda/time/t;->f()Lorg/joda/time/a;

    move-result-object v0

    invoke-interface {p1}, Lorg/joda/time/t;->f()Lorg/joda/time/a;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/joda/time/a0/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g(I)Lorg/joda/time/d;
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/joda/time/t;->f()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/x/c;->d(ILorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/c;->x()Lorg/joda/time/d;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/joda/time/t;->size()I

    move-result v0

    const/16 v1, 0x9d

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x17

    .line 2
    invoke-interface {p0, v2}, Lorg/joda/time/t;->i(I)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x17

    .line 3
    invoke-virtual {p0, v2}, Lorg/joda/time/x/c;->g(I)Lorg/joda/time/d;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Lorg/joda/time/t;->f()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
