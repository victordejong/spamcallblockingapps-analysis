.class public Le/k/a/c/k0/n;
.super Le/k/a/c/k0/r;
.source "SourceFile"


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/k0/r;-><init>()V

    iput-wide p1, p0, Le/k/a/c/k0/n;->a:J

    return-void
.end method


# virtual methods
.method public D()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public E()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public K()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/k/a/c/k0/n;->a:J

    return-wide v0
.end method

.method public a()Le/k/a/b/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/m;->q:Le/k/a/b/m;

    return-object v0
.end method

.method public final c(Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Le/k/a/c/k0/n;->a:J

    invoke-virtual {p1, v0, v1}, Le/k/a/b/g;->K0(J)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Le/k/a/c/k0/n;

    if-eqz v2, :cond_3

    .line 2
    check-cast p1, Le/k/a/c/k0/n;

    iget-wide v2, p1, Le/k/a/c/k0/n;->a:J

    iget-wide v4, p0, Le/k/a/c/k0/n;->a:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    return v1
.end method

.method public f(Z)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Le/k/a/c/k0/n;->a:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Le/k/a/c/k0/n;->a:J

    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v0, v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Le/k/a/c/k0/n;->a:J

    .line 2
    sget-object v2, Le/k/a/b/w/g;->a:Ljava/lang/String;

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    long-to-int v0, v0

    .line 3
    invoke-static {v0}, Le/k/a/b/w/g;->m(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public o()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Le/k/a/c/k0/n;->a:J

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()D
    .locals 2

    .line 1
    iget-wide v0, p0, Le/k/a/c/k0/n;->a:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public x()I
    .locals 2

    .line 1
    iget-wide v0, p0, Le/k/a/c/k0/n;->a:J

    long-to-int v0, v0

    return v0
.end method
