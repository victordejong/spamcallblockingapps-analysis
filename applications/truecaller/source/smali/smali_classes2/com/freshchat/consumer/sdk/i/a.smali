.class public Lcom/freshchat/consumer/sdk/i/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final gS:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final gT:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private final gU:I

.field private final lm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/freshchat/consumer/sdk/f/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/i/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/i/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;ILcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;Lcom/freshchat/consumer/sdk/f/a;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/i/a;->gS:Ljava/lang/ref/WeakReference;

    iput p3, p0, Lcom/freshchat/consumer/sdk/i/a;->gU:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/i/a;->context:Landroid/content/Context;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/i/a;->gT:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/i/a;->lm:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Landroid/net/Uri;)I
    .locals 8

    sget-object v0, Lcom/freshchat/consumer/sdk/i/a;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/i/a;->b(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/a;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/p;->cq(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    invoke-static {p1, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v4, Lcom/freshchat/consumer/sdk/i/a;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Orig "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v4, v0

    const-wide/32 v6, 0x1fa400

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    :goto_0
    mul-int/2addr v3, v1

    int-to-long v0, v3

    div-long/2addr v0, v6

    :goto_1
    long-to-double v0, v0

    goto :goto_2

    :cond_0
    const-wide/32 v6, 0xe1000

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    mul-int/2addr v3, v1

    int-to-long v0, v3

    const-wide/32 v3, 0x64140

    div-long/2addr v0, v3

    goto :goto_1

    :goto_2
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v0, v3

    if-gtz v3, :cond_2

    move v0, v2

    goto :goto_3

    :cond_2
    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    cmpg-double v0, v0, v3

    if-gez v0, :cond_3

    const/4 v0, 0x2

    goto :goto_3

    :cond_3
    const/4 v0, 0x4

    :goto_3
    sget-object v1, Lcom/freshchat/consumer/sdk/i/a;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calculated scale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v2, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    return v0
.end method

.method private fu()Lcom/freshchat/consumer/sdk/f/a;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/a;->lm:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/f/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public b(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2

    iget v0, p0, Lcom/freshchat/consumer/sdk/i/a;->gU:I

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ad;->aE(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/a;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ad;->d(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    array-length v3, v0

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Lcom/freshchat/consumer/sdk/i/a;->b(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    :try_start_0
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-direct {v1, v0}, Lcom/freshchat/consumer/sdk/i/a;->a(Landroid/net/Uri;)I

    move-result v9

    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/freshchat/consumer/sdk/j/af;->aG(Ljava/lang/String;)I

    move-result v9

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    if-eqz v9, :cond_1

    int-to-float v9, v9

    invoke-virtual {v15, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_1
    invoke-static {v4, v2, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v9, v1, Lcom/freshchat/consumer/sdk/i/a;->context:Landroid/content/Context;

    const-string v10, "freshchat"

    invoke-static {v9, v10}, Lcom/freshchat/consumer/sdk/j/a/d;->R(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ".img"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v9, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ".img.t"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v13, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x55

    invoke-virtual {v8, v11, v14, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x46

    invoke-virtual {v8, v11, v14, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    sget-object v11, Lcom/freshchat/consumer/sdk/i/a;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Pic saved to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v1, Lcom/freshchat/consumer/sdk/i/a;->gT:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;

    if-eqz v11, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->l(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->k(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->setHeight(I)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->setWidth(I)V

    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/x;->bs(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v4, v0, v3

    aput-object v9, v0, v6

    aput-object v10, v0, v5

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    return-object v8

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v10, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v10, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v10, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v9, v2

    move-object v10, v9

    :goto_0
    :try_start_3
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v4, v0, v3

    aput-object v9, v0, v6

    aput-object v10, v0, v5

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    return-object v2

    :catchall_2
    move-exception v0

    :goto_1
    move-object v2, v9

    :goto_2
    new-array v7, v7, [Ljava/io/Closeable;

    aput-object v4, v7, v3

    aput-object v2, v7, v6

    aput-object v10, v7, v5

    invoke-static {v7}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    throw v0

    :cond_3
    :goto_3
    return-object v2
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/i/a;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/a;->gS:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/i/a;->fu()Lcom/freshchat/consumer/sdk/f/a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/i/a;->fu()Lcom/freshchat/consumer/sdk/f/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/freshchat/consumer/sdk/f/a;->aH()V

    goto :goto_0

    :cond_1
    const-string p1, "FRESHCHAT_WARNING"

    const-string v0, " image view not present or bitmap is null"

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/i/a;->fu()Lcom/freshchat/consumer/sdk/f/a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/i/a;->fu()Lcom/freshchat/consumer/sdk/f/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/freshchat/consumer/sdk/f/a;->aI()V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/i/a;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/i/a;->fu()Lcom/freshchat/consumer/sdk/f/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/i/a;->fu()Lcom/freshchat/consumer/sdk/f/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/freshchat/consumer/sdk/f/a;->aG()V

    :cond_0
    return-void
.end method
