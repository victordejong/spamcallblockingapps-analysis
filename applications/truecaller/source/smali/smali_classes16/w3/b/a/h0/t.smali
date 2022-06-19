.class public final Lw3/b/a/h0/t;
.super Lw3/b/a/h0/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lw3/b/a/c;Lw3/b/a/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lw3/b/a/h0/d;-><init>(Lw3/b/a/c;Lw3/b/a/d;)V

    return-void
.end method


# virtual methods
.method public A(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->A(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public B(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->B(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public C(JI)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/t;->o()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, p3, v1, v0}, Ls1/a/a/a/v0/f/d;->Y3(Lw3/b/a/c;III)V

    if-ne p3, v0, :cond_0

    const/4 p3, 0x0

    .line 3
    :cond_0
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
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

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lw3/b/a/h0/t;->o()I

    move-result p1

    :cond_0
    return p1
.end method

.method public j(JJ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->j(JJ)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->k(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public m()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/c;->m()Lw3/b/a/j;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/c;->o()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public p(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->p(J)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public q(Lw3/b/a/b0;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1}, Lw3/b/a/c;->q(Lw3/b/a/b0;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public r(Lw3/b/a/b0;[I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->r(Lw3/b/a/b0;[I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public s()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public t(Lw3/b/a/b0;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public u(Lw3/b/a/b0;[I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public x(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->x(J)Z

    move-result p1

    return p1
.end method

.method public z(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->z(J)J

    move-result-wide p1

    return-wide p1
.end method
