.class final Lorg/joda/time/y/e;
.super Lorg/joda/time/a0/m;
.source "SourceFile"


# instance fields
.field private final d:Lorg/joda/time/y/c;


# direct methods
.method constructor <init>(Lorg/joda/time/y/c;Lorg/joda/time/h;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/d;->C()Lorg/joda/time/d;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/a0/m;-><init>(Lorg/joda/time/d;Lorg/joda/time/h;)V

    .line 2
    iput-object p1, p0, Lorg/joda/time/y/e;->d:Lorg/joda/time/y/c;

    return-void
.end method


# virtual methods
.method protected M(JI)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/e;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0}, Lorg/joda/time/y/c;->q0()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gt p3, v0, :cond_0

    if-ge p3, v1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/e;->p(J)I

    move-result v0

    :cond_1
    return v0
.end method

.method public c(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/e;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/y/c;->j0(J)I

    move-result p1

    return p1
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/e;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0}, Lorg/joda/time/y/c;->q0()I

    move-result v0

    return v0
.end method

.method public p(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/e;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/y/c;->G0(J)I

    move-result p1

    .line 2
    iget-object p2, p0, Lorg/joda/time/y/e;->d:Lorg/joda/time/y/c;

    invoke-virtual {p2, p1}, Lorg/joda/time/y/c;->p0(I)I

    move-result p1

    return p1
.end method

.method public q(Lorg/joda/time/t;)I
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/d;->U()Lorg/joda/time/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/t;->N(Lorg/joda/time/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/joda/time/d;->U()Lorg/joda/time/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/t;->Y(Lorg/joda/time/d;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lorg/joda/time/y/e;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/y/c;->p0(I)I

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object p1, p0, Lorg/joda/time/y/e;->d:Lorg/joda/time/y/c;

    invoke-virtual {p1}, Lorg/joda/time/y/c;->q0()I

    move-result p1

    return p1
.end method

.method public r(Lorg/joda/time/t;[I)I
    .locals 4

    .line 1
    invoke-interface {p1}, Lorg/joda/time/t;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-interface {p1, v1}, Lorg/joda/time/t;->g(I)Lorg/joda/time/d;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/d;->U()Lorg/joda/time/d;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 3
    aget p1, p2, v1

    .line 4
    iget-object p2, p0, Lorg/joda/time/y/e;->d:Lorg/joda/time/y/c;

    invoke-virtual {p2, p1}, Lorg/joda/time/y/c;->p0(I)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lorg/joda/time/y/e;->d:Lorg/joda/time/y/c;

    invoke-virtual {p1}, Lorg/joda/time/y/c;->q0()I

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
    iget-object v0, p0, Lorg/joda/time/y/e;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0}, Lorg/joda/time/y/a;->R()Lorg/joda/time/h;

    move-result-object v0

    return-object v0
.end method

.method public y(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/e;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/y/c;->M0(J)Z

    move-result p1

    return p1
.end method
