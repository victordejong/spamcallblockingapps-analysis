.class public final Le/a/b/a/i/b/b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/io/File;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.newBusiness.util.compressor.CompressManager$compress$2"
    f = "CompressManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ljava/io/File;

.field public final synthetic f:Le/a/b/a/i/b/a;


# direct methods
.method public constructor <init>(Ljava/io/File;Le/a/b/a/i/b/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/i/b/b;->e:Ljava/io/File;

    iput-object p2, p0, Le/a/b/a/i/b/b;->f:Le/a/b/a/i/b/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/a/i/b/b;

    iget-object v0, p0, Le/a/b/a/i/b/b;->e:Ljava/io/File;

    iget-object v1, p0, Le/a/b/a/i/b/b;->f:Le/a/b/a/i/b/a;

    invoke-direct {p1, v0, v1, p2}, Le/a/b/a/i/b/b;-><init>(Ljava/io/File;Le/a/b/a/i/b/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/a/i/b/b;

    iget-object v0, p0, Le/a/b/a/i/b/b;->e:Ljava/io/File;

    iget-object v1, p0, Le/a/b/a/i/b/b;->f:Le/a/b/a/i/b/a;

    invoke-direct {p1, v0, v1, p2}, Le/a/b/a/i/b/b;-><init>(Ljava/io/File;Le/a/b/a/i/b/a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b/a/i/b/b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/b/a/i/b/b;->e:Ljava/io/File;

    iget-object v0, p0, Le/a/b/a/i/b/b;->f:Le/a/b/a/i/b/a;

    .line 3
    iget v1, v0, Le/a/b/a/i/b/a;->b:I

    .line 4
    iget v0, v0, Le/a/b/a/i/b/a;->a:I

    const-string v2, "imageFile"

    .line 5
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 7
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const-string v5, "options"

    .line 9
    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-gt v5, v0, :cond_0

    if-le v6, v1, :cond_1

    .line 11
    :cond_0
    div-int/lit8 v5, v5, 0x2

    .line 12
    div-int/lit8 v6, v6, 0x2

    .line 13
    :goto_0
    div-int v7, v5, v4

    if-lt v7, v0, :cond_1

    div-int v7, v6, v4

    if-lt v7, v1, :cond_1

    mul-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 14
    :cond_1
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string p1, "BitmapFactory.Options().\u2026absolutePath, this)\n    }"

    .line 17
    invoke-static {v4, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Le/a/b/a/i/b/b;->e:Ljava/io/File;

    .line 19
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bitmap"

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v3, Ln3/q/a/a;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ln3/q/a/a;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const-string p1, "Orientation"

    .line 22
    invoke-virtual {v3, p1, v0}, Ln3/q/a/a;->e(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/high16 p1, 0x43870000    # 270.0f

    goto :goto_1

    :cond_3
    const/high16 p1, 0x42b40000    # 90.0f

    goto :goto_1

    :cond_4
    const/high16 p1, 0x43340000    # 180.0f

    .line 23
    :goto_1
    invoke-virtual {v9, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 24
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "Bitmap.createBitmap(bitm\u2026map.height, matrix, true)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Le/a/b/a/i/b/b;->e:Ljava/io/File;

    iget-object v3, p0, Le/a/b/a/i/b/b;->f:Le/a/b/a/i/b/a;

    .line 26
    iget-object v4, v3, Le/a/b/a/i/b/a;->d:Landroid/graphics/Bitmap$CompressFormat;

    .line 27
    iget v3, v3, Le/a/b/a/i/b/a;->c:I

    .line 28
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "format"

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v4, v1, :cond_5

    move-object v1, v0

    goto :goto_2

    .line 30
    :cond_5
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "imageFile.absolutePath"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "."

    .line 31
    invoke-static {v5, v6, v5}, Ls1/f0/v;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".jpg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 34
    invoke-static {p1, v1, v4, v3}, Le/a/e/a2;->l(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z

    return-object v1
.end method
