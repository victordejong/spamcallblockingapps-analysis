.class public final Lcom/appnext/nativeads/MediaView$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/nativeads/MediaView$3;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic fO:Lcom/appnext/nativeads/MediaView$3;


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/MediaView$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/MediaView$3$1;->fO:Lcom/appnext/nativeads/MediaView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$3$1;->fO:Lcom/appnext/nativeads/MediaView$3;

    iget-object p1, p1, Lcom/appnext/nativeads/MediaView$3;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-virtual {p1}, Lcom/appnext/nativeads/MediaView;->isAutoPLay()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$3$1;->fO:Lcom/appnext/nativeads/MediaView$3;

    iget-object p1, p1, Lcom/appnext/nativeads/MediaView$3;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {p1}, Lcom/appnext/nativeads/MediaView;->g(Lcom/appnext/nativeads/MediaView;)Lcom/appnext/nativeads/NativeAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/nativeads/NativeAd;->getNativeAdView()Lcom/appnext/nativeads/NativeAdView;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/nativeads/MediaView$3$1;->fO:Lcom/appnext/nativeads/MediaView$3;

    iget-object v0, v0, Lcom/appnext/nativeads/MediaView$3;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {v0}, Lcom/appnext/nativeads/MediaView;->b(Lcom/appnext/nativeads/MediaView;)Lcom/appnext/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appnext/nativeads/NativeAdView;->getVisiblePercent(Landroid/view/View;)I

    move-result p1

    const/16 v0, 0x5a

    if-le p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$3$1;->fO:Lcom/appnext/nativeads/MediaView$3;

    iget-object p1, p1, Lcom/appnext/nativeads/MediaView$3;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-virtual {p1}, Lcom/appnext/nativeads/MediaView;->play()V

    :cond_0
    return-void
.end method
