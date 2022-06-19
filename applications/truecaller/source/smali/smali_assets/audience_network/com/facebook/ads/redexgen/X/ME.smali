.class public final Lcom/facebook/ads/redexgen/X/ME;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .line 44250
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 44251
    .local v2, "matrix":Landroid/graphics/Matrix;
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 44252
    move-object v2, p0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v1, v0

    const/4 v0, 0x0

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 44253
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 44254
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 p0, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/MD;)Landroid/graphics/Bitmap;
    .locals 2

    .line 44255
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    .line 44256
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MD;->A00(F)Ljava/lang/String;

    move-result-object v0

    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 44257
    .local p0, "decodedImage":[B
    array-length v0, v1

    invoke-static {v1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/MD;)Landroid/graphics/Bitmap;
    .locals 2

    .line 44258
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    .line 44259
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MD;->A00(F)Ljava/lang/String;

    move-result-object v0

    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 44260
    .local p0, "decodedImage":[B
    array-length v0, v1

    invoke-static {v1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ME;->A00(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/MD;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 44261
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XT;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ME;->A01(Lcom/facebook/ads/redexgen/X/MD;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method
