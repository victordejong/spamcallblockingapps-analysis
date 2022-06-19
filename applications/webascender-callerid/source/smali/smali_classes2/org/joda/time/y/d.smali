.class final Lorg/joda/time/y/d;
.super Lorg/joda/time/a0/m;
.source "SourceFile"


# instance fields
.field private final d:Lorg/joda/time/y/c;


# direct methods
.method constructor <init>(Lorg/joda/time/y/c;Lorg/joda/time/h;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/d;->A()Lorg/joda/time/d;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/a0/m;-><init>(Lorg/joda/time/d;Lorg/joda/time/h;)V

    .line 2
    iput-object p1, p0, Lorg/joda/time/y/d;->d:Lorg/joda/time/y/c;

    return-void
.end method


# virtual methods
.method protected M(JI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/d;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/y/c;->o0(JI)I

    move-result p1

    return p1
.end method

.method public c(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/d;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/y/c;->f0(J)I

    move-result p1

    return p1
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/d;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0}, Lorg/joda/time/y/c;->l0()I

    move-result v0

    return v0
.end method

.method public p(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/d;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/y/c;->n0(J)I

    move-result p1

    return p1
.end method

.method public q(Lorg/joda/time/t;)I
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->O()Lorg/joda/time/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/t;->N(Lorg/joda/time/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lorg/joda/time/d;->O()Lorg/joda/time/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/t;->Y(Lorg/joda/time/d;)I

    move-result v0

    .line 3
    invoke-static {}, Lorg/joda/time/d;->U()Lorg/joda/time/d;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/joda/time/t;->N(Lorg/joda/time/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lorg/joda/time/d;->U()Lorg/joda/time/d;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/joda/time/t;->Y(Lorg/joda/time/d;)I

    move-result p1

    .line 5
    iget-object v1, p0, Lorg/joda/time/y/d;->d:Lorg/joda/time/y/c;

    invoke-virtual {v1, p1, v0}, Lorg/joda/time/y/c;->r0(II)I

    move-result p1

    return p1

    .line 6
    :cond_0
    iget-object p1, p0, Lorg/joda/time/y/d;->d:Lorg/joda/time/y/c;

    invoke-virtual {p1, v0}, Lorg/joda/time/y/c;->m0(I)I

    move-result p1

    return p1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/y/d;->o()I

    move-result p1

    return p1
.end method

.method public r(Lorg/joda/time/t;[I)I
    .locals 5

    .line 1
    invoke-interface {p1}, Lorg/joda/time/t;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    invoke-interface {p1, v2}, Lorg/joda/time/t;->g(I)Lorg/joda/time/d;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/d;->O()Lorg/joda/time/d;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 3
    aget v2, p2, v2

    :goto_1
    if-ge v1, v0, :cond_1

    .line 4
    invoke-interface {p1, v1}, Lorg/joda/time/t;->g(I)Lorg/joda/time/d;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/d;->U()Lorg/joda/time/d;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 5
    aget p1, p2, v1

    .line 6
    iget-object p2, p0, Lorg/joda/time/y/d;->d:Lorg/joda/time/y/c;

    invoke-virtual {p2, p1, v2}, Lorg/joda/time/y/c;->r0(II)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lorg/joda/time/y/d;->d:Lorg/joda/time/y/c;

    invoke-virtual {p1, v2}, Lorg/joda/time/y/c;->m0(I)I

    move-result p1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/y/d;->o()I

    move-result p1

    return p1
.end method

.method public s()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public w()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/d;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0}, Lorg/joda/time/y/a;->B()Lorg/joda/time/h;

    move-result-object v0

    return-object v0
.end method

.method public y(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/d;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/y/c;->M0(J)Z

    move-result p1

    return p1
.end method
