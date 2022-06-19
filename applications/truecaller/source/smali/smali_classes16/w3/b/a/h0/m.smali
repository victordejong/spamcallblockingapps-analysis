.class public Lw3/b/a/h0/m;
.super Lw3/b/a/h0/c;
.source "SourceFile"


# instance fields
.field public final b:J


# direct methods
.method public constructor <init>(Lw3/b/a/k;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lw3/b/a/h0/c;-><init>(Lw3/b/a/k;)V

    .line 2
    iput-wide p2, p0, Lw3/b/a/h0/m;->b:J

    return-void
.end method


# virtual methods
.method public a(JI)J
    .locals 4

    int-to-long v0, p3

    .line 1
    iget-wide v2, p0, Lw3/b/a/h0/m;->b:J

    mul-long/2addr v0, v2

    .line 2
    invoke-static {p1, p2, v0, v1}, Ls1/a/a/a/v0/f/d;->d3(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(JJ)J
    .locals 9

    .line 1
    iget-wide v0, p0, Lw3/b/a/h0/m;->b:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    cmp-long v2, p3, v2

    if-nez v2, :cond_1

    move-wide p3, v0

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-eqz v4, :cond_5

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    mul-long v2, p3, v0

    .line 2
    div-long v4, v2, v0

    cmp-long v4, v4, p3

    if-nez v4, :cond_4

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, p3, v4

    const-wide/16 v7, -0x1

    if-nez v6, :cond_3

    cmp-long v6, v0, v7

    if-eqz v6, :cond_4

    :cond_3
    cmp-long v4, v0, v4

    if-nez v4, :cond_5

    cmp-long v4, p3, v7

    if-eqz v4, :cond_4

    goto :goto_0

    .line 3
    :cond_4
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Multiplication overflows a long: "

    const-string v2, " * "

    invoke-static {p2, p3, p4, v2}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    move-wide p3, v2

    .line 4
    :goto_1
    invoke-static {p1, p2, p3, p4}, Ls1/a/a/a/v0/f/d;->d3(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public e(JJ)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Ls1/a/a/a/v0/f/d;->f3(JJ)J

    move-result-wide p1

    .line 2
    iget-wide p3, p0, Lw3/b/a/h0/m;->b:J

    div-long/2addr p1, p3

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lw3/b/a/h0/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lw3/b/a/h0/m;

    .line 3
    iget-object v1, p0, Lw3/b/a/h0/c;->a:Lw3/b/a/k;

    iget-object v3, p1, Lw3/b/a/h0/c;->a:Lw3/b/a/k;

    if-ne v1, v3, :cond_1

    .line 4
    iget-wide v3, p0, Lw3/b/a/h0/m;->b:J

    iget-wide v5, p1, Lw3/b/a/h0/m;->b:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lw3/b/a/h0/m;->b:J

    return-wide v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lw3/b/a/h0/m;->b:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 2
    iget-object v1, p0, Lw3/b/a/h0/c;->a:Lw3/b/a/k;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
