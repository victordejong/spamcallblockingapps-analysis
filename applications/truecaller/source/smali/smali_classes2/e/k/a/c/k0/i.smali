.class public Le/k/a/c/k0/i;
.super Le/k/a/c/k0/r;
.source "SourceFile"


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/k0/r;-><init>()V

    iput p1, p0, Le/k/a/c/k0/i;->a:F

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public K()J
    .locals 2

    .line 1
    iget v0, p0, Le/k/a/c/k0/i;->a:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public a()Le/k/a/b/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/m;->r:Le/k/a/b/m;

    return-object v0
.end method

.method public final c(Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget p2, p0, Le/k/a/c/k0/i;->a:F

    invoke-virtual {p1, p2}, Le/k/a/b/g;->G0(F)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Le/k/a/c/k0/i;

    if-eqz v2, :cond_3

    .line 2
    check-cast p1, Le/k/a/c/k0/i;

    iget p1, p1, Le/k/a/c/k0/i;->a:F

    .line 3
    iget v2, p0, Le/k/a/c/k0/i;->a:F

    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

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
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/k0/i;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Le/k/a/c/k0/i;->a:F

    .line 2
    sget-object v1, Le/k/a/b/w/g;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 2

    .line 1
    iget v0, p0, Le/k/a/c/k0/i;->a:F

    const/high16 v1, -0x31000000

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x4f000000

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 2

    .line 1
    iget v0, p0, Le/k/a/c/k0/i;->a:F

    const/high16 v1, -0x21000000

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x5f000000

    cmpg-float v0, v0, v1

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
    iget v0, p0, Le/k/a/c/k0/i;->a:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/k0/i;->a:F

    float-to-int v0, v0

    return v0
.end method
