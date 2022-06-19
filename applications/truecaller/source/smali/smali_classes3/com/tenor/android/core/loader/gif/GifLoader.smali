.class public abstract Lcom/tenor/android/core/loader/gif/GifLoader;
.super Lcom/tenor/android/core/loader/GlideLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tenor/android/core/loader/GlideLoader;-><init>()V

    return-void
.end method

.method public static loadGif(Landroid/content/Context;Lcom/tenor/android/core/loader/GlideTaskParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CTX:",
            "Landroid/content/Context;",
            "T:",
            "Landroid/widget/ImageView;",
            ">(TCTX;",
            "Lcom/tenor/android/core/loader/GlideTaskParams<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lcom/tenor/android/core/loader/gif/GifLoader;->loadGif(Ljava/lang/ref/WeakReference;Lcom/tenor/android/core/loader/GlideTaskParams;)V

    return-void
.end method

.method public static loadGif(Ljava/lang/ref/WeakReference;Lcom/tenor/android/core/loader/GlideTaskParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CTX:",
            "Landroid/content/Context;",
            "T:",
            "Landroid/widget/ImageView;",
            ">(",
            "Ljava/lang/ref/WeakReference<",
            "TCTX;>;",
            "Lcom/tenor/android/core/loader/GlideTaskParams<",
            "TT;>;)V"
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

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object p0

    invoke-virtual {p1}, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/f/a/i;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object p0

    sget-object v0, Le/f/a/n/o/k;->a:Le/f/a/n/o/k;

    .line 4
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GifTypeRequest;->diskCacheStrategy(Le/f/a/n/o/k;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lcom/tenor/android/core/loader/GlideLoader;->applyDimens(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/tenor/android/core/loader/GlideTaskParams;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tenor/android/core/loader/GlideLoader;->load(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/tenor/android/core/loader/GlideTaskParams;)V

    return-void
.end method
