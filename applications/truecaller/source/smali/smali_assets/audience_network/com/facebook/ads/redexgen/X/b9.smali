.class public final Lcom/facebook/ads/redexgen/X/b9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Mc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/b8;->setListener(Lcom/facebook/ads/MediaViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/MediaViewListener;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/b8;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/b8;Lcom/facebook/ads/MediaViewListener;)V
    .locals 0

    .line 68916
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b9;->A01:Lcom/facebook/ads/redexgen/X/b8;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/b9;->A00:Lcom/facebook/ads/MediaViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AA9()V
    .locals 2

    .line 68917
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b9;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b9;->A01:Lcom/facebook/ads/redexgen/X/b8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b8;->A00(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onComplete(Lcom/facebook/ads/MediaView;)V

    .line 68918
    return-void
.end method

.method public final AAT()V
    .locals 2

    .line 68919
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b9;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b9;->A01:Lcom/facebook/ads/redexgen/X/b8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b8;->A00(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onEnterFullscreen(Lcom/facebook/ads/MediaView;)V

    .line 68920
    return-void
.end method

.method public final AAZ()V
    .locals 2

    .line 68921
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b9;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b9;->A01:Lcom/facebook/ads/redexgen/X/b8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b8;->A00(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onExitFullscreen(Lcom/facebook/ads/MediaView;)V

    .line 68922
    return-void
.end method

.method public final AAd()V
    .locals 2

    .line 68923
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b9;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b9;->A01:Lcom/facebook/ads/redexgen/X/b8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b8;->A00(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onFullscreenBackground(Lcom/facebook/ads/MediaView;)V

    .line 68924
    return-void
.end method

.method public final AAe()V
    .locals 2

    .line 68925
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b9;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b9;->A01:Lcom/facebook/ads/redexgen/X/b8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b8;->A00(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onFullscreenForeground(Lcom/facebook/ads/MediaView;)V

    .line 68926
    return-void
.end method

.method public final ABW()V
    .locals 2

    .line 68927
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b9;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b9;->A01:Lcom/facebook/ads/redexgen/X/b8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b8;->A00(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onPlay(Lcom/facebook/ads/MediaView;)V

    .line 68928
    return-void
.end method

.method public final ACc()V
    .locals 3

    .line 68929
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/b9;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b9;->A01:Lcom/facebook/ads/redexgen/X/b8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b8;->A00(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/MediaView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b9;->A01:Lcom/facebook/ads/redexgen/X/b8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b8;->A01(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVolume()F

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/MediaViewListener;->onVolumeChange(Lcom/facebook/ads/MediaView;F)V

    .line 68930
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 68931
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b9;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b9;->A01:Lcom/facebook/ads/redexgen/X/b8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b8;->A00(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onPause(Lcom/facebook/ads/MediaView;)V

    .line 68932
    return-void
.end method
