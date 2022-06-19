.class public Le/f/a/n/q/d/k;
.super Le/f/a/n/q/d/f;
.source "SourceFile"


# static fields
.field public static final b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Le/f/a/n/f;->a:Ljava/nio/charset/Charset;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.CircleCrop.1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Le/f/a/n/q/d/k;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/f/a/n/q/d/f;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    sget-object v0, Le/f/a/n/q/d/k;->b:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public c(Le/f/a/n/o/b0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    sget-object v0, Le/f/a/n/q/d/c0;->a:Landroid/graphics/Paint;

    .line 2
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p4, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p4, v0

    .line 3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v2, v2

    div-float v4, p4, v2

    int-to-float v3, v3

    div-float v5, p4, v3

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v2, v4

    mul-float/2addr v4, v3

    sub-float v3, p4, v2

    div-float/2addr v3, v0

    sub-float/2addr p4, v4

    div-float/2addr p4, v0

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    add-float/2addr v2, v3

    add-float/2addr v4, p4

    invoke-direct {v0, v3, p4, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 7
    invoke-static {p1, p2}, Le/f/a/n/q/d/c0;->c(Le/f/a/n/o/b0/d;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 8
    invoke-static {p2}, Le/f/a/n/q/d/c0;->d(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 9
    invoke-interface {p1, p3, p3, v2}, Le/f/a/n/o/b0/d;->e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    const/4 v2, 0x1

    .line 10
    invoke-virtual {p3, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 11
    sget-object v2, Le/f/a/n/q/d/c0;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 12
    :try_start_0
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 13
    sget-object v4, Le/f/a/n/q/d/c0;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v1, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 14
    sget-object v1, Le/f/a/n/q/d/c0;->c:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, p4, v4, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 15
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 18
    invoke-interface {p1, p4}, Le/f/a/n/o/b0/d;->c(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object p3

    :catchall_0
    move-exception p1

    .line 19
    sget-object p2, Le/f/a/n/q/d/c0;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Le/f/a/n/q/d/k;

    return p1
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x41aadb8c

    return v0
.end method
