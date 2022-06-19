.class public final Le/a/b0/q/p;
.super Le/a/b0/q/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.truecaller.common.util.GradientTransformation"

    .line 1
    invoke-direct {p0, v0}, Le/a/b0/q/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Le/f/a/n/o/b0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11

    const-string p3, "pool"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "toTransform"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 3
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-virtual {p2, p4, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 4
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x2

    new-array v7, v1, [I

    const/4 v2, 0x0

    .line 5
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v7, v2

    const/16 v3, 0x33

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v7, v0

    .line 6
    new-instance v10, Landroid/graphics/LinearGradient;

    div-int/2addr p1, v1

    int-to-float v5, p1

    div-int/lit8 p1, p3, 0x2

    int-to-float v4, p1

    int-to-float v6, p3

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v8, 0x0

    move-object v2, v10

    move v3, v5

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    const/4 p3, 0x4

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 10
    invoke-virtual {p1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 11
    invoke-virtual {p4, p1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    const-string p1, "gradientBitmap"

    .line 12
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Le/a/b0/q/p;

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/q/d;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
