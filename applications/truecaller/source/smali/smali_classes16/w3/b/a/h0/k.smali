.class public Lw3/b/a/h0/k;
.super Lw3/b/a/h0/l;
.source "SourceFile"


# instance fields
.field public final d:I

.field public final e:Lw3/b/a/j;


# direct methods
.method public constructor <init>(Lw3/b/a/d;Lw3/b/a/j;Lw3/b/a/j;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lw3/b/a/h0/l;-><init>(Lw3/b/a/d;Lw3/b/a/j;)V

    .line 2
    invoke-virtual {p3}, Lw3/b/a/j;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p3}, Lw3/b/a/j;->g()J

    move-result-wide p1

    .line 4
    iget-wide v0, p0, Lw3/b/a/h0/l;->b:J

    .line 5
    div-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lw3/b/a/h0/k;->d:I

    const/4 p2, 0x2

    if-lt p1, p2, :cond_0

    .line 6
    iput-object p3, p0, Lw3/b/a/h0/k;->e:Lw3/b/a/j;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The effective range must be at least 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Range duration field must be precise"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public C(JI)J
    .locals 4

    .line 1
    iget v0, p0, Lw3/b/a/h0/k;->d:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p3, v1, v0}, Ls1/a/a/a/v0/f/d;->Y3(Lw3/b/a/c;III)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lw3/b/a/h0/k;->c(J)I

    move-result v0

    sub-int/2addr p3, v0

    int-to-long v0, p3

    iget-wide v2, p0, Lw3/b/a/h0/l;->b:J

    mul-long/2addr v0, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public c(J)I
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1
    iget-wide v0, p0, Lw3/b/a/h0/l;->b:J

    .line 2
    div-long/2addr p1, v0

    iget v0, p0, Lw3/b/a/h0/k;->d:I

    int-to-long v0, v0

    rem-long/2addr p1, v0

    long-to-int p1, p1

    return p1

    .line 3
    :cond_0
    iget v0, p0, Lw3/b/a/h0/k;->d:I

    add-int/lit8 v1, v0, -0x1

    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    .line 4
    iget-wide v2, p0, Lw3/b/a/h0/l;->b:J

    .line 5
    div-long/2addr p1, v2

    int-to-long v2, v0

    rem-long/2addr p1, v2

    long-to-int p1, p1

    add-int/2addr v1, p1

    return v1
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lw3/b/a/h0/k;->d:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public v()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/k;->e:Lw3/b/a/j;

    return-object v0
.end method
