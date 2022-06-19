.class public Lw3/b/a/h0/j;
.super Lw3/b/a/h0/d;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Lw3/b/a/c;I)V
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lw3/b/a/c;->w()Lw3/b/a/d;

    move-result-object v0

    :goto_0
    move-object v3, v0

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lw3/b/a/h0/j;-><init>(Lw3/b/a/c;Lw3/b/a/d;III)V

    return-void
.end method

.method public constructor <init>(Lw3/b/a/c;Lw3/b/a/d;I)V
    .locals 6

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lw3/b/a/h0/j;-><init>(Lw3/b/a/c;Lw3/b/a/d;III)V

    return-void
.end method

.method public constructor <init>(Lw3/b/a/c;Lw3/b/a/d;III)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lw3/b/a/h0/d;-><init>(Lw3/b/a/c;Lw3/b/a/d;)V

    if-eqz p3, :cond_2

    .line 4
    iput p3, p0, Lw3/b/a/h0/j;->c:I

    .line 5
    invoke-virtual {p1}, Lw3/b/a/c;->s()I

    move-result p2

    add-int/2addr p2, p3

    if-ge p4, p2, :cond_0

    .line 6
    invoke-virtual {p1}, Lw3/b/a/c;->s()I

    move-result p2

    add-int/2addr p2, p3

    iput p2, p0, Lw3/b/a/h0/j;->d:I

    goto :goto_0

    .line 7
    :cond_0
    iput p4, p0, Lw3/b/a/h0/j;->d:I

    .line 8
    :goto_0
    invoke-virtual {p1}, Lw3/b/a/c;->o()I

    move-result p2

    add-int/2addr p2, p3

    if-le p5, p2, :cond_1

    .line 9
    invoke-virtual {p1}, Lw3/b/a/c;->o()I

    move-result p1

    add-int/2addr p1, p3

    iput p1, p0, Lw3/b/a/h0/j;->e:I

    goto :goto_1

    .line 10
    :cond_1
    iput p5, p0, Lw3/b/a/h0/j;->e:I

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
    iget v0, p0, Lw3/b/a/h0/j;->d:I

    iget v1, p0, Lw3/b/a/h0/j;->e:I

    invoke-static {p0, p3, v0, v1}, Ls1/a/a/a/v0/f/d;->Y3(Lw3/b/a/c;III)V

    .line 2
    iget v0, p0, Lw3/b/a/h0/j;->c:I

    sub-int/2addr p3, v0

    invoke-super {p0, p1, p2, p3}, Lw3/b/a/h0/d;->C(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)J
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lw3/b/a/h0/b;->a(JI)J

    move-result-wide p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lw3/b/a/h0/j;->c(J)I

    move-result p3

    iget v0, p0, Lw3/b/a/h0/j;->d:I

    iget v1, p0, Lw3/b/a/h0/j;->e:I

    invoke-static {p0, p3, v0, v1}, Ls1/a/a/a/v0/f/d;->Y3(Lw3/b/a/c;III)V

    return-wide p1
.end method

.method public b(JJ)J
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lw3/b/a/h0/b;->b(JJ)J

    move-result-wide p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lw3/b/a/h0/j;->c(J)I

    move-result p3

    iget p4, p0, Lw3/b/a/h0/j;->d:I

    iget v0, p0, Lw3/b/a/h0/j;->e:I

    invoke-static {p0, p3, p4, v0}, Ls1/a/a/a/v0/f/d;->Y3(Lw3/b/a/c;III)V

    return-wide p1
.end method

.method public c(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->c(J)I

    move-result p1

    .line 2
    iget p2, p0, Lw3/b/a/h0/j;->c:I

    add-int/2addr p1, p2

    return p1
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
    iget v0, p0, Lw3/b/a/h0/j;->e:I

    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lw3/b/a/h0/j;->d:I

    return v0
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
