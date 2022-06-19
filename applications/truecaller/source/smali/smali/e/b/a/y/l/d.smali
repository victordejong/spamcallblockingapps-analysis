.class public Le/b/a/y/l/d;
.super Le/b/a/y/l/b;
.source "SourceFile"


# instance fields
.field public final w:Landroid/graphics/Paint;

.field public final x:Landroid/graphics/Rect;

.field public final y:Landroid/graphics/Rect;

.field public z:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/b/a/k;Le/b/a/y/l/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/b/a/y/l/b;-><init>(Le/b/a/k;Le/b/a/y/l/e;)V

    .line 2
    new-instance p1, Le/b/a/w/a;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Le/b/a/w/a;-><init>(I)V

    iput-object p1, p0, Le/b/a/y/l/d;->w:Landroid/graphics/Paint;

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Le/b/a/y/l/d;->x:Landroid/graphics/Rect;

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Le/b/a/y/l/d;->y:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Le/b/a/y/l/b;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    invoke-virtual {p0}, Le/b/a/y/l/d;->q()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-static {}, Le/b/a/b0/e;->c()F

    move-result v0

    mul-float/2addr v0, p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {}, Le/b/a/b0/e;->c()F

    move-result p3

    mul-float/2addr p3, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, v0, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-object p2, p0, Le/b/a/y/l/b;->m:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/Object;Le/b/a/c0/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Le/b/a/c0/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/b/a/y/l/b;->u:Le/b/a/w/c/o;

    invoke-virtual {v0, p1, p2}, Le/b/a/w/c/o;->c(Ljava/lang/Object;Le/b/a/c0/c;)Z

    .line 2
    sget-object v0, Le/b/a/o;->B:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 3
    iput-object p1, p0, Le/b/a/y/l/d;->z:Le/b/a/w/c/a;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Le/b/a/w/c/p;

    .line 5
    invoke-direct {v0, p2, p1}, Le/b/a/w/c/p;-><init>(Le/b/a/c0/c;Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Le/b/a/y/l/d;->z:Le/b/a/w/c/a;

    :cond_1
    :goto_0
    return-void
.end method

.method public j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/b/a/y/l/d;->q()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Le/b/a/b0/e;->c()F

    move-result v1

    .line 4
    iget-object v2, p0, Le/b/a/y/l/d;->w:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5
    iget-object p3, p0, Le/b/a/y/l/d;->z:Le/b/a/w/c/a;

    if-eqz p3, :cond_1

    .line 6
    iget-object v2, p0, Le/b/a/y/l/d;->w:Landroid/graphics/Paint;

    invoke-virtual {p3}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 9
    iget-object p2, p0, Le/b/a/y/l/d;->x:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, p3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 10
    iget-object p2, p0, Le/b/a/y/l/d;->y:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p2, v3, v3, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 11
    iget-object p2, p0, Le/b/a/y/l/d;->x:Landroid/graphics/Rect;

    iget-object p3, p0, Le/b/a/y/l/d;->y:Landroid/graphics/Rect;

    iget-object v1, p0, Le/b/a/y/l/d;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final q()Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    iget-object v0, p0, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 2
    iget-object v0, v0, Le/b/a/y/l/e;->g:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Le/b/a/y/l/b;->n:Le/b/a/k;

    .line 4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    move-object v1, v5

    goto :goto_3

    .line 5
    :cond_0
    iget-object v2, v1, Le/b/a/k;->g:Le/b/a/x/b;

    if-eqz v2, :cond_6

    .line 6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_2

    .line 8
    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    goto :goto_1

    :cond_2
    :goto_0
    move-object v6, v5

    :goto_1
    if-nez v6, :cond_3

    .line 9
    iget-object v7, v2, Le/b/a/x/b;->a:Landroid/content/Context;

    if-eqz v7, :cond_4

    :cond_3
    iget-object v2, v2, Le/b/a/x/b;->a:Landroid/content/Context;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v2, v4

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    if-nez v2, :cond_6

    .line 10
    iput-object v5, v1, Le/b/a/k;->g:Le/b/a/x/b;

    .line 11
    :cond_6
    iget-object v2, v1, Le/b/a/k;->g:Le/b/a/x/b;

    if-nez v2, :cond_7

    .line 12
    new-instance v2, Le/b/a/x/b;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v6

    iget-object v7, v1, Le/b/a/k;->h:Ljava/lang/String;

    iget-object v8, v1, Le/b/a/k;->i:Le/b/a/b;

    iget-object v9, v1, Le/b/a/k;->b:Le/b/a/e;

    .line 13
    iget-object v9, v9, Le/b/a/e;->d:Ljava/util/Map;

    .line 14
    invoke-direct {v2, v6, v7, v8, v9}, Le/b/a/x/b;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Le/b/a/b;Ljava/util/Map;)V

    iput-object v2, v1, Le/b/a/k;->g:Le/b/a/x/b;

    .line 15
    :cond_7
    iget-object v1, v1, Le/b/a/k;->g:Le/b/a/x/b;

    :goto_3
    if-eqz v1, :cond_d

    .line 16
    iget-object v2, v1, Le/b/a/x/b;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/a/l;

    if-nez v2, :cond_8

    goto/16 :goto_4

    .line 17
    :cond_8
    iget-object v6, v2, Le/b/a/l;->c:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_9

    move-object v5, v6

    goto/16 :goto_4

    .line 18
    :cond_9
    iget-object v6, v1, Le/b/a/x/b;->c:Le/b/a/b;

    if-eqz v6, :cond_a

    .line 19
    invoke-interface {v6, v2}, Le/b/a/b;->a(Le/b/a/l;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 20
    invoke-virtual {v1, v0, v5}, Le/b/a/x/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_4

    .line 21
    :cond_a
    iget-object v2, v2, Le/b/a/l;->b:Ljava/lang/String;

    .line 22
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 23
    iput-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/16 v7, 0xa0

    .line 24
    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    const-string v7, "data:"

    .line 25
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "base64,"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_b

    const/16 v7, 0x2c

    .line 26
    :try_start_0
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    array-length v4, v2

    invoke-static {v2, v3, v4, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 28
    invoke-virtual {v1, v0, v5}, Le/b/a/x/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_4

    .line 29
    :cond_b
    :try_start_1
    iget-object v3, v1, Le/b/a/x/b;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 30
    iget-object v3, v1, Le/b/a/x/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Le/b/a/x/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    invoke-static {v2, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 32
    invoke-virtual {v1, v0, v5}, Le/b/a/x/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_4

    .line 33
    :cond_c
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_d
    :goto_4
    return-object v5
.end method
