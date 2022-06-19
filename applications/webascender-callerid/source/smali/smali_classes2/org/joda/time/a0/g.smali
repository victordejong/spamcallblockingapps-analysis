.class public Lorg/joda/time/a0/g;
.super Lorg/joda/time/a0/d;
.source "SourceFile"


# instance fields
.field final c:I

.field final d:Lorg/joda/time/h;

.field final e:Lorg/joda/time/h;

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Lorg/joda/time/c;Lorg/joda/time/d;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/joda/time/c;->w()Lorg/joda/time/h;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/joda/time/a0/g;-><init>(Lorg/joda/time/c;Lorg/joda/time/h;Lorg/joda/time/d;I)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/c;Lorg/joda/time/h;Lorg/joda/time/d;I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p3}, Lorg/joda/time/a0/d;-><init>(Lorg/joda/time/c;Lorg/joda/time/d;)V

    const/4 v0, 0x2

    if-lt p4, v0, :cond_3

    .line 3
    invoke-virtual {p1}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p3, 0x0

    .line 4
    iput-object p3, p0, Lorg/joda/time/a0/g;->d:Lorg/joda/time/h;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lorg/joda/time/a0/p;

    invoke-virtual {p3}, Lorg/joda/time/d;->E()Lorg/joda/time/i;

    move-result-object p3

    invoke-direct {v1, v0, p3, p4}, Lorg/joda/time/a0/p;-><init>(Lorg/joda/time/h;Lorg/joda/time/i;I)V

    iput-object v1, p0, Lorg/joda/time/a0/g;->d:Lorg/joda/time/h;

    .line 6
    :goto_0
    iput-object p2, p0, Lorg/joda/time/a0/g;->e:Lorg/joda/time/h;

    .line 7
    iput p4, p0, Lorg/joda/time/a0/g;->c:I

    .line 8
    invoke-virtual {p1}, Lorg/joda/time/c;->s()I

    move-result p2

    if-ltz p2, :cond_1

    .line 9
    div-int/2addr p2, p4

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    div-int/2addr p2, p4

    add-int/lit8 p2, p2, -0x1

    .line 10
    :goto_1
    invoke-virtual {p1}, Lorg/joda/time/c;->o()I

    move-result p1

    if-ltz p1, :cond_2

    .line 11
    div-int/2addr p1, p4

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    div-int/2addr p1, p4

    add-int/lit8 p1, p1, -0x1

    .line 12
    :goto_2
    iput p2, p0, Lorg/joda/time/a0/g;->f:I

    .line 13
    iput p1, p0, Lorg/joda/time/a0/g;->g:I

    return-void

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The divisor must be at least 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private N(I)I
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lorg/joda/time/a0/g;->c:I

    rem-int/2addr p1, v0

    return p1

    .line 2
    :cond_0
    iget v0, p0, Lorg/joda/time/a0/g;->c:I

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v0

    add-int/2addr v1, p1

    return v1
.end method


# virtual methods
.method public A(J)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->A(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/a0/g;->c(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/a0/g;->G(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public C(J)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/a0/g;->c(J)I

    move-result v1

    iget v2, p0, Lorg/joda/time/a0/g;->c:I

    mul-int v1, v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->C(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public G(JI)J
    .locals 3

    .line 1
    iget v0, p0, Lorg/joda/time/a0/g;->f:I

    iget v1, p0, Lorg/joda/time/a0/g;->g:I

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/a0/h;->i(Lorg/joda/time/c;III)V

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->c(J)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/joda/time/a0/g;->N(I)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v1

    iget v2, p0, Lorg/joda/time/a0/g;->c:I

    mul-int p3, p3, v2

    add-int/2addr p3, v0

    invoke-virtual {v1, p1, p2, p3}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/a0/g;->c:I

    mul-int p3, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/a0/g;->c:I

    int-to-long v1, v1

    mul-long p3, p3, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->b(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->c(J)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    iget p2, p0, Lorg/joda/time/a0/g;->c:I

    div-int/2addr p1, p2

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 3
    iget p2, p0, Lorg/joda/time/a0/g;->c:I

    div-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public j(JJ)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->j(JJ)I

    move-result p1

    iget p2, p0, Lorg/joda/time/a0/g;->c:I

    div-int/2addr p1, p2

    return p1
.end method

.method public k(JJ)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->k(JJ)J

    move-result-wide p1

    iget p3, p0, Lorg/joda/time/a0/g;->c:I

    int-to-long p3, p3

    div-long/2addr p1, p3

    return-wide p1
.end method

.method public l()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/g;->d:Lorg/joda/time/h;

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/joda/time/a0/g;->g:I

    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/joda/time/a0/g;->f:I

    return v0
.end method

.method public w()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/g;->e:Lorg/joda/time/h;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Lorg/joda/time/a0/d;->w()Lorg/joda/time/h;

    move-result-object v0

    return-object v0
.end method
