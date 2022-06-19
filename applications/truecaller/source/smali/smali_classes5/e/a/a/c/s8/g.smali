.class public Le/a/a/c/s8/g;
.super Le/a/a/c/s8/o;
.source "SourceFile"


# instance fields
.field public b:Landroid/graphics/Paint;

.field public c:Landroid/graphics/Paint;

.field public d:F


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/a/a/c/s8/o;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/a/a/c/s8/g;->d:F

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Le/a/a/c/s8/g;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object v0, p0, Le/a/a/c/s8/g;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object v0, p0, Le/a/a/c/s8/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v0, p0, Le/a/a/c/s8/g;->b:Landroid/graphics/Paint;

    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Le/a/a/c/s8/g;->c:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    .line 9
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    iget-object v0, p0, Le/a/a/c/s8/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    iget-object v0, p0, Le/a/a/c/s8/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object p1, p0, Le/a/a/c/s8/g;->c:Landroid/graphics/Paint;

    const/16 v0, 0xbc

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;[BLandroid/graphics/Rect;)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Le/a/a/c/s8/o;->a:[F

    mul-int/lit8 v3, v1, 0x4

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v1

    mul-float/2addr v4, v5

    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v2, v3

    .line 3
    iget-object v2, p0, Le/a/a/c/s8/o;->a:[F

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    aget-byte v7, p2, v1

    add-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    int-to-float v7, v7

    .line 4
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    mul-float/2addr v8, v7

    const/high16 v7, 0x43000000    # 128.0f

    div-float/2addr v8, v7

    add-float/2addr v8, v5

    aput v8, v2, v4

    .line 5
    iget-object v2, p0, Le/a/a/c/s8/o;->a:[F

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    add-int/lit8 v1, v1, 0x1

    int-to-float v8, v1

    mul-float/2addr v5, v8

    array-length v8, p2

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float/2addr v5, v8

    aput v5, v2, v4

    .line 6
    iget-object v2, p0, Le/a/a/c/s8/o;->a:[F

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    aget-byte v5, p2, v1

    add-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    int-to-float v5, v5

    .line 7
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    mul-float/2addr v6, v5

    div-float/2addr v6, v7

    add-float/2addr v6, v4

    aput v6, v2, v3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 8
    :goto_1
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 9
    aget-byte v1, p2, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_1
    array-length p2, p2

    mul-int/lit16 p2, p2, 0x80

    int-to-float p2, p2

    div-float/2addr p3, p2

    .line 11
    iget p2, p0, Le/a/a/c/s8/g;->d:F

    cmpl-float v0, p3, p2

    if-lez v0, :cond_2

    .line 12
    iput p3, p0, Le/a/a/c/s8/g;->d:F

    .line 13
    iget-object p2, p0, Le/a/a/c/s8/o;->a:[F

    iget-object p3, p0, Le/a/a/c/s8/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    float-to-double p2, p2

    const-wide v0, 0x3fefae147ae147aeL    # 0.99

    mul-double/2addr p2, v0

    double-to-float p2, p2

    .line 14
    iput p2, p0, Le/a/a/c/s8/g;->d:F

    .line 15
    iget-object p2, p0, Le/a/a/c/s8/o;->a:[F

    iget-object p3, p0, Le/a/a/c/s8/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    :goto_2
    return-void
.end method
