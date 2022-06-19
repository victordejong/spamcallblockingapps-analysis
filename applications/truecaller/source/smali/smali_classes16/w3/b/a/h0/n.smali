.class public Lw3/b/a/h0/n;
.super Lw3/b/a/h0/d;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final d:Lw3/b/a/j;

.field public final e:Lw3/b/a/j;


# direct methods
.method public constructor <init>(Lw3/b/a/c;Lw3/b/a/j;Lw3/b/a/d;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p3}, Lw3/b/a/h0/d;-><init>(Lw3/b/a/c;Lw3/b/a/d;)V

    const/4 p3, 0x2

    if-lt p4, p3, :cond_0

    .line 14
    iput-object p2, p0, Lw3/b/a/h0/n;->e:Lw3/b/a/j;

    .line 15
    invoke-virtual {p1}, Lw3/b/a/c;->l()Lw3/b/a/j;

    move-result-object p1

    iput-object p1, p0, Lw3/b/a/h0/n;->d:Lw3/b/a/j;

    .line 16
    iput p4, p0, Lw3/b/a/h0/n;->c:I

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The divisor must be at least 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lw3/b/a/h0/g;Lw3/b/a/d;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/c;->l()Lw3/b/a/j;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 4
    invoke-direct {p0, v1, p2}, Lw3/b/a/h0/d;-><init>(Lw3/b/a/c;Lw3/b/a/d;)V

    .line 5
    iget p2, p1, Lw3/b/a/h0/g;->c:I

    iput p2, p0, Lw3/b/a/h0/n;->c:I

    .line 6
    iput-object v0, p0, Lw3/b/a/h0/n;->d:Lw3/b/a/j;

    .line 7
    iget-object p1, p1, Lw3/b/a/h0/g;->d:Lw3/b/a/j;

    iput-object p1, p0, Lw3/b/a/h0/n;->e:Lw3/b/a/j;

    return-void
.end method

.method public constructor <init>(Lw3/b/a/h0/g;Lw3/b/a/j;Lw3/b/a/d;)V
    .locals 1

    .line 8
    iget-object v0, p1, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 9
    invoke-direct {p0, v0, p3}, Lw3/b/a/h0/d;-><init>(Lw3/b/a/c;Lw3/b/a/d;)V

    .line 10
    iget p3, p1, Lw3/b/a/h0/g;->c:I

    iput p3, p0, Lw3/b/a/h0/n;->c:I

    .line 11
    iput-object p2, p0, Lw3/b/a/h0/n;->d:Lw3/b/a/j;

    .line 12
    iget-object p1, p1, Lw3/b/a/h0/g;->d:Lw3/b/a/j;

    iput-object p1, p0, Lw3/b/a/h0/n;->e:Lw3/b/a/j;

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
    .locals 3

    .line 1
    iget v0, p0, Lw3/b/a/h0/n;->c:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p3, v1, v0}, Ls1/a/a/a/v0/f/d;->Y3(Lw3/b/a/c;III)V

    .line 2
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 3
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->c(J)I

    move-result v0

    if-ltz v0, :cond_0

    .line 4
    iget v1, p0, Lw3/b/a/h0/n;->c:I

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 5
    iget v1, p0, Lw3/b/a/h0/n;->c:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 6
    :goto_0
    iget-object v1, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 7
    iget v2, p0, Lw3/b/a/h0/n;->c:I

    mul-int/2addr v0, v2

    add-int/2addr v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lw3/b/a/c;->C(JI)J

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

    if-ltz p1, :cond_0

    .line 3
    iget p2, p0, Lw3/b/a/h0/n;->c:I

    rem-int/2addr p1, p2

    return p1

    .line 4
    :cond_0
    iget p2, p0, Lw3/b/a/h0/n;->c:I

    add-int/lit8 v0, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, p2

    add-int/2addr p1, v0

    return p1
.end method

.method public l()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/n;->d:Lw3/b/a/j;

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lw3/b/a/h0/n;->c:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public s()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public v()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/n;->e:Lw3/b/a/j;

    return-object v0
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
