.class public Lorg/joda/time/a0/o;
.super Lorg/joda/time/a0/d;
.source "SourceFile"


# instance fields
.field final c:I

.field final d:Lorg/joda/time/h;

.field final e:Lorg/joda/time/h;


# direct methods
.method public constructor <init>(Lorg/joda/time/a0/g;)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Lorg/joda/time/a0/b;->x()Lorg/joda/time/d;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/a0/o;-><init>(Lorg/joda/time/a0/g;Lorg/joda/time/d;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/a0/g;Lorg/joda/time/d;)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/joda/time/a0/o;-><init>(Lorg/joda/time/a0/g;Lorg/joda/time/h;Lorg/joda/time/d;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/a0/g;Lorg/joda/time/h;Lorg/joda/time/d;)V
    .locals 1

    .line 8
    invoke-virtual {p1}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/joda/time/a0/d;-><init>(Lorg/joda/time/c;Lorg/joda/time/d;)V

    .line 9
    iget p3, p1, Lorg/joda/time/a0/g;->c:I

    iput p3, p0, Lorg/joda/time/a0/o;->c:I

    .line 10
    iput-object p2, p0, Lorg/joda/time/a0/o;->d:Lorg/joda/time/h;

    .line 11
    iget-object p1, p1, Lorg/joda/time/a0/g;->d:Lorg/joda/time/h;

    iput-object p1, p0, Lorg/joda/time/a0/o;->e:Lorg/joda/time/h;

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/c;Lorg/joda/time/h;Lorg/joda/time/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lorg/joda/time/a0/d;-><init>(Lorg/joda/time/c;Lorg/joda/time/d;)V

    const/4 p3, 0x2

    if-lt p4, p3, :cond_0

    .line 2
    iput-object p2, p0, Lorg/joda/time/a0/o;->e:Lorg/joda/time/h;

    .line 3
    invoke-virtual {p1}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/a0/o;->d:Lorg/joda/time/h;

    .line 4
    iput p4, p0, Lorg/joda/time/a0/o;->c:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The divisor must be at least 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private N(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lorg/joda/time/a0/o;->c:I

    div-int/2addr p1, v0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 2
    iget v0, p0, Lorg/joda/time/a0/o;->c:I

    div-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1
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
    .locals 3

    .line 1
    iget v0, p0, Lorg/joda/time/a0/o;->c:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p3, v1, v0}, Lorg/joda/time/a0/h;->i(Lorg/joda/time/c;III)V

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->c(J)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/joda/time/a0/o;->N(I)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v1

    iget v2, p0, Lorg/joda/time/a0/o;->c:I

    mul-int v0, v0, v2

    add-int/2addr v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/c;->G(JI)J

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

    if-ltz p1, :cond_0

    .line 2
    iget p2, p0, Lorg/joda/time/a0/o;->c:I

    rem-int/2addr p1, p2

    return p1

    .line 3
    :cond_0
    iget p2, p0, Lorg/joda/time/a0/o;->c:I

    add-int/lit8 v0, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, p2

    add-int/2addr v0, p1

    return v0
.end method

.method public l()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/o;->d:Lorg/joda/time/h;

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/joda/time/a0/o;->c:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public s()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public w()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/o;->e:Lorg/joda/time/h;

    return-object v0
.end method
