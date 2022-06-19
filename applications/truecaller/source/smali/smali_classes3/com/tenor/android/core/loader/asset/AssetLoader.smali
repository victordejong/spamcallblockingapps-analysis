.class public Lcom/tenor/android/core/loader/asset/AssetLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadAsset(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CTX:",
            "Landroid/content/Context;",
            ">(TCTX;",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p1, p2}, Lcom/tenor/android/core/loader/asset/AssetLoader;->loadAsset(Ljava/lang/ref/WeakReference;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public static loadAsset(Ljava/lang/ref/WeakReference;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CTX:",
            "Landroid/content/Context;",
            ">(",
            "Ljava/lang/ref/WeakReference<",
            "TCTX;>;",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractWeakReferenceUtils;->isAlive(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tenor/android/core/loader/asset/AssetLoader;->toByteArray(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object p0

    invoke-virtual {p0, p2}, Le/f/a/i;->load([B)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object p0

    sget-object p2, Le/f/a/n/o/k;->a:Le/f/a/n/o/k;

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/GifTypeRequest;->diskCacheStrategy(Le/f/a/n/o/k;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->into(Landroid/widget/ImageView;)Le/f/a/r/k/k;

    return-void
.end method

.method public static toByteArray(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
