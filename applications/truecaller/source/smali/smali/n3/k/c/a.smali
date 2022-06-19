.class public final Ln3/k/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ln3/k/c/a;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(III[F)V
    .locals 7

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    int-to-float p1, p1

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v2, v0, v1

    add-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v1, v0, v1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-nez v1, :cond_0

    move p1, v6

    move v2, p1

    goto :goto_1

    :cond_0
    cmpl-float v1, v0, p0

    if-nez v1, :cond_1

    sub-float/2addr p1, p2

    div-float/2addr p1, v2

    const/high16 p0, 0x40c00000    # 6.0f

    rem-float/2addr p1, p0

    goto :goto_0

    :cond_1
    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    sub-float/2addr p2, p0

    div-float/2addr p2, v2

    add-float p1, p2, v4

    goto :goto_0

    :cond_2
    sub-float/2addr p0, p1

    div-float/2addr p0, v2

    const/high16 p1, 0x40800000    # 4.0f

    add-float/2addr p1, p0

    :goto_0
    mul-float/2addr v4, v3

    sub-float/2addr v4, v5

    .line 3
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float p0, v5, p0

    div-float/2addr v2, p0

    :goto_1
    const/high16 p0, 0x42700000    # 60.0f

    mul-float/2addr p1, p0

    const/high16 p0, 0x43b40000    # 360.0f

    rem-float/2addr p1, p0

    cmpg-float p2, p1, v6

    if-gez p2, :cond_3

    add-float/2addr p1, p0

    :cond_3
    const/4 p2, 0x0

    .line 4
    invoke-static {p1, v6, p0}, Ln3/k/c/a;->i(FFF)F

    move-result p0

    aput p0, p3, p2

    const/4 p0, 0x1

    .line 5
    invoke-static {v2, v6, v5}, Ln3/k/c/a;->i(FFF)F

    move-result p1

    aput p1, p3, p0

    const/4 p0, 0x2

    .line 6
    invoke-static {v3, v6, v5}, Ln3/k/c/a;->i(FFF)F

    move-result p1

    aput p1, p3, p0

    return-void
.end method

.method public static b(III[D)V
    .locals 16

    move-object/from16 v0, p3

    .line 1
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    move/from16 v1, p0

    int-to-double v1, v1

    const-wide v3, 0x406fe00000000000L    # 255.0

    div-double/2addr v1, v3

    const-wide v5, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v7, v1, v5

    const-wide v8, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v10, 0x4003333333333333L    # 2.4

    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v14, 0x3fac28f5c28f5c29L    # 0.055

    if-gez v7, :cond_0

    div-double/2addr v1, v8

    goto :goto_0

    :cond_0
    add-double/2addr v1, v14

    div-double/2addr v1, v12

    .line 2
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    :goto_0
    move/from16 v7, p1

    int-to-double v10, v7

    div-double/2addr v10, v3

    cmpg-double v7, v10, v5

    if-gez v7, :cond_1

    div-double/2addr v10, v8

    goto :goto_1

    :cond_1
    add-double/2addr v10, v14

    div-double/2addr v10, v12

    const-wide v12, 0x4003333333333333L    # 2.4

    .line 3
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    :goto_1
    move/from16 v7, p2

    int-to-double v12, v7

    div-double/2addr v12, v3

    cmpg-double v3, v12, v5

    if-gez v3, :cond_2

    div-double/2addr v12, v8

    goto :goto_2

    :cond_2
    add-double/2addr v12, v14

    const-wide v3, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v12, v3

    const-wide v3, 0x4003333333333333L    # 2.4

    .line 4
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    :goto_2
    const/4 v3, 0x0

    const-wide v4, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v4, v1

    const-wide v6, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double/2addr v6, v10

    add-double/2addr v6, v4

    const-wide v4, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v4, v12

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    .line 5
    aput-wide v4, v0, v3

    const/4 v3, 0x1

    const-wide v4, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v4, v1

    const-wide v8, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v8, v10

    add-double/2addr v8, v4

    const-wide v4, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v4, v12

    add-double/2addr v4, v8

    mul-double/2addr v4, v6

    .line 6
    aput-wide v4, v0, v3

    const/4 v3, 0x2

    const-wide v4, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v1, v4

    const-wide v4, 0x3fbe83e425aee632L    # 0.1192

    mul-double/2addr v10, v4

    add-double/2addr v10, v1

    const-wide v1, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v12, v1

    add-double/2addr v12, v10

    mul-double/2addr v12, v6

    .line 7
    aput-wide v12, v0, v3

    return-void

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outXyz must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(II)D
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 3
    invoke-static {p0, p1}, Ln3/k/c/a;->g(II)I

    move-result p0

    .line 4
    :cond_0
    invoke-static {p0}, Ln3/k/c/a;->d(I)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    .line 5
    invoke-static {p1}, Ln3/k/c/a;->d(I)D

    move-result-wide p0

    add-double/2addr p0, v2

    .line 6
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    div-double/2addr v2, p0

    return-wide v2

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "background can not be translucent: #"

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    invoke-static {p1, v0}, Le/d/c/a/a;->S1(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(I)D
    .locals 4

    .line 1
    sget-object v0, Ln3/k/c/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [D

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v2, p0, v1}, Ln3/k/c/a;->b(III[D)V

    const/4 p0, 0x1

    .line 4
    aget-wide v0, v1, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static e(IIF)I
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_3

    .line 2
    invoke-static {p0, v1}, Ln3/k/c/a;->l(II)I

    move-result v0

    .line 3
    invoke-static {v0, p1}, Ln3/k/c/a;->c(II)D

    move-result-wide v2

    float-to-double v4, p2

    cmpg-double p2, v2, v4

    if-gez p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p2, 0x0

    move v0, p2

    :goto_0
    const/16 v2, 0xa

    if-gt p2, v2, :cond_2

    sub-int v2, v1, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    add-int v2, v0, v1

    .line 4
    div-int/lit8 v2, v2, 0x2

    .line 5
    invoke-static {p0, v2}, Ln3/k/c/a;->l(II)I

    move-result v3

    .line 6
    invoke-static {v3, p1}, Ln3/k/c/a;->c(II)D

    move-result-wide v6

    cmpg-double v3, v6, v4

    if-gez v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v1

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "background can not be translucent: #"

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 8
    invoke-static {p1, p2}, Le/d/c/a/a;->S1(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(I[D)V
    .locals 14

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 2
    invoke-static {v0, v1, p0, p1}, Ln3/k/c/a;->b(III[D)V

    const/4 p0, 0x0

    .line 3
    aget-wide v0, p1, p0

    const/4 v2, 0x1

    aget-wide v3, p1, v2

    const/4 v5, 0x2

    aget-wide v6, p1, v5

    .line 4
    array-length v8, p1

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    const-wide v8, 0x4057c3020c49ba5eL    # 95.047

    div-double/2addr v0, v8

    .line 5
    invoke-static {v0, v1}, Ln3/k/c/a;->k(D)D

    move-result-wide v0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v8

    .line 6
    invoke-static {v3, v4}, Ln3/k/c/a;->k(D)D

    move-result-wide v3

    const-wide v8, 0x405b3883126e978dL    # 108.883

    div-double/2addr v6, v8

    .line 7
    invoke-static {v6, v7}, Ln3/k/c/a;->k(D)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x405d000000000000L    # 116.0

    mul-double/2addr v10, v3

    const-wide/high16 v12, 0x4030000000000000L    # 16.0

    sub-double/2addr v10, v12

    .line 8
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    aput-wide v8, p1, p0

    const-wide v8, 0x407f400000000000L    # 500.0

    sub-double/2addr v0, v3

    mul-double/2addr v0, v8

    .line 9
    aput-wide v0, p1, v2

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    sub-double/2addr v3, v6

    mul-double/2addr v3, v0

    .line 10
    aput-wide v3, p1, v5

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "outLab must have a length of 3."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(II)I
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    rsub-int v2, v0, 0xff

    rsub-int v3, v1, 0xff

    mul-int/2addr v3, v2

    .line 3
    div-int/lit16 v3, v3, 0xff

    rsub-int v2, v3, 0xff

    .line 4
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 6
    invoke-static {v3, v1, v4, v0, v2}, Ln3/k/c/a;->h(IIIII)I

    move-result v3

    .line 7
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 8
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 9
    invoke-static {v4, v1, v5, v0, v2}, Ln3/k/c/a;->h(IIIII)I

    move-result v4

    .line 10
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 11
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 12
    invoke-static {p0, v1, p1, v0, v2}, Ln3/k/c/a;->h(IIIII)I

    move-result p0

    .line 13
    invoke-static {v2, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static h(IIIII)I
    .locals 0

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    mul-int/lit16 p0, p0, 0xff

    mul-int/2addr p0, p1

    mul-int/2addr p2, p3

    const/16 p3, 0xff

    invoke-static {p3, p1, p2, p0}, Le/d/c/a/a;->y1(IIII)I

    move-result p0

    mul-int/lit16 p4, p4, 0xff

    .line 1
    div-int/2addr p0, p4

    return p0
.end method

.method public static i(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static j(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static k(D)D
    .locals 2

    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    .line 1
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x408c3a6666666666L    # 903.3

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    div-double/2addr p0, v0

    :goto_0
    return-wide p0
.end method

.method public static l(II)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
