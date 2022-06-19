.class public Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/loader/IDrawableLoaderTaskParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/ImageView;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tenor/android/core/loader/IDrawableLoaderTaskParams<",
        "TT;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x343ec0cea8aa8894L


# instance fields
.field private final mImageView:Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mListener:Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener<",
            "TT;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPath:Ljava/lang/String;

.field private mPlaceholder:Landroid/graphics/drawable/Drawable;


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->mImageView:Landroid/widget/ImageView;

    .line 3
    iput-object p2, p0, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListener()Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener<",
            "TT;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->mListener:Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams$1;

    invoke-direct {v0, p0}, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams$1;-><init>(Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;)V

    :goto_0
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceholder()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method public getTarget()Landroid/widget/ImageView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setListener(Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener;)Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener<",
            "TT;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/tenor/android/core/loader/DrawableLoaderTaskParams<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->mListener:Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener;

    return-object p0
.end method

.method public setPlaceholder(I)Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/tenor/android/core/loader/DrawableLoaderTaskParams<",
            "TT;>;"
        }
    .end annotation

    .line 8
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->setPlaceholder(Landroid/graphics/drawable/Drawable;)Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;

    return-object p0
.end method

.method public setPlaceholder(Landroid/content/Context;I)Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/tenor/android/core/loader/DrawableLoaderTaskParams<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 2
    invoke-static {p1, p2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->setPlaceholder(Landroid/graphics/drawable/Drawable;)Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;

    return-object p0
.end method

.method public setPlaceholder(Landroid/graphics/drawable/Drawable;)Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/tenor/android/core/loader/DrawableLoaderTaskParams<",
            "TT;>;"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setPlaceholder(Ljava/lang/String;)Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tenor/android/core/loader/DrawableLoaderTaskParams<",
            "TT;>;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/tenor/android/core/validator/ColorHex;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->setPlaceholder(I)Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;

    return-object p0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "color must be in a valid hex color code"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
