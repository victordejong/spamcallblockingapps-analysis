.class public interface abstract Lcom/tenor/android/core/loader/IDrawableLoaderTaskParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/loader/ITaskParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/ImageView;",
        "R:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tenor/android/core/loader/ITaskParams;"
    }
.end annotation


# virtual methods
.method public abstract getListener()Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener<",
            "TT;TR;>;"
        }
    .end annotation
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPlaceholder()Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public abstract getTarget()Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
