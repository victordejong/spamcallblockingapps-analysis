.class public abstract Lcom/tenor/android/core/loader/WeakRefContentLoaderTaskListener;
.super Lcom/tenor/android/core/weakref/WeakRefObject;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CTX:",
        "Ljava/lang/Object;",
        "T:",
        "Landroid/widget/ImageView;",
        ">",
        "Lcom/tenor/android/core/weakref/WeakRefObject<",
        "TCTX;>;",
        "Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener<",
        "TT;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/tenor/android/core/weakref/WeakRefObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "TCTX;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/tenor/android/core/weakref/WeakRefObject;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public failure(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefObject;->hasRef()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefObject;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/tenor/android/core/loader/WeakRefContentLoaderTaskListener;->failure(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public abstract failure(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;TT;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation
.end method

.method public success(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefObject;->hasRef()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefObject;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/tenor/android/core/loader/WeakRefContentLoaderTaskListener;->success(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public abstract success(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;TT;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation
.end method
