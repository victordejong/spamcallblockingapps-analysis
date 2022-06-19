.class public Le/m/a/g/u/o$b;
.super Le/m/a/g/u/o$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/u/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Le/m/a/g/u/o$d;

.field public final c:F

.field public final d:F


# direct methods
.method public constructor <init>(Le/m/a/g/u/o$d;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/a/g/u/o$f;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/g/u/o$b;->b:Le/m/a/g/u/o$d;

    .line 3
    iput p2, p0, Le/m/a/g/u/o$b;->c:F

    .line 4
    iput p3, p0, Le/m/a/g/u/o$b;->d:F

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Le/m/a/g/t/a;ILandroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget-object v0, p0, Le/m/a/g/u/o$b;->b:Le/m/a/g/u/o$d;

    .line 2
    iget v1, v0, Le/m/a/g/u/o$d;->c:F

    .line 3
    iget v2, p0, Le/m/a/g/u/o$b;->d:F

    sub-float/2addr v1, v2

    .line 4
    iget v0, v0, Le/m/a/g/u/o$d;->b:F

    .line 5
    iget v2, p0, Le/m/a/g/u/o$b;->c:F

    sub-float/2addr v0, v2

    .line 6
    new-instance v2, Landroid/graphics/RectF;

    float-to-double v3, v1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {v2, v1, v1, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 7
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 8
    iget p1, p0, Le/m/a/g/u/o$b;->c:F

    iget v3, p0, Le/m/a/g/u/o$b;->d:F

    invoke-virtual {v0, p1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 9
    invoke-virtual {p0}, Le/m/a/g/u/o$b;->b()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget p1, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, p3

    add-float/2addr p1, v3

    iput p1, v2, Landroid/graphics/RectF;->bottom:F

    neg-int p1, p3

    int-to-float p1, p1

    .line 12
    invoke-virtual {v2, v1, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 13
    sget-object v8, Le/m/a/g/t/a;->i:[I

    iget p1, p2, Le/m/a/g/t/a;->f:I

    const/4 p3, 0x0

    aput p1, v8, p3

    .line 14
    iget p1, p2, Le/m/a/g/t/a;->e:I

    const/4 p3, 0x1

    aput p1, v8, p3

    .line 15
    iget p1, p2, Le/m/a/g/t/a;->d:I

    const/4 p3, 0x2

    aput p1, v8, p3

    .line 16
    iget-object p1, p2, Le/m/a/g/t/a;->c:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/LinearGradient;

    iget v6, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    sget-object v9, Le/m/a/g/t/a;->j:[F

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, p3

    move v4, v6

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 17
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    .line 18
    invoke-virtual {p4, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 19
    iget-object p1, p2, Le/m/a/g/t/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p4, v2, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 20
    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public b()F
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/g/u/o$b;->b:Le/m/a/g/u/o$d;

    .line 2
    iget v1, v0, Le/m/a/g/u/o$d;->c:F

    .line 3
    iget v2, p0, Le/m/a/g/u/o$b;->d:F

    sub-float/2addr v1, v2

    .line 4
    iget v0, v0, Le/m/a/g/u/o$d;->b:F

    .line 5
    iget v2, p0, Le/m/a/g/u/o$b;->c:F

    sub-float/2addr v0, v2

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
