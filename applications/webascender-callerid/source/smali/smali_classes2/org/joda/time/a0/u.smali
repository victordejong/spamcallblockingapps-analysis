.class public final Lorg/joda/time/a0/u;
.super Lorg/joda/time/a0/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/joda/time/c;Lorg/joda/time/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/joda/time/a0/d;-><init>(Lorg/joda/time/c;Lorg/joda/time/d;)V

    .line 2
    invoke-virtual {p1}, Lorg/joda/time/c;->s()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrapped field\'s minumum value must be zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->A(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public B(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->B(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public C(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->C(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public D(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->D(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public E(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->E(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public F(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->F(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public G(JI)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/u;->o()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, p3, v1, v0}, Lorg/joda/time/a0/h;->i(Lorg/joda/time/c;III)V

    if-ne p3, v0, :cond_0

    const/4 p3, 0x0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

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

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/a0/u;->o()I

    move-result p1

    :cond_0
    return p1
.end method

.method public j(JJ)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->j(JJ)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->k(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public m()Lorg/joda/time/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/c;->m()Lorg/joda/time/h;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/c;->o()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public p(J)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->p(J)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public q(Lorg/joda/time/t;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->q(Lorg/joda/time/t;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public r(Lorg/joda/time/t;[I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->r(Lorg/joda/time/t;[I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public s()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public t(Lorg/joda/time/t;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public u(Lorg/joda/time/t;[I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public y(J)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->y(J)Z

    move-result p1

    return p1
.end method
