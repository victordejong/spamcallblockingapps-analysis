.class public abstract Lorg/joda/time/x/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/u;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/joda/time/u;",
        "Ljava/lang/Comparable<",
        "Lorg/joda/time/x/f;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private volatile f:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/joda/time/x/f;->f:I

    return-void
.end method

.method protected static d(Lorg/joda/time/t;Lorg/joda/time/t;Lorg/joda/time/u;)I
    .locals 8

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 1
    invoke-interface {p0}, Lorg/joda/time/t;->size()I

    move-result v0

    invoke-interface {p1}, Lorg/joda/time/t;->size()I

    move-result v1

    const-string v2, "ReadablePartial objects must have the same set of fields"

    if-ne v0, v1, :cond_3

    .line 2
    invoke-interface {p0}, Lorg/joda/time/t;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 3
    invoke-interface {p0, v3}, Lorg/joda/time/t;->g(I)Lorg/joda/time/d;

    move-result-object v4

    invoke-interface {p1, v3}, Lorg/joda/time/t;->g(I)Lorg/joda/time/d;

    move-result-object v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    invoke-static {p0}, Lorg/joda/time/e;->i(Lorg/joda/time/t;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {p0}, Lorg/joda/time/t;->f()Lorg/joda/time/a;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/e;->c(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->M()Lorg/joda/time/a;

    move-result-object v2

    const-wide v3, 0xeaf625800L

    .line 7
    invoke-virtual {v2, p0, v3, v4}, Lorg/joda/time/a;->F(Lorg/joda/time/t;J)J

    move-result-wide v5

    invoke-virtual {v2, p1, v3, v4}, Lorg/joda/time/a;->F(Lorg/joda/time/t;J)J

    move-result-wide p0

    move-object v3, p2

    move-wide v4, v5

    move-wide v6, p0

    invoke-virtual/range {v2 .. v7}, Lorg/joda/time/a;->l(Lorg/joda/time/u;JJ)[I

    move-result-object p0

    .line 8
    aget p0, p0, v1

    return p0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ReadablePartial objects must be contiguous"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ReadablePartial objects must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract c()Lorg/joda/time/o;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/joda/time/x/f;

    invoke-virtual {p0, p1}, Lorg/joda/time/x/f;->h(Lorg/joda/time/x/f;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/joda/time/u;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/joda/time/u;

    .line 3
    invoke-interface {p1}, Lorg/joda/time/u;->c()Lorg/joda/time/o;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joda/time/x/f;->c()Lorg/joda/time/o;

    move-result-object v3

    if-ne v1, v3, :cond_2

    invoke-interface {p1, v2}, Lorg/joda/time/u;->i(I)I

    move-result p1

    invoke-virtual {p0}, Lorg/joda/time/x/f;->k()I

    move-result v1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(I)Lorg/joda/time/i;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/x/f;->j()Lorg/joda/time/i;

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

.method public h(Lorg/joda/time/x/f;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p1}, Lorg/joda/time/x/f;->k()I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lorg/joda/time/x/f;->k()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ge v0, p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 4
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

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/x/f;->k()I

    move-result v0

    const/16 v1, 0x1cb

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1b

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/x/f;->j()Lorg/joda/time/i;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public i(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/x/f;->k()I

    move-result p1

    return p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract j()Lorg/joda/time/i;
.end method

.method protected k()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/joda/time/x/f;->f:I

    return v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
