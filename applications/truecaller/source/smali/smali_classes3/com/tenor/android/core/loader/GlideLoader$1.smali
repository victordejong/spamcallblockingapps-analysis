.class public final Lcom/tenor/android/core/loader/GlideLoader$1;
.super Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenor/android/core/loader/GlideLoader;->load(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/tenor/android/core/loader/GlideTaskParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$payload:Lcom/tenor/android/core/loader/GlideTaskParams;

.field public final synthetic val$requestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/tenor/android/core/loader/GlideTaskParams;Lcom/bumptech/glide/GenericRequestBuilder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/tenor/android/core/loader/GlideLoader$1;->val$payload:Lcom/tenor/android/core/loader/GlideTaskParams;

    iput-object p3, p0, Lcom/tenor/android/core/loader/GlideLoader$1;->val$requestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/loader/GlideLoader$1;->val$payload:Lcom/tenor/android/core/loader/GlideTaskParams;

    invoke-virtual {v0}, Lcom/tenor/android/core/loader/GlideTaskParams;->getCurrentRetry()I

    move-result v0

    iget-object v1, p0, Lcom/tenor/android/core/loader/GlideLoader$1;->val$payload:Lcom/tenor/android/core/loader/GlideTaskParams;

    invoke-virtual {v1}, Lcom/tenor/android/core/loader/GlideTaskParams;->getMaxRetry()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tenor/android/core/loader/GlideLoader$1;->val$payload:Lcom/tenor/android/core/loader/GlideTaskParams;

    invoke-virtual {p1}, Lcom/tenor/android/core/loader/GlideTaskParams;->incrementCurrentRetry()Lcom/tenor/android/core/loader/GlideTaskParams;

    .line 3
    iget-object p1, p0, Lcom/tenor/android/core/loader/GlideLoader$1;->val$requestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    iget-object p2, p0, Lcom/tenor/android/core/loader/GlideLoader$1;->val$payload:Lcom/tenor/android/core/loader/GlideTaskParams;

    invoke-static {p1, p2}, Lcom/tenor/android/core/loader/GlideLoader;->load(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/tenor/android/core/loader/GlideTaskParams;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object p1, p0, Lcom/tenor/android/core/loader/GlideLoader$1;->val$payload:Lcom/tenor/android/core/loader/GlideTaskParams;

    invoke-virtual {p1}, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->getListener()Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener;

    move-result-object p1

    iget-object v0, p0, Lcom/tenor/android/core/loader/GlideLoader$1;->val$payload:Lcom/tenor/android/core/loader/GlideTaskParams;

    invoke-virtual {v0}, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->getTarget()Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener;->failure(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    .line 3
    iget-object p2, p0, Lcom/tenor/android/core/loader/GlideLoader$1;->val$payload:Lcom/tenor/android/core/loader/GlideTaskParams;

    invoke-virtual {p2}, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->getListener()Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener;

    move-result-object p2

    iget-object v0, p0, Lcom/tenor/android/core/loader/GlideLoader$1;->val$payload:Lcom/tenor/android/core/loader/GlideTaskParams;

    invoke-virtual {v0}, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->getTarget()Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener;->success(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/tenor/android/core/loader/GlideLoader$1;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
