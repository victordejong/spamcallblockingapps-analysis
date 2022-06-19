.class public Lcom/tenor/android/core/loader/GlideLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDimens(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/tenor/android/core/loader/GlideTaskParams;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/tenor/android/core/loader/GlideTaskParams;->getMedia()Lcom/tenor/android/core/model/impl/Media;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/tenor/android/core/model/impl/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/tenor/android/core/model/impl/Image;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    :cond_0
    return-object p0
.end method

.method public static load(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/tenor/android/core/loader/GlideTaskParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/ImageView;",
            ">(",
            "Lcom/bumptech/glide/GenericRequestBuilder;",
            "Lcom/tenor/android/core/loader/GlideTaskParams<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/tenor/android/core/loader/GlideTaskParams;->isThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/tenor/android/core/loader/GlideTaskParams;->getThumbnailMultiplier()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->getPlaceholder()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/tenor/android/core/loader/GlideLoader$1;

    .line 4
    invoke-virtual {p1}, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->getTarget()Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {v1, v2, p1, p0}, Lcom/tenor/android/core/loader/GlideLoader$1;-><init>(Landroid/widget/ImageView;Lcom/tenor/android/core/loader/GlideTaskParams;Lcom/bumptech/glide/GenericRequestBuilder;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    return-void
.end method
