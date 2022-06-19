.class public final Le/b/a/b0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/graphics/PathMeasure;

.field public static final b:Landroid/graphics/Path;

.field public static final c:Landroid/graphics/Path;

.field public static final d:[F

.field public static final e:F

.field public static f:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, Le/b/a/b0/e;->a:Landroid/graphics/PathMeasure;

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Le/b/a/b0/e;->b:Landroid/graphics/Path;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Le/b/a/b0/e;->c:Landroid/graphics/Path;

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 4
    sput-object v0, Le/b/a/b0/e;->d:[F

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Le/b/a/b0/e;->e:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    sput v0, Le/b/a/b0/e;->f:F

    return-void
.end method

.method public static a(Landroid/graphics/Path;FFF)V
    .locals 8

    .line 1
    sget-object v0, Le/b/a/c;->a:Ljava/util/Set;

    .line 2
    sget-object v0, Le/b/a/b0/e;->a:Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 3
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    const-string v4, "applyTrimPathIfNeeded"

    const/4 v5, 0x0

    if-nez v3, :cond_0

    cmpl-float v3, p2, v5

    if-nez v3, :cond_0

    .line 4
    invoke-static {v4}, Le/b/a/c;->a(Ljava/lang/String;)F

    return-void

    :cond_0
    cmpg-float v3, v1, v2

    if-ltz v3, :cond_9

    sub-float v3, p2, p1

    sub-float/2addr v3, v2

    .line 5
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, v2, v6

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    mul-float/2addr p1, v1

    mul-float/2addr p2, v1

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float/2addr p3, v1

    add-float/2addr v2, p3

    add-float/2addr p1, p3

    cmpl-float p2, v2, v1

    if-ltz p2, :cond_2

    cmpl-float p2, p1, v1

    if-ltz p2, :cond_2

    .line 8
    invoke-static {v2, v1}, Le/b/a/b0/d;->d(FF)I

    move-result p2

    int-to-float v2, p2

    .line 9
    invoke-static {p1, v1}, Le/b/a/b0/d;->d(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_2
    cmpg-float p2, v2, v5

    if-gez p2, :cond_3

    .line 10
    invoke-static {v2, v1}, Le/b/a/b0/d;->d(FF)I

    move-result p2

    int-to-float v2, p2

    :cond_3
    cmpg-float p2, p1, v5

    if-gez p2, :cond_4

    .line 11
    invoke-static {p1, v1}, Le/b/a/b0/d;->d(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_4
    cmpl-float p2, v2, p1

    if-nez p2, :cond_5

    .line 12
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 13
    invoke-static {v4}, Le/b/a/c;->a(Ljava/lang/String;)F

    return-void

    :cond_5
    if-ltz p2, :cond_6

    sub-float/2addr v2, v1

    .line 14
    :cond_6
    sget-object p2, Le/b/a/b0/e;->b:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x1

    .line 15
    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    cmpl-float v3, p1, v1

    if-lez v3, :cond_7

    .line 16
    sget-object v2, Le/b/a/b0/e;->c:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    rem-float/2addr p1, v1

    .line 17
    invoke-virtual {v0, v5, p1, v2, p3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 18
    invoke-virtual {p2, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0

    :cond_7
    cmpg-float p1, v2, v5

    if-gez p1, :cond_8

    .line 19
    sget-object p1, Le/b/a/b0/e;->c:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    add-float/2addr v2, v1

    .line 20
    invoke-virtual {v0, v2, v1, p1, p3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 21
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 22
    :cond_8
    :goto_0
    invoke-virtual {p0, p2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 23
    invoke-static {v4}, Le/b/a/c;->a(Ljava/lang/String;)F

    return-void

    .line 24
    :cond_9
    :goto_1
    invoke-static {v4}, Le/b/a/c;->a(Ljava/lang/String;)F

    return-void
.end method

.method public static b(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static c()F
    .locals 2

    .line 1
    sget v0, Le/b/a/b0/e;->f:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Le/b/a/b0/e;->f:F

    .line 3
    :cond_0
    sget v0, Le/b/a/b0/e;->f:F

    return v0
.end method

.method public static d(Landroid/graphics/Matrix;)F
    .locals 6

    .line 1
    sget-object v0, Le/b/a/b0/e;->d:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    .line 2
    aput v2, v0, v3

    .line 3
    sget v2, Le/b/a/b0/e;->e:F

    const/4 v4, 0x2

    aput v2, v0, v4

    const/4 v5, 0x3

    .line 4
    aput v2, v0, v5

    .line 5
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 6
    aget p0, v0, v4

    aget v1, v0, v1

    sub-float/2addr p0, v1

    .line 7
    aget v1, v0, v5

    aget v0, v0, v3

    sub-float/2addr v1, v0

    float-to-double v2, p0

    float-to-double v0, v1

    .line 8
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0
.end method
