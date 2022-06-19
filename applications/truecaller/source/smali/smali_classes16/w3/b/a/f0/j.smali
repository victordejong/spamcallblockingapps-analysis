.class public Lw3/b/a/f0/j;
.super Lw3/b/a/h0/h;
.source "SourceFile"


# instance fields
.field public final d:Lw3/b/a/f0/c;


# direct methods
.method public constructor <init>(Lw3/b/a/f0/c;)V
    .locals 3

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->f:Lw3/b/a/d;

    invoke-virtual {p1}, Lw3/b/a/f0/c;->b0()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lw3/b/a/h0/h;-><init>(Lw3/b/a/d;J)V

    .line 2
    iput-object p1, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    return-void
.end method


# virtual methods
.method public A(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->w0(J)I

    move-result v0

    .line 2
    iget-object v1, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    invoke-virtual {v1, v0}, Lw3/b/a/f0/c;->y0(I)J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lw3/b/a/f0/c;->y0(I)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public B(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->w0(J)I

    move-result p1

    .line 3
    invoke-virtual {v0, p1}, Lw3/b/a/f0/c;->y0(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public C(JI)J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0}, Lw3/b/a/f0/c;->p0()I

    move-result v0

    iget-object v1, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    invoke-virtual {v1}, Lw3/b/a/f0/c;->n0()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Ls1/a/a/a/v0/f/d;->Y3(Lw3/b/a/c;III)V

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/f0/c;->D0(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public E(JI)J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0}, Lw3/b/a/f0/c;->p0()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    invoke-virtual {v1}, Lw3/b/a/f0/c;->n0()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, p3, v0, v1}, Ls1/a/a/a/v0/f/d;->Y3(Lw3/b/a/c;III)V

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/f0/c;->D0(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)J
    .locals 3

    if-nez p3, :cond_0

    return-wide p1

    .line 1
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->w0(J)I

    move-result v0

    add-int v1, v0, p3

    xor-int v2, v0, v1

    if-gez v2, :cond_2

    xor-int v2, v0, p3

    if-gez v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "The calculation caused an overflow: "

    const-string v1, " + "

    invoke-static {p2, v0, v1, p3}, Le/d/c/a/a;->m2(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Lw3/b/a/f0/j;->C(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 0

    .line 1
    invoke-static {p3, p4}, Ls1/a/a/a/v0/f/d;->g3(J)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lw3/b/a/f0/j;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->w0(J)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 1

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p3, p4, p1, p2}, Lw3/b/a/f0/c;->x0(JJ)J

    move-result-wide p1

    neg-long p1, p1

    return-wide p1

    .line 2
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/f0/c;->x0(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public m()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    .line 2
    iget-object v0, v0, Lw3/b/a/f0/a;->h:Lw3/b/a/j;

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0}, Lw3/b/a/f0/c;->n0()I

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

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
    iget-object v0, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->w0(J)I

    move-result p1

    .line 3
    invoke-virtual {v0, p1}, Lw3/b/a/f0/c;->C0(I)Z

    move-result p1

    return p1
.end method

.method public z(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/j;->d:Lw3/b/a/f0/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->w0(J)I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Lw3/b/a/f0/c;->y0(I)J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method
