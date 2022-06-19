.class public final Lw3/b/a/f0/d;
.super Lw3/b/a/h0/l;
.source "SourceFile"


# instance fields
.field public final d:Lw3/b/a/f0/c;


# direct methods
.method public constructor <init>(Lw3/b/a/f0/c;Lw3/b/a/j;)V
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->i:Lw3/b/a/d;

    invoke-direct {p0, v0, p2}, Lw3/b/a/h0/l;-><init>(Lw3/b/a/d;Lw3/b/a/j;)V

    .line 2
    iput-object p1, p0, Lw3/b/a/f0/d;->d:Lw3/b/a/f0/c;

    return-void
.end method


# virtual methods
.method public G(JI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/d;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/f0/c;->i0(JI)I

    move-result p1

    return p1
.end method

.method public c(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/d;->d:Lw3/b/a/f0/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->w0(J)I

    move-result v1

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/c;->q0(JI)I

    move-result v2

    .line 4
    invoke-virtual {v0, p1, p2, v1, v2}, Lw3/b/a/f0/c;->f0(JII)I

    move-result p1

    return p1
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/d;->d:Lw3/b/a/f0/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1f

    return v0
.end method

.method public p(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/d;->d:Lw3/b/a/f0/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->w0(J)I

    move-result v1

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/c;->q0(JI)I

    move-result p1

    .line 4
    invoke-virtual {v0, v1, p1}, Lw3/b/a/f0/c;->k0(II)I

    move-result p1

    return p1
.end method

.method public q(Lw3/b/a/b0;)I
    .locals 3

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->h:Lw3/b/a/d;

    invoke-interface {p1, v0}, Lw3/b/a/b0;->G0(Lw3/b/a/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {p1, v0}, Lw3/b/a/b0;->L0(Lw3/b/a/d;)I

    move-result v0

    .line 3
    sget-object v1, Lw3/b/a/d;->f:Lw3/b/a/d;

    invoke-interface {p1, v1}, Lw3/b/a/b0;->G0(Lw3/b/a/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {p1, v1}, Lw3/b/a/b0;->L0(Lw3/b/a/d;)I

    move-result p1

    .line 5
    iget-object v1, p0, Lw3/b/a/f0/d;->d:Lw3/b/a/f0/c;

    invoke-virtual {v1, p1, v0}, Lw3/b/a/f0/c;->k0(II)I

    move-result p1

    return p1

    .line 6
    :cond_0
    iget-object p1, p0, Lw3/b/a/f0/d;->d:Lw3/b/a/f0/c;

    invoke-virtual {p1, v0}, Lw3/b/a/f0/c;->h0(I)I

    move-result p1

    return p1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lw3/b/a/f0/d;->o()I

    const/16 p1, 0x1f

    return p1
.end method

.method public r(Lw3/b/a/b0;[I)I
    .locals 5

    .line 1
    invoke-interface {p1}, Lw3/b/a/b0;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    invoke-interface {p1, v2}, Lw3/b/a/b0;->b(I)Lw3/b/a/d;

    move-result-object v3

    sget-object v4, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v4, Lw3/b/a/d;->h:Lw3/b/a/d;

    if-ne v3, v4, :cond_2

    .line 3
    aget v2, p2, v2

    :goto_1
    if-ge v1, v0, :cond_1

    .line 4
    invoke-interface {p1, v1}, Lw3/b/a/b0;->b(I)Lw3/b/a/d;

    move-result-object v3

    sget-object v4, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v4, Lw3/b/a/d;->f:Lw3/b/a/d;

    if-ne v3, v4, :cond_0

    .line 5
    aget p1, p2, v1

    .line 6
    iget-object p2, p0, Lw3/b/a/f0/d;->d:Lw3/b/a/f0/c;

    invoke-virtual {p2, p1, v2}, Lw3/b/a/f0/c;->k0(II)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lw3/b/a/f0/d;->d:Lw3/b/a/f0/c;

    invoke-virtual {p1, v2}, Lw3/b/a/f0/c;->h0(I)I

    move-result p1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lw3/b/a/f0/d;->o()I

    const/16 p1, 0x1f

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
    iget-object v0, p0, Lw3/b/a/f0/d;->d:Lw3/b/a/f0/c;

    .line 2
    iget-object v0, v0, Lw3/b/a/f0/a;->k:Lw3/b/a/j;

    return-object v0
.end method

.method public x(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/d;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->B0(J)Z

    move-result p1

    return p1
.end method
