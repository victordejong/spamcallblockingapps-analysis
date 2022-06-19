.class public interface abstract Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/ImageView;",
        "R:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract failure(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TR;)V"
        }
    .end annotation
.end method

.method public abstract success(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TR;)V"
        }
    .end annotation
.end method
