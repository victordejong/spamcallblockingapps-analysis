.class final Lorg/joda/time/y/j;
.super Lorg/joda/time/a0/i;
.source "SourceFile"


# instance fields
.field private final d:Lorg/joda/time/y/c;


# direct methods
.method constructor <init>(Lorg/joda/time/y/c;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/joda/time/d;->S()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/y/c;->b0()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/a0/i;-><init>(Lorg/joda/time/d;J)V

    .line 2
    iput-object p1, p0, Lorg/joda/time/y/j;->d:Lorg/joda/time/y/c;

    return-void
.end method


# virtual methods
.method public A(J)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/j;->C(J)J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public C(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/j;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0}, Lorg/joda/time/y/a;->H()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->C(J)J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/j;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/y/c;->C0(J)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-wide/32 v2, 0x240c8400

    sub-int/2addr v0, v1

    int-to-long v0, v0

    mul-long v0, v0, v2

    sub-long/2addr p1, v0

    :cond_0
    return-wide p1
.end method

.method public G(JI)J
    .locals 7

    .line 1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/y/j;->d:Lorg/joda/time/y/c;

    invoke-virtual {v1}, Lorg/joda/time/y/c;->x0()I

    move-result v1

    iget-object v2, p0, Lorg/joda/time/y/j;->d:Lorg/joda/time/y/c;

    invoke-virtual {v2}, Lorg/joda/time/y/c;->v0()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lorg/joda/time/a0/h;->i(Lorg/joda/time/c;III)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/j;->c(J)I

    move-result v0

    if-ne v0, p3, :cond_0

    return-wide p1

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/joda/time/y/j;->d:Lorg/joda/time/y/c;

    invoke-virtual {v1, p1, p2}, Lorg/joda/time/y/c;->i0(J)I

    move-result v1

    .line 4
    iget-object v2, p0, Lorg/joda/time/y/j;->d:Lorg/joda/time/y/c;

    invoke-virtual {v2, v0}, Lorg/joda/time/y/c;->E0(I)I

    move-result v0

    .line 5
    iget-object v2, p0, Lorg/joda/time/y/j;->d:Lorg/joda/time/y/c;

    invoke-virtual {v2, p3}, Lorg/joda/time/y/c;->E0(I)I

    move-result v2

    if-ge v2, v0, :cond_1

    move v0, v2

    .line 6
    :cond_1
    iget-object v2, p0, Lorg/joda/time/y/j;->d:Lorg/joda/time/y/c;

    invoke-virtual {v2, p1, p2}, Lorg/joda/time/y/c;->C0(J)I

    move-result v2

    if-le v2, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 7
    :goto_0
    iget-object v2, p0, Lorg/joda/time/y/j;->d:Lorg/joda/time/y/c;

    invoke-virtual {v2, p1, p2, p3}, Lorg/joda/time/y/c;->O0(JI)J

    move-result-wide p1

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/j;->c(J)I

    move-result v2

    const-wide/32 v3, 0x240c8400

    if-ge v2, p3, :cond_3

    add-long/2addr p1, v3

    goto :goto_1

    :cond_3
    if-le v2, p3, :cond_4

    sub-long/2addr p1, v3

    .line 9
    :cond_4
    :goto_1
    iget-object p3, p0, Lorg/joda/time/y/j;->d:Lorg/joda/time/y/c;

    invoke-virtual {p3, p1, p2}, Lorg/joda/time/y/c;->C0(J)I

    move-result p3

    sub-int/2addr v0, p3

    int-to-long v5, v0

    mul-long v5, v5, v3

    add-long/2addr p1, v5

    .line 10
    iget-object p3, p0, Lorg/joda/time/y/j;->d:Lorg/joda/time/y/c;

    invoke-virtual {p3}, Lorg/joda/time/y/a;->f()Lorg/joda/time/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v1}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)J
    .locals 1

    if-nez p3, :cond_0

    return-wide p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/j;->c(J)I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/y/j;->G(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 0

    .line 1
    invoke-static {p3, p4}, Lorg/joda/time/a0/h;->h(J)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/y/j;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/j;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/y/c;->F0(J)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 5

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 1
    invoke-virtual {p0, p3, p4, p1, p2}, Lorg/joda/time/a0/i;->j(JJ)I

    move-result p1

    neg-int p1, p1

    int-to-long p1, p1

    return-wide p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/j;->c(J)I

    move-result v0

    .line 3
    invoke-virtual {p0, p3, p4}, Lorg/joda/time/y/j;->c(J)I

    move-result v1

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/j;->A(J)J

    move-result-wide p1

    .line 5
    invoke-virtual {p0, p3, p4}, Lorg/joda/time/y/j;->A(J)J

    move-result-wide p3

    const-wide v2, 0x7528ad000L

    cmp-long v4, p3, v2

    if-ltz v4, :cond_1

    .line 6
    iget-object v2, p0, Lorg/joda/time/y/j;->d:Lorg/joda/time/y/c;

    invoke-virtual {v2, v0}, Lorg/joda/time/y/c;->E0(I)I

    move-result v2

    const/16 v3, 0x34

    if-gt v2, v3, :cond_1

    const-wide/32 v2, 0x240c8400

    sub-long/2addr p3, v2

    :cond_1
    sub-int/2addr v0, v1

    cmp-long v1, p1, p3

    if-gez v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    int-to-long p1, v0

    return-wide p1
.end method

.method public m()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/j;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0}, Lorg/joda/time/y/a;->I()Lorg/joda/time/h;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/j;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0}, Lorg/joda/time/y/c;->v0()I

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/j;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0}, Lorg/joda/time/y/c;->x0()I

    move-result v0

    return v0
.end method

.method public w()Lorg/joda/time/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public y(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/j;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/y/c;->F0(J)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/joda/time/y/c;->E0(I)I

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
