.class public final Le/a/y/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/flashsdk/assist/FlashBitmapConverter;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/y/b/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/y/b/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileUtils"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/b/j;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/y/b/j;->b:Le/a/y/b/h;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "context.resources"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 14

    const-string v0, "fileUri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Le/a/y/b/j;->e(Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    iget-object v2, p0, Le/a/y/b/j;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".jpg"

    const-string v4, "IMG"

    invoke-static {v4, v3, v2}, Ls1/y/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 3
    invoke-virtual {p0, p1}, Le/a/y/b/j;->f(Landroid/net/Uri;)Lcom/truecaller/flashsdk/assist/FlashBitmapConverter$Scheme;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v5, :cond_0

    .line 4
    iget-object v4, p0, Le/a/y/b/j;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object p1, v4

    :goto_0
    const-string v4, "when (uri.scheme()) {\n  \u2026tream(uri.path)\n        }"

    .line 6
    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 8
    :try_start_1
    invoke-static {p1, v4}, Le/a/p5/s0/g;->X1(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 11
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 13
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 14
    :catch_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 15
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_2
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_9

    .line 16
    iget-object p1, p0, Le/a/y/b/j;->b:Le/a/y/b/h;

    .line 17
    invoke-interface {p1, v3}, Le/a/y/b/h;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 18
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v4, 0x500

    const/4 v6, 0x0

    if-gt v3, v4, :cond_4

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v3, v4, :cond_3

    goto :goto_2

    :cond_3
    move v3, v6

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v5

    :goto_3
    const-string v7, "file.path"

    if-nez v3, :cond_5

    .line 19
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 21
    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 22
    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 23
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 24
    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 25
    invoke-static {v3, v4, v6, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 26
    invoke-virtual {p0, v2}, Le/a/y/b/j;->d(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v0}, Le/a/e/a2;->Z(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v2, 0x64

    .line 27
    invoke-virtual {p0, v0, p1, v2, v1}, Le/a/y/b/j;->c(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/BitmapFactory$Options;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_6

    .line 28
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 30
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 31
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 32
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    int-to-float v4, v4

    div-float v7, v2, v4

    int-to-float v3, v3

    div-float v4, v3, v4

    .line 33
    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float/2addr v2, v4

    float-to-int v2, v2

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 34
    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 35
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 36
    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 37
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 38
    invoke-virtual {v7}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x100000

    div-long/2addr v8, v10

    .line 39
    invoke-virtual {v7}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v12

    div-long/2addr v12, v10

    sub-long/2addr v12, v8

    long-to-double v7, v12

    .line 40
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 41
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    sget-wide v9, Ls1/a0/a;->a:D

    div-double/2addr v7, v9

    neg-double v7, v7

    .line 42
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    int-to-double v9, v5

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v7, v7

    .line 43
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-gt v4, v3, :cond_6

    if-le v6, v2, :cond_7

    .line 44
    :cond_6
    div-int/lit8 v4, v4, 0x2

    .line 45
    div-int/lit8 v6, v6, 0x2

    .line 46
    :goto_4
    div-int v8, v4, v7

    if-le v8, v3, :cond_7

    div-int v8, v6, v7

    if-le v8, v2, :cond_7

    mul-int/lit8 v7, v7, 0x2

    goto :goto_4

    .line 47
    :cond_7
    iput v7, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 48
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v6, "BitmapFactory.decodeFile(path, options)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, v2, :cond_8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v6, v3, :cond_8

    goto :goto_5

    .line 50
    :cond_8
    invoke-static {v4, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "Bitmap.createScaledBitma\u2026idth, targetHeight, true)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    move-object v4, v2

    .line 52
    :goto_5
    invoke-virtual {p0, v0}, Le/a/y/b/j;->d(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4, v0}, Le/a/e/a2;->Z(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v2, 0x50

    .line 53
    invoke-virtual {p0, v0, p1, v2, v1}, Le/a/y/b/j;->c(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/BitmapFactory$Options;)Landroid/net/Uri;

    move-result-object v0

    :catch_1
    :cond_9
    :goto_6
    return-object v0
.end method

.method public final b(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$CompressFormat;
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

.method public final c(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/BitmapFactory$Options;)Landroid/net/Uri;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2
    :try_start_0
    invoke-virtual {p0, p4}, Le/a/y/b/j;->b(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p4

    invoke-virtual {p1, p4, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 5
    iget-object p3, p0, Le/a/y/b/j;->b:Le/a/y/b/h;

    invoke-interface {p3, p2}, Le/a/y/b/h;->c(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw p2

    :catch_0
    const/4 p2, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-object p2
.end method

.method public final d(Ljava/lang/String;)I
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

.method public final e(Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-virtual {p0, p1}, Le/a/y/b/j;->f(Landroid/net/Uri;)Lcom/truecaller/flashsdk/assist/FlashBitmapConverter$Scheme;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_1

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Le/a/y/b/j;->a:Landroid/content/Context;

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
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :goto_0
    return-object v0
.end method

.method public final f(Landroid/net/Uri;)Lcom/truecaller/flashsdk/assist/FlashBitmapConverter$Scheme;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/truecaller/flashsdk/assist/FlashBitmapConverter$Scheme;->FILE:Lcom/truecaller/flashsdk/assist/FlashBitmapConverter$Scheme;

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/assist/FlashBitmapConverter$Scheme;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/truecaller/flashsdk/assist/FlashBitmapConverter$Scheme;->CONTENT:Lcom/truecaller/flashsdk/assist/FlashBitmapConverter$Scheme;

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/assist/FlashBitmapConverter$Scheme;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v1

    .line 4
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
