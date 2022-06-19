.class public Le/k/a/c/k0/h;
.super Le/k/a/c/k0/r;
.source "SourceFile"


# instance fields
.field public final a:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/k0/r;-><init>()V

    iput-wide p1, p0, Le/k/a/c/k0/h;->a:D

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public K()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/k/a/c/k0/h;->a:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public a()Le/k/a/b/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/m;->r:Le/k/a/b/m;

    return-object v0
.end method

.method public final c(Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Le/k/a/c/k0/h;->a:D

    invoke-virtual {p1, v0, v1}, Le/k/a/b/g;->F0(D)V

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
    instance-of v2, p1, Le/k/a/c/k0/h;

    if-eqz v2, :cond_3

    .line 2
    check-cast p1, Le/k/a/c/k0/h;

    iget-wide v2, p1, Le/k/a/c/k0/h;->a:D

    .line 3
    iget-wide v4, p0, Le/k/a/c/k0/h;->a:D

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Le/k/a/c/k0/h;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v0, v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Le/k/a/c/k0/h;->a:D

    .line 2
    sget-object v2, Le/k/a/b/w/g;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Le/k/a/c/k0/h;->a:D

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Le/k/a/c/k0/h;->a:D

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()D
    .locals 2

    .line 1
    iget-wide v0, p0, Le/k/a/c/k0/h;->a:D

    return-wide v0
.end method

.method public x()I
    .locals 2

    .line 1
    iget-wide v0, p0, Le/k/a/c/k0/h;->a:D

    double-to-int v0, v0

    return v0
.end method
