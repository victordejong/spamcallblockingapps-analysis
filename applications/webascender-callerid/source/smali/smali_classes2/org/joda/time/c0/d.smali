.class public final Lorg/joda/time/c0/d;
.super Lorg/joda/time/f;
.source "SourceFile"


# instance fields
.field private final k:Ljava/lang/String;

.field private final l:I

.field private final m:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/joda/time/f;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lorg/joda/time/c0/d;->k:Ljava/lang/String;

    .line 3
    iput p3, p0, Lorg/joda/time/c0/d;->l:I

    .line 4
    iput p4, p0, Lorg/joda/time/c0/d;->m:I

    return-void
.end method


# virtual methods
.method public B(J)J
    .locals 0

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/joda/time/c0/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lorg/joda/time/c0/d;

    .line 3
    invoke-virtual {p0}, Lorg/joda/time/f;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/f;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/joda/time/c0/d;->m:I

    iget v3, p1, Lorg/joda/time/c0/d;->m:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/joda/time/c0/d;->l:I

    iget p1, p1, Lorg/joda/time/c0/d;->l:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/joda/time/c0/d;->m:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget v1, p0, Lorg/joda/time/c0/d;->l:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public q(J)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/joda/time/c0/d;->k:Ljava/lang/String;

    return-object p1
.end method

.method public s(J)I
    .locals 0

    .line 1
    iget p1, p0, Lorg/joda/time/c0/d;->l:I

    return p1
.end method

.method public t(J)I
    .locals 0

    .line 1
    iget p1, p0, Lorg/joda/time/c0/d;->l:I

    return p1
.end method

.method public w(J)I
    .locals 0

    .line 1
    iget p1, p0, Lorg/joda/time/c0/d;->m:I

    return p1
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public z(J)J
    .locals 0

    return-wide p1
.end method
