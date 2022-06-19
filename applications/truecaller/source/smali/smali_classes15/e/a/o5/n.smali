.class public final Le/a/o5/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/m;


# instance fields
.field public final a:Landroid/util/DisplayMetrics;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o5/n;->b:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "context.resources"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Le/a/o5/n;->a:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public static synthetic q(Le/a/o5/n;Ljava/io/File;Landroid/graphics/BitmapFactory$Options;III)Lcom/truecaller/messaging/data/types/ImageEntity;
    .locals 1

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    .line 1
    iget p3, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    iget p4, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Le/a/o5/n;->p(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;II)Lcom/truecaller/messaging/data/types/ImageEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 1
    iget-object v2, p0, Le/a/o5/n;->b:Landroid/content/Context;

    const-string v3, "$this$delete"

    .line 2
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Le/a/p5/s0/f;->L(Landroid/net/Uri;)Lcom/truecaller/utils/extensions/Scheme;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_3

    if-eq v3, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v0

    goto :goto_1

    .line 5
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p1

    :goto_1
    if-ne p1, v1, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method public b()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o5/n;->a:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f2ac083    # 0.667f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public c([BII)Landroid/graphics/Bitmap;
    .locals 12

    const-string v0, "thumbnail"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    return-object v3

    .line 2
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    aget-byte v4, p1, v2

    int-to-float v4, v4

    div-float/2addr v0, v4

    int-to-float p2, p2

    div-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p3, p3

    div-float/2addr p3, v0

    float-to-int p3, p3

    .line 3
    array-length v0, p1

    mul-int v4, p2, p3

    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v1

    if-ge v0, v5, :cond_2

    return-object v3

    .line 4
    :cond_2
    new-array v5, v4, [I

    :goto_1
    if-ge v2, v4, :cond_3

    mul-int/lit8 v0, v2, 0x2

    add-int/lit8 v3, v0, 0x1

    .line 5
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v0, v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    const-wide v6, 0xff000000L

    long-to-int v3, v6

    shl-int/lit8 v6, v0, 0x8

    const/high16 v7, 0xf80000

    and-int/2addr v6, v7

    or-int/2addr v3, v6

    shl-int/lit8 v6, v0, 0x5

    const v7, 0xfc00

    and-int/2addr v6, v7

    or-int/2addr v3, v6

    shl-int/lit8 v0, v0, 0x3

    and-int/lit16 v0, v0, 0xf8

    or-int/2addr v0, v3

    .line 6
    aput v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_3
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move v7, p2

    move v10, p2

    move v11, p3

    .line 8
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    const-string v0, "bitmap"

    .line 9
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    mul-int/lit8 p2, p2, 0x4

    mul-int/lit8 p3, p3, 0x4

    invoke-static {p1, p2, p3}, Le/a/e/a2;->c(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 10
    iget-object p2, p0, Le/a/o5/n;->b:Landroid/content/Context;

    invoke-static {p2}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Le/f/a/i;->f()Le/f/a/h;

    move-result-object p2

    .line 12
    invoke-virtual {p2, p1}, Le/f/a/h;->Q(Landroid/graphics/Bitmap;)Le/f/a/h;

    move-result-object p2

    .line 13
    new-instance p3, Le/a/z3/h/b;

    iget-object v0, p0, Le/a/o5/n;->b:Landroid/content/Context;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p3, v0, v2}, Le/a/z3/h/b;-><init>(Landroid/content/Context;F)V

    invoke-virtual {p2, p3}, Le/f/a/r/a;->B(Le/f/a/n/m;)Le/f/a/r/a;

    move-result-object p2

    check-cast p2, Le/f/a/h;

    .line 14
    invoke-virtual {p2}, Le/f/a/h;->X()Le/f/a/r/c;

    move-result-object p2

    .line 15
    check-cast p2, Le/f/a/r/f;

    invoke-virtual {p2}, Le/f/a/r/f;->get()Ljava/lang/Object;

    move-result-object p2

    .line 16
    check-cast p2, Landroid/graphics/Bitmap;

    .line 17
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    xor-int/2addr p3, v1

    if-eqz p3, :cond_4

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    return-object p2
.end method

.method public d(Landroid/net/Uri;)[B
    .locals 10

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2
    iget-object v3, p0, Le/a/o5/n;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "context.contentResolver.\u2026tream(uri) ?: return null"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-static {v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v3, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 4
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 5
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    const/16 v6, 0x18

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v6, v5

    .line 7
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    sget-wide v8, Ls1/a0/a;->a:D

    div-double/2addr v6, v8

    double-to-float v6, v6

    float-to-int v6, v6

    shl-int/2addr v2, v6

    .line 8
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    .line 9
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 10
    iget-object v2, p0, Le/a/o5/n;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p1, :cond_0

    .line 11
    :try_start_3
    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_0

    const-string p1, "context.contentResolver.\u2026         } ?: return null"

    .line 13
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p1, v3

    div-float/2addr p1, v5

    float-to-int p1, p1

    int-to-float v2, v4

    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 14
    invoke-static {v1, p1, v2}, Le/a/e/a2;->c(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 15
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {p1, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_2
    move-exception p1

    .line 16
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-static {v3, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 17
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 18
    sget-object v0, Le/a/o5/n$a;->b:Le/a/o5/n$a;

    invoke-static {p1, v0}, Le/a/e/a2;->j0(Landroid/graphics/Bitmap;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [B

    :cond_1
    return-object v0
.end method

.method public e(Landroid/net/Uri;II)Landroid/net/Uri;
    .locals 4

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Le/a/o5/n;->m(Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    iget-object v2, p0, Le/a/o5/n;->b:Landroid/content/Context;

    const-string v3, ".jpg"

    invoke-static {p1, v2, v3}, Le/a/p5/s0/f;->b(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "file.path"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v1, p2, p2}, Le/a/o5/n;->n(Landroid/graphics/BitmapFactory$Options;II)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p2, 0x1

    .line 6
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 7
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 8
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 9
    :try_start_1
    invoke-virtual {p0, v1}, Le/a/o5/n;->i(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    invoke-virtual {p2, v1, p3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 10
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 11
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 12
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 14
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 15
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw p1

    .line 16
    :catch_0
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 17
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {p0, p1, v1, p2, p3}, Le/a/o5/n;->j(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/net/Uri;

    move-result-object v0

    :catch_1
    :cond_1
    :goto_1
    return-object v0
.end method

.method public f(Landroid/net/Uri;)Lcom/truecaller/messaging/data/types/ImageEntity;
    .locals 10

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Le/a/o5/n;->m(Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v1, p0, Le/a/o5/n;->b:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2}, Le/a/p5/s0/f;->c(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 3
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v5, "file.path"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Le/a/o5/n;->l(Ljava/lang/String;)I

    move-result v1

    const/16 v6, 0x46

    const/16 v7, 0x500

    const/16 v8, 0x2d0

    .line 4
    invoke-virtual {p0, v3, v7, v8}, Le/a/o5/n;->n(Landroid/graphics/BitmapFactory$Options;II)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 5
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3, v7, v8}, Le/a/o5/n;->o(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v1}, Le/a/e/a2;->Z(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6
    invoke-virtual {p0, v3}, Le/a/o5/n;->i(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    invoke-virtual {p0, p1, v4, v1, v6}, Le/a/o5/n;->r(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0, v4, v3, v0, p1}, Le/a/o5/n;->p(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;II)Lcom/truecaller/messaging/data/types/ImageEntity;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {v5, v1}, Le/a/e/a2;->Z(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p0, v3}, Le/a/o5/n;->i(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p1

    invoke-virtual {p0, v5, v4, p1, v6}, Le/a/o5/n;->r(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object v1, p0

    move-object v2, v4

    move v4, p1

    .line 10
    invoke-static/range {v1 .. v6}, Le/a/o5/n;->q(Le/a/o5/n;Ljava/io/File;Landroid/graphics/BitmapFactory$Options;III)Lcom/truecaller/messaging/data/types/ImageEntity;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    invoke-static {v4}, Le/a/p5/s0/g;->k1(Ljava/io/File;)J

    move-result-wide v7

    .line 12
    invoke-virtual {p0, v3}, Le/a/o5/n;->i(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    invoke-virtual {p0, v5, v4, v1, v6}, Le/a/o5/n;->r(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z

    move-result v1

    if-nez v1, :cond_4

    return-object v0

    .line 13
    :cond_4
    invoke-static {v4}, Le/a/p5/s0/g;->k1(Ljava/io/File;)J

    move-result-wide v5

    cmp-long v1, v5, v7

    if-ltz v1, :cond_5

    .line 14
    invoke-static {v4}, Le/a/p5/s0/g;->i1(Ljava/io/File;)Z

    .line 15
    iget-object v1, p0, Le/a/o5/n;->b:Landroid/content/Context;

    invoke-static {p1, v1, v0, v2}, Le/a/p5/s0/f;->c(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Le/a/o5/n;->q(Le/a/o5/n;Ljava/io/File;Landroid/graphics/BitmapFactory$Options;III)Lcom/truecaller/messaging/data/types/ImageEntity;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object v1, p0

    move-object v2, v4

    move v4, p1

    .line 16
    invoke-static/range {v1 .. v6}, Le/a/o5/n;->q(Le/a/o5/n;Ljava/io/File;Landroid/graphics/BitmapFactory$Options;III)Lcom/truecaller/messaging/data/types/ImageEntity;

    move-result-object v0

    :catch_0
    :cond_6
    :goto_0
    return-object v0
.end method

.method public g(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Le/a/o5/n;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {p0, p1, p2}, Le/a/o5/n;->h(Landroid/graphics/Bitmap;I)Landroid/net/Uri;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p2

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object v1

    :catchall_1
    move-exception p2

    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    throw p2

    :catch_0
    move-object p1, v1

    .line 9
    :catch_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    if-eqz p1, :cond_2

    .line 10
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :catch_2
    move-object p1, v1

    .line 11
    :catch_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return-object v1
.end method

.method public final h(Landroid/graphics/Bitmap;I)Landroid/net/Uri;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gt v0, p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-le v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0, p1}, Le/a/o5/n;->k(Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1

    .line 4
    :cond_3
    invoke-virtual {p0, p1}, Le/a/o5/n;->k(Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "Uri.fromFile(file)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le/a/o5/n;->m(Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "file.path"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x50

    invoke-virtual {p0, p1, v0, p2, v1}, Le/a/o5/n;->j(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :catch_0
    :cond_4
    return-object v1
.end method

.method public final i(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 3

    .line 1
    iget-object p1, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-nez p1, :cond_0

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p1

    :cond_0
    const-string v0, "outMimeType"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "png"

    invoke-static {p1, v2, v0, v1}, Ls1/f0/r;->m(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object p1
.end method

.method public final j(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3, p3}, Le/a/o5/n;->o(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p0, p1}, Le/a/o5/n;->l(Ljava/lang/String;)I

    move-result v0

    invoke-static {p3, v0}, Le/a/e/a2;->Z(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-virtual {p0, p2}, Le/a/o5/n;->i(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p2

    invoke-virtual {p3, p2, p4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 6
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw p1

    :catch_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 11
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-object p1
.end method

.method public final k(Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/o5/n;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "image"

    const-string v2, ".jpg"

    invoke-static {v1, v2, v0}, Ls1/y/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    .line 3
    invoke-static {p1, v0, v1, v2}, Le/a/e/a2;->l(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final l(Ljava/lang/String;)I
    .locals 2

    .line 1
    new-instance v0, Ln3/q/a/a;

    invoke-direct {v0, p1}, Ln3/q/a/a;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Ln3/q/a/a;->e(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x10e

    goto :goto_0

    :cond_1
    const/16 p1, 0x5a

    goto :goto_0

    :cond_2
    const/16 p1, 0xb4

    :goto_0
    return p1
.end method

.method public final m(Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-static {p1}, Le/a/p5/s0/f;->L(Landroid/net/Uri;)Lcom/truecaller/utils/extensions/Scheme;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_0

    if-ne v2, v1, :cond_1

    .line 4
    iget-object v1, p0, Le/a/o5/n;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {p1, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri scheme: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n(Landroid/graphics/BitmapFactory$Options;II)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gt v0, p2, :cond_1

    iget p2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-le p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final o(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 4
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v1, v1

    int-to-float v2, v2

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    int-to-float p3, p3

    div-float/2addr v3, p3

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p3

    int-to-float p4, p4

    div-float/2addr p3, p4

    .line 7
    invoke-static {v3, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    div-float/2addr v1, p3

    float-to-int p4, v1

    .line 8
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    div-float/2addr v2, p3

    float-to-int p3, v2

    .line 9
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 11
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 12
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v1, p3, :cond_1

    if-le v2, p4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_2

    .line 13
    :cond_1
    :goto_0
    div-int/lit8 v1, v1, 0x2

    .line 14
    div-int/lit8 v2, v2, 0x2

    move v3, v0

    .line 15
    :goto_1
    div-int v4, v1, v3

    if-le v4, p3, :cond_2

    div-int v4, v2, v3

    if-le v4, p4, :cond_2

    mul-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 16
    :cond_2
    :goto_2
    iput v3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 17
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "BitmapFactory.decodeFile(path, options)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    if-ne p2, p4, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    if-ne p2, p3, :cond_3

    return-object p1

    .line 19
    :cond_3
    invoke-static {p1, p4, p3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    const-string p3, "Bitmap.createScaledBitma\u2026idth, targetHeight, true)"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p2
.end method

.method public final p(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;II)Lcom/truecaller/messaging/data/types/ImageEntity;
    .locals 24

    move/from16 v6, p3

    move/from16 v7, p4

    .line 1
    sget-object v0, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    move-object/from16 v1, p2

    .line 2
    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    move-object v3, v1

    const-string v2, "options.outMimeType"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    move-object v5, v1

    const-string v2, "Uri.fromFile(this)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static/range {p1 .. p1}, Le/a/p5/s0/g;->k1(Ljava/io/File;)J

    move-result-wide v9

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const v23, 0x3fe45

    .line 5
    invoke-static/range {v0 .. v23}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    instance-of v1, v0, Lcom/truecaller/messaging/data/types/ImageEntity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/truecaller/messaging/data/types/ImageEntity;

    return-object v0
.end method

.method public final r(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2
    :try_start_0
    invoke-virtual {p1, p3, p4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    :catch_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    .line 6
    :try_start_2
    invoke-static {p2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p2, 0x0

    .line 7
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 8
    :catch_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return p2

    .line 9
    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 10
    :catch_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    throw p2
.end method
