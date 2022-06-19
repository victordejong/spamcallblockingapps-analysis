.class public Lorg/joda/time/a0/k;
.super Lorg/joda/time/a0/d;
.source "SourceFile"


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Lorg/joda/time/c;I)V
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/c;->x()Lorg/joda/time/d;

    move-result-object v0

    :goto_0
    move-object v3, v0

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/a0/k;-><init>(Lorg/joda/time/c;Lorg/joda/time/d;III)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/c;Lorg/joda/time/d;I)V
    .locals 6

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/a0/k;-><init>(Lorg/joda/time/c;Lorg/joda/time/d;III)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/c;Lorg/joda/time/d;III)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/joda/time/a0/d;-><init>(Lorg/joda/time/c;Lorg/joda/time/d;)V

    if-eqz p3, :cond_2

    .line 4
    iput p3, p0, Lorg/joda/time/a0/k;->c:I

    .line 5
    invoke-virtual {p1}, Lorg/joda/time/c;->s()I

    move-result p2

    add-int/2addr p2, p3

    if-ge p4, p2, :cond_0

    .line 6
    invoke-virtual {p1}, Lorg/joda/time/c;->s()I

    move-result p2

    add-int/2addr p2, p3

    iput p2, p0, Lorg/joda/time/a0/k;->d:I

    goto :goto_0

    .line 7
    :cond_0
    iput p4, p0, Lorg/joda/time/a0/k;->d:I

    .line 8
    :goto_0
    invoke-virtual {p1}, Lorg/joda/time/c;->o()I

    move-result p2

    add-int/2addr p2, p3

    if-le p5, p2, :cond_1

    .line 9
    invoke-virtual {p1}, Lorg/joda/time/c;->o()I

    move-result p1

    add-int/2addr p1, p3

    iput p1, p0, Lorg/joda/time/a0/k;->e:I

    goto :goto_1

    .line 10
    :cond_1
    iput p5, p0, Lorg/joda/time/a0/k;->e:I

    :goto_1
    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The offset cannot be zero"

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
    iget v0, p0, Lorg/joda/time/a0/k;->d:I

    iget v1, p0, Lorg/joda/time/a0/k;->e:I

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/a0/h;->i(Lorg/joda/time/c;III)V

    .line 2
    iget v0, p0, Lorg/joda/time/a0/k;->c:I

    sub-int/2addr p3, v0

    invoke-super {p0, p1, p2, p3}, Lorg/joda/time/a0/d;->G(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)J
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/joda/time/a0/b;->a(JI)J

    move-result-wide p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/a0/k;->c(J)I

    move-result p3

    iget v0, p0, Lorg/joda/time/a0/k;->d:I

    iget v1, p0, Lorg/joda/time/a0/k;->e:I

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/a0/h;->i(Lorg/joda/time/c;III)V

    return-wide p1
.end method

.method public b(JJ)J
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/joda/time/a0/b;->b(JJ)J

    move-result-wide p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/a0/k;->c(J)I

    move-result p3

    iget p4, p0, Lorg/joda/time/a0/k;->d:I

    iget v0, p0, Lorg/joda/time/a0/k;->e:I

    invoke-static {p0, p3, p4, v0}, Lorg/joda/time/a0/h;->i(Lorg/joda/time/c;III)V

    return-wide p1
.end method

.method public c(J)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/joda/time/a0/d;->c(J)I

    move-result p1

    iget p2, p0, Lorg/joda/time/a0/k;->c:I

    add-int/2addr p1, p2

    return p1
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
    iget v0, p0, Lorg/joda/time/a0/k;->e:I

    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/joda/time/a0/k;->d:I

    return v0
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
