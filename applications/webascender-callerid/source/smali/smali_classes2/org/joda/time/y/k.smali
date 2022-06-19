.class Lorg/joda/time/y/k;
.super Lorg/joda/time/a0/i;
.source "SourceFile"


# instance fields
.field protected final d:Lorg/joda/time/y/c;


# direct methods
.method constructor <init>(Lorg/joda/time/y/c;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/joda/time/d;->U()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/y/c;->b0()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/a0/i;-><init>(Lorg/joda/time/d;J)V

    .line 2
    iput-object p1, p0, Lorg/joda/time/y/k;->d:Lorg/joda/time/y/c;

    return-void
.end method


# virtual methods
.method public A(J)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/k;->C(J)J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public B(J)J
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/k;->c(J)I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/joda/time/y/k;->d:Lorg/joda/time/y/c;

    invoke-virtual {v1, v0}, Lorg/joda/time/y/c;->J0(I)J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    .line 3
    iget-object p1, p0, Lorg/joda/time/y/k;->d:Lorg/joda/time/y/c;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/joda/time/y/c;->J0(I)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public C(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/k;->d:Lorg/joda/time/y/c;

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/k;->c(J)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/joda/time/y/c;->J0(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public G(JI)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/k;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0}, Lorg/joda/time/y/c;->x0()I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/y/k;->d:Lorg/joda/time/y/c;

    invoke-virtual {v1}, Lorg/joda/time/y/c;->v0()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/a0/h;->i(Lorg/joda/time/c;III)V

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/k;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/y/c;->O0(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public I(JI)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/k;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0}, Lorg/joda/time/y/c;->x0()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/joda/time/y/k;->d:Lorg/joda/time/y/c;

    invoke-virtual {v1}, Lorg/joda/time/y/c;->v0()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/a0/h;->i(Lorg/joda/time/c;III)V

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/k;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/y/c;->O0(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)J
    .locals 1

    if-nez p3, :cond_0

    return-wide p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/k;->c(J)I

    move-result v0

    .line 2
    invoke-static {v0, p3}, Lorg/joda/time/a0/h;->b(II)I

    move-result p3

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/y/k;->G(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 0

    .line 1
    invoke-static {p3, p4}, Lorg/joda/time/a0/h;->h(J)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/y/k;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/k;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/y/c;->G0(J)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 1

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/k;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0, p3, p4, p1, p2}, Lorg/joda/time/y/c;->H0(JJ)J

    move-result-wide p1

    neg-long p1, p1

    return-wide p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/joda/time/y/k;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/y/c;->H0(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public m()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/k;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0}, Lorg/joda/time/y/a;->h()Lorg/joda/time/h;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/k;->d:Lorg/joda/time/y/c;

    invoke-virtual {v0}, Lorg/joda/time/y/c;->v0()I

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/k;->d:Lorg/joda/time/y/c;

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
    iget-object v0, p0, Lorg/joda/time/y/k;->d:Lorg/joda/time/y/c;

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/k;->c(J)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/joda/time/y/c;->N0(I)Z

    move-result p1

    return p1
.end method
