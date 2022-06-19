.class public final Lw3/b/a/f0/i;
.super Lw3/b/a/h0/h;
.source "SourceFile"


# instance fields
.field public final d:Lw3/b/a/f0/c;


# direct methods
.method public constructor <init>(Lw3/b/a/f0/c;)V
    .locals 3

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->k:Lw3/b/a/d;

    invoke-virtual {p1}, Lw3/b/a/f0/c;->b0()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lw3/b/a/h0/h;-><init>(Lw3/b/a/d;J)V

    .line 2
    iput-object p1, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    return-void
.end method


# virtual methods
.method public B(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    .line 2
    iget-object v0, v0, Lw3/b/a/f0/a;->C:Lw3/b/a/c;

    .line 3
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->B(J)J

    move-result-wide p1

    .line 4
    iget-object v0, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->s0(J)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-wide/32 v2, 0x240c8400

    sub-int/2addr v0, v1

    int-to-long v0, v0

    mul-long/2addr v0, v2

    sub-long/2addr p1, v0

    :cond_0
    return-wide p1
.end method

.method public C(JI)J
    .locals 7

    .line 1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    invoke-virtual {v1}, Lw3/b/a/f0/c;->p0()I

    move-result v1

    iget-object v2, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    invoke-virtual {v2}, Lw3/b/a/f0/c;->n0()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Ls1/a/a/a/v0/f/d;->Y3(Lw3/b/a/c;III)V

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->v0(J)I

    move-result v0

    if-ne v0, p3, :cond_0

    return-wide p1

    .line 3
    :cond_0
    iget-object v1, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    invoke-virtual {v1, p1, p2}, Lw3/b/a/f0/c;->g0(J)I

    move-result v1

    .line 4
    iget-object v2, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    invoke-virtual {v2, v0}, Lw3/b/a/f0/c;->u0(I)I

    move-result v0

    .line 5
    iget-object v2, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    invoke-virtual {v2, p3}, Lw3/b/a/f0/c;->u0(I)I

    move-result v2

    if-ge v2, v0, :cond_1

    move v0, v2

    .line 6
    :cond_1
    iget-object v2, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    .line 7
    invoke-virtual {v2, p1, p2}, Lw3/b/a/f0/c;->w0(J)I

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Lw3/b/a/f0/c;->t0(JI)I

    move-result v2

    if-le v2, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 8
    :goto_0
    iget-object v2, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    invoke-virtual {v2, p1, p2, p3}, Lw3/b/a/f0/c;->D0(JI)J

    move-result-wide p1

    .line 9
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/i;->c(J)I

    move-result v2

    const-wide/32 v3, 0x240c8400

    if-ge v2, p3, :cond_3

    add-long/2addr p1, v3

    goto :goto_1

    :cond_3
    if-le v2, p3, :cond_4

    sub-long/2addr p1, v3

    .line 10
    :cond_4
    :goto_1
    iget-object p3, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    invoke-virtual {p3, p1, p2}, Lw3/b/a/f0/c;->s0(J)I

    move-result p3

    sub-int/2addr v0, p3

    int-to-long v5, v0

    mul-long/2addr v5, v3

    add-long/2addr v5, p1

    .line 11
    iget-object p1, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    .line 12
    iget-object p1, p1, Lw3/b/a/f0/a;->z:Lw3/b/a/c;

    .line 13
    invoke-virtual {p1, v5, v6, v1}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)J
    .locals 1

    if-nez p3, :cond_0

    return-wide p1

    .line 1
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->v0(J)I

    move-result v0

    add-int/2addr v0, p3

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lw3/b/a/f0/i;->C(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 0

    .line 1
    invoke-static {p3, p4}, Ls1/a/a/a/v0/f/d;->g3(J)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lw3/b/a/f0/i;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->v0(J)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 4

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 1
    invoke-virtual {p0, p3, p4, p1, p2}, Lw3/b/a/f0/i;->k(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->g3(J)I

    move-result p1

    neg-int p1, p1

    int-to-long p1, p1

    return-wide p1

    .line 2
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->v0(J)I

    move-result v0

    .line 3
    iget-object v1, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    invoke-virtual {v1, p3, p4}, Lw3/b/a/f0/c;->v0(J)I

    move-result v1

    .line 4
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/i;->B(J)J

    move-result-wide v2

    sub-long/2addr p1, v2

    .line 5
    invoke-virtual {p0, p3, p4}, Lw3/b/a/f0/i;->B(J)J

    move-result-wide v2

    sub-long/2addr p3, v2

    const-wide v2, 0x7528ad000L

    cmp-long v2, p3, v2

    if-ltz v2, :cond_1

    .line 6
    iget-object v2, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    invoke-virtual {v2, v0}, Lw3/b/a/f0/c;->u0(I)I

    move-result v2

    const/16 v3, 0x34

    if-gt v2, v3, :cond_1

    const-wide/32 v2, 0x240c8400

    sub-long/2addr p3, v2

    :cond_1
    sub-int/2addr v0, v1

    cmp-long p1, p1, p3

    if-gez p1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    int-to-long p1, v0

    return-wide p1
.end method

.method public m()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    .line 2
    iget-object v0, v0, Lw3/b/a/f0/a;->i:Lw3/b/a/j;

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0}, Lw3/b/a/f0/c;->n0()I

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0}, Lw3/b/a/f0/c;->p0()I

    move-result v0

    return v0
.end method

.method public v()Lw3/b/a/j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public x(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/i;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->v0(J)I

    move-result p1

    invoke-virtual {v0, p1}, Lw3/b/a/f0/c;->u0(I)I

    move-result p1

    const/16 p2, 0x34

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public z(J)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/i;->B(J)J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method
