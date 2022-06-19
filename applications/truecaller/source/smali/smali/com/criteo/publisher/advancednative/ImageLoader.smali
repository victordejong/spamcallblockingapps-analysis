.class public interface abstract Lcom/criteo/publisher/advancednative/ImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# virtual methods
.method public abstract loadImageInto(Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract preload(Ljava/net/URL;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
