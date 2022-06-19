.class public final Le/g/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(DDD)V
    .locals 3

    cmpg-double v0, p0, p2

    if-ltz v0, :cond_0

    cmpl-double v0, p0, p4

    if-gtz v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Le/g/a/b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x2

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, p2

    const/4 p0, 0x0

    const-string p1, "The load factor should be in range [%.2f, %.2f]: %f"

    .line 2
    invoke-direct {v0, p1, p0, v1}, Le/g/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 3
    throw v0
.end method

.method public static b(ID)I
    .locals 3

    add-int/lit8 v0, p0, -0x1

    int-to-double v1, p0

    mul-double/2addr v1, p1

    .line 1
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static c(ID)I
    .locals 10

    if-ltz p0, :cond_2

    int-to-double v0, p0

    div-double/2addr v0, p1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    int-to-long v2, p0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    add-long/2addr v0, v3

    :cond_0
    const-wide/16 v5, 0x4

    sub-long/2addr v0, v3

    const/4 v2, 0x1

    shr-long v7, v0, v2

    or-long/2addr v0, v7

    const/4 v7, 0x2

    shr-long v8, v0, v7

    or-long/2addr v0, v8

    const/4 v8, 0x4

    shr-long v8, v0, v8

    or-long/2addr v0, v8

    const/16 v8, 0x8

    shr-long v8, v0, v8

    or-long/2addr v0, v8

    const/16 v8, 0x10

    shr-long v8, v0, v8

    or-long/2addr v0, v8

    const/16 v8, 0x20

    shr-long v8, v0, v8

    or-long/2addr v0, v8

    add-long/2addr v0, v3

    .line 2
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v3, 0x40000000

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1

    long-to-int p0, v0

    return p0

    .line 3
    :cond_1
    new-instance v0, Le/g/a/b;

    new-array v1, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    const-string p1, "Maximum array size exceeded for this load factor (elements: %d, load factor: %f)"

    .line 4
    invoke-direct {v0, p1, p0, v1}, Le/g/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 5
    throw v0

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of elements must be >= 0: "

    invoke-static {p2, p0}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static d(IID)I
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    shl-int/2addr p0, v1

    return p0

    .line 1
    :cond_0
    new-instance p0, Le/g/a/b;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x0

    const-string p2, "Maximum array size exceeded for this load factor (elements: %d, load factor: %f)"

    .line 2
    invoke-direct {p0, p2, p1, v0}, Le/g/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 3
    throw p0
.end method
