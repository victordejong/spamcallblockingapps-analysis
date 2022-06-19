.class public Lcom/tenor/android/core/loader/GlideTaskParams;
.super Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/ImageView;",
        ">",
        "Lcom/tenor/android/core/loader/DrawableLoaderTaskParams<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4819b74ca804f0e2L


# instance fields
.field private mCurrentRetry:I

.field private mHeight:I

.field private mMaxRetry:I

.field private mMedia:Lcom/tenor/android/core/model/impl/Media;

.field private mThumbnailMultiplier:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;-><init>(Landroid/widget/ImageView;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mThumbnailMultiplier:F

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mMaxRetry:I

    const/high16 p1, -0x80000000

    .line 4
    iput p1, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mWidth:I

    .line 5
    iput p1, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mHeight:I

    return-void
.end method


# virtual methods
.method public getCurrentRetry()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mCurrentRetry:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mHeight:I

    return v0
.end method

.method public getMaxRetry()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mMaxRetry:I

    return v0
.end method

.method public getMedia()Lcom/tenor/android/core/model/impl/Media;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mMedia:Lcom/tenor/android/core/model/impl/Media;

    return-object v0
.end method

.method public getThumbnailMultiplier()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mThumbnailMultiplier:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mWidth:I

    return v0
.end method

.method public incrementCurrentRetry()Lcom/tenor/android/core/loader/GlideTaskParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tenor/android/core/loader/GlideTaskParams<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mCurrentRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mCurrentRetry:I

    return-object p0
.end method

.method public isThumbnail()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mThumbnailMultiplier:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCurrentRetry(I)Lcom/tenor/android/core/loader/GlideTaskParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/tenor/android/core/loader/GlideTaskParams<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    iput p1, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mCurrentRetry:I

    :cond_0
    return-object p0
.end method

.method public setHeight(I)Lcom/tenor/android/core/loader/GlideTaskParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/tenor/android/core/loader/GlideTaskParams<",
            "TT;>;"
        }
    .end annotation

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mHeight:I

    :cond_0
    return-object p0
.end method

.method public setMaxRetry(I)Lcom/tenor/android/core/loader/GlideTaskParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/tenor/android/core/loader/GlideTaskParams<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mMaxRetry:I

    return-object p0
.end method

.method public setMedia(Lcom/tenor/android/core/model/impl/Media;)Lcom/tenor/android/core/loader/GlideTaskParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tenor/android/core/model/impl/Media;",
            ")",
            "Lcom/tenor/android/core/loader/GlideTaskParams<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mMedia:Lcom/tenor/android/core/model/impl/Media;

    .line 2
    invoke-virtual {p1}, Lcom/tenor/android/core/model/impl/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tenor/android/core/loader/GlideTaskParams;->setWidth(I)Lcom/tenor/android/core/loader/GlideTaskParams;

    .line 3
    invoke-virtual {p1}, Lcom/tenor/android/core/model/impl/Image;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tenor/android/core/loader/GlideTaskParams;->setHeight(I)Lcom/tenor/android/core/loader/GlideTaskParams;

    :cond_0
    return-object p0
.end method

.method public setThumbnailMultiplier(F)Lcom/tenor/android/core/loader/GlideTaskParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/tenor/android/core/loader/GlideTaskParams<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 1
    iput p1, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mThumbnailMultiplier:F

    :cond_0
    return-object p0
.end method

.method public setWidth(I)Lcom/tenor/android/core/loader/GlideTaskParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/tenor/android/core/loader/GlideTaskParams<",
            "TT;>;"
        }
    .end annotation

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/tenor/android/core/loader/GlideTaskParams;->mWidth:I

    :cond_0
    return-object p0
.end method
