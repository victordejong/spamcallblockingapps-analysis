.class public final Lw3/b/a/f0/h;
.super Lw3/b/a/h0/l;
.source "SourceFile"


# instance fields
.field public final d:Lw3/b/a/f0/c;


# direct methods
.method public constructor <init>(Lw3/b/a/f0/c;Lw3/b/a/j;)V
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->l:Lw3/b/a/d;

    invoke-direct {p0, v0, p2}, Lw3/b/a/h0/l;-><init>(Lw3/b/a/d;Lw3/b/a/j;)V

    .line 2
    iput-object p1, p0, Lw3/b/a/f0/h;->d:Lw3/b/a/f0/c;

    return-void
.end method


# virtual methods
.method public A(J)J
    .locals 2

    const-wide/32 v0, 0xf731400

    add-long/2addr p1, v0

    .line 1
    invoke-super {p0, p1, p2}, Lw3/b/a/h0/l;->A(J)J

    move-result-wide p1

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public B(J)J
    .locals 2

    const-wide/32 v0, 0xf731400

    add-long/2addr p1, v0

    .line 1
    invoke-super {p0, p1, p2}, Lw3/b/a/h0/l;->B(J)J

    move-result-wide p1

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public G(JI)I
    .locals 1

    const/16 v0, 0x34

    if-le p3, v0, :cond_0

    .line 1
    iget-object p3, p0, Lw3/b/a/f0/h;->d:Lw3/b/a/f0/c;

    invoke-virtual {p3, p1, p2}, Lw3/b/a/f0/c;->v0(J)I

    move-result p1

    .line 2
    iget-object p2, p0, Lw3/b/a/f0/h;->d:Lw3/b/a/f0/c;

    invoke-virtual {p2, p1}, Lw3/b/a/f0/c;->u0(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public c(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/h;->d:Lw3/b/a/f0/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->w0(J)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/c;->t0(JI)I

    move-result p1

    return p1
.end method

.method public o()I
    .locals 1

    const/16 v0, 0x35

    return v0
.end method

.method public p(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/h;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->v0(J)I

    move-result p1

    .line 2
    iget-object p2, p0, Lw3/b/a/f0/h;->d:Lw3/b/a/f0/c;

    invoke-virtual {p2, p1}, Lw3/b/a/f0/c;->u0(I)I

    move-result p1

    return p1
.end method

.method public q(Lw3/b/a/b0;)I
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->k:Lw3/b/a/d;

    invoke-interface {p1, v0}, Lw3/b/a/b0;->G0(Lw3/b/a/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lw3/b/a/b0;->L0(Lw3/b/a/d;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lw3/b/a/f0/h;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1}, Lw3/b/a/f0/c;->u0(I)I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x35

    return p1
.end method

.method public r(Lw3/b/a/b0;[I)I
    .locals 4

    .line 1
    invoke-interface {p1}, Lw3/b/a/b0;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-interface {p1, v1}, Lw3/b/a/b0;->b(I)Lw3/b/a/d;

    move-result-object v2

    sget-object v3, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v3, Lw3/b/a/d;->k:Lw3/b/a/d;

    if-ne v2, v3, :cond_0

    .line 3
    aget p1, p2, v1

    .line 4
    iget-object p2, p0, Lw3/b/a/f0/h;->d:Lw3/b/a/f0/c;

    invoke-virtual {p2, p1}, Lw3/b/a/f0/c;->u0(I)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x35

    return p1
.end method

.method public s()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/h;->d:Lw3/b/a/f0/c;

    .line 2
    iget-object v0, v0, Lw3/b/a/f0/a;->j:Lw3/b/a/j;

    return-object v0
.end method

.method public z(J)J
    .locals 2

    const-wide/32 v0, 0xf731400

    add-long/2addr p1, v0

    .line 1
    invoke-super {p0, p1, p2}, Lw3/b/a/h0/l;->z(J)J

    move-result-wide p1

    return-wide p1
.end method
