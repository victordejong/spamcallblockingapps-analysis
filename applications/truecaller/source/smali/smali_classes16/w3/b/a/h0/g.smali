.class public Lw3/b/a/h0/g;
.super Lw3/b/a/h0/d;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final d:Lw3/b/a/j;

.field public final e:Lw3/b/a/j;

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Lw3/b/a/c;Lw3/b/a/j;Lw3/b/a/d;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p3}, Lw3/b/a/h0/d;-><init>(Lw3/b/a/c;Lw3/b/a/d;)V

    const/4 v0, 0x2

    if-lt p4, v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lw3/b/a/c;->l()Lw3/b/a/j;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p3, 0x0

    .line 3
    iput-object p3, p0, Lw3/b/a/h0/g;->d:Lw3/b/a/j;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lw3/b/a/h0/o;

    invoke-virtual {p3}, Lw3/b/a/d;->a()Lw3/b/a/k;

    move-result-object p3

    invoke-direct {v1, v0, p3, p4}, Lw3/b/a/h0/o;-><init>(Lw3/b/a/j;Lw3/b/a/k;I)V

    iput-object v1, p0, Lw3/b/a/h0/g;->d:Lw3/b/a/j;

    .line 5
    :goto_0
    iput-object p2, p0, Lw3/b/a/h0/g;->e:Lw3/b/a/j;

    .line 6
    iput p4, p0, Lw3/b/a/h0/g;->c:I

    .line 7
    invoke-virtual {p1}, Lw3/b/a/c;->s()I

    move-result p2

    if-ltz p2, :cond_1

    .line 8
    div-int/2addr p2, p4

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    div-int/2addr p2, p4

    add-int/lit8 p2, p2, -0x1

    .line 9
    :goto_1
    invoke-virtual {p1}, Lw3/b/a/c;->o()I

    move-result p1

    if-ltz p1, :cond_2

    .line 10
    div-int/2addr p1, p4

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    div-int/2addr p1, p4

    add-int/lit8 p1, p1, -0x1

    .line 11
    :goto_2
    iput p2, p0, Lw3/b/a/h0/g;->f:I

    .line 12
    iput p1, p0, Lw3/b/a/h0/g;->g:I

    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The divisor must be at least 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public B(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {p0, p1, p2}, Lw3/b/a/h0/g;->c(J)I

    move-result v1

    iget v2, p0, Lw3/b/a/h0/g;->c:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->B(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public C(JI)J
    .locals 3

    .line 1
    iget v0, p0, Lw3/b/a/h0/g;->f:I

    iget v1, p0, Lw3/b/a/h0/g;->g:I

    invoke-static {p0, p3, v0, v1}, Ls1/a/a/a/v0/f/d;->Y3(Lw3/b/a/c;III)V

    .line 2
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 3
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->c(J)I

    move-result v0

    if-ltz v0, :cond_0

    .line 4
    iget v1, p0, Lw3/b/a/h0/g;->c:I

    rem-int/2addr v0, v1

    goto :goto_0

    .line 5
    :cond_0
    iget v1, p0, Lw3/b/a/h0/g;->c:I

    add-int/lit8 v2, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 6
    :goto_0
    iget-object v1, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 7
    iget v2, p0, Lw3/b/a/h0/g;->c:I

    mul-int/2addr p3, v2

    add-int/2addr p3, v0

    invoke-virtual {v1, p1, p2, p3}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    iget v1, p0, Lw3/b/a/h0/g;->c:I

    mul-int/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 3

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    iget v1, p0, Lw3/b/a/h0/g;->c:I

    int-to-long v1, v1

    mul-long/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->b(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->c(J)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    iget p2, p0, Lw3/b/a/h0/g;->c:I

    div-int/2addr p1, p2

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 4
    iget p2, p0, Lw3/b/a/h0/g;->c:I

    div-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public j(JJ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->j(JJ)I

    move-result p1

    iget p2, p0, Lw3/b/a/h0/g;->c:I

    div-int/2addr p1, p2

    return p1
.end method

.method public k(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->k(JJ)J

    move-result-wide p1

    iget p3, p0, Lw3/b/a/h0/g;->c:I

    int-to-long p3, p3

    div-long/2addr p1, p3

    return-wide p1
.end method

.method public l()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/g;->d:Lw3/b/a/j;

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lw3/b/a/h0/g;->g:I

    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lw3/b/a/h0/g;->f:I

    return v0
.end method

.method public v()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/g;->e:Lw3/b/a/j;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Lw3/b/a/h0/d;->v()Lw3/b/a/j;

    move-result-object v0

    return-object v0
.end method

.method public z(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->z(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lw3/b/a/h0/g;->c(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lw3/b/a/h0/g;->C(JI)J

    move-result-wide p1

    return-wide p1
.end method
