.class public Lorg/joda/time/a0/p;
.super Lorg/joda/time/a0/e;
.source "SourceFile"


# instance fields
.field private final h:I


# direct methods
.method public constructor <init>(Lorg/joda/time/h;Lorg/joda/time/i;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/joda/time/a0/e;-><init>(Lorg/joda/time/h;Lorg/joda/time/i;)V

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    .line 2
    iput p3, p0, Lorg/joda/time/a0/p;->h:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The scalar must not be 0 or 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c(JI)J
    .locals 4

    int-to-long v0, p3

    .line 1
    iget p3, p0, Lorg/joda/time/a0/p;->h:I

    int-to-long v2, p3

    mul-long v0, v0, v2

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/a0/e;->v()Lorg/joda/time/h;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v0, v1}, Lorg/joda/time/h;->d(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public d(JJ)J
    .locals 1

    .line 1
    iget v0, p0, Lorg/joda/time/a0/p;->h:I

    invoke-static {p3, p4, v0}, Lorg/joda/time/a0/h;->e(JI)J

    move-result-wide p3

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/a0/e;->v()Lorg/joda/time/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/h;->d(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/joda/time/a0/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lorg/joda/time/a0/p;

    .line 3
    invoke-virtual {p0}, Lorg/joda/time/a0/e;->v()Lorg/joda/time/h;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/a0/e;->v()Lorg/joda/time/h;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/joda/time/a0/c;->k()Lorg/joda/time/i;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/a0/c;->k()Lorg/joda/time/i;

    move-result-object v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/joda/time/a0/p;->h:I

    iget p1, p1, Lorg/joda/time/a0/p;->h:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public h(JJ)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/e;->v()Lorg/joda/time/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/h;->h(JJ)I

    move-result p1

    iget p2, p0, Lorg/joda/time/a0/p;->h:I

    div-int/2addr p1, p2

    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/joda/time/a0/p;->h:I

    int-to-long v0, v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/a0/c;->k()Lorg/joda/time/i;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3
    invoke-virtual {p0}, Lorg/joda/time/a0/e;->v()Lorg/joda/time/h;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public j(JJ)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/e;->v()Lorg/joda/time/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/h;->j(JJ)J

    move-result-wide p1

    iget p3, p0, Lorg/joda/time/a0/p;->h:I

    int-to-long p3, p3

    div-long/2addr p1, p3

    return-wide p1
.end method

.method public m()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/e;->v()Lorg/joda/time/h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/h;->m()J

    move-result-wide v0

    iget v2, p0, Lorg/joda/time/a0/p;->h:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    return-wide v0
.end method
