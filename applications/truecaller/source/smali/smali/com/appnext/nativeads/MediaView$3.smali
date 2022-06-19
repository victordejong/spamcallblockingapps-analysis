.class public final Lcom/appnext/nativeads/MediaView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/nativeads/MediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic fN:Lcom/appnext/nativeads/MediaView;


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/MediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/MediaView$3;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView$3;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {v0, p1}, Lcom/appnext/nativeads/MediaView;->a(Lcom/appnext/nativeads/MediaView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$3;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-virtual {p1}, Lcom/appnext/nativeads/MediaView;->isMute()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$3;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {p1}, Lcom/appnext/nativeads/MediaView;->c(Lcom/appnext/nativeads/MediaView;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$3;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {p1}, Lcom/appnext/nativeads/MediaView;->c(Lcom/appnext/nativeads/MediaView;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$3;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {p1}, Lcom/appnext/nativeads/MediaView;->d(Lcom/appnext/nativeads/MediaView;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$3;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {p1}, Lcom/appnext/nativeads/MediaView;->d(Lcom/appnext/nativeads/MediaView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/nativeads/MediaView$3;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {v0}, Lcom/appnext/nativeads/MediaView;->e(Lcom/appnext/nativeads/MediaView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$3;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {p1}, Lcom/appnext/nativeads/MediaView;->c(Lcom/appnext/nativeads/MediaView;)Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/nativeads/MediaView$3;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {v0}, Lcom/appnext/nativeads/MediaView;->f(Lcom/appnext/nativeads/MediaView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 8
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$3;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {p1}, Lcom/appnext/nativeads/MediaView;->c(Lcom/appnext/nativeads/MediaView;)Landroid/media/MediaPlayer;

    move-result-object p1

    new-instance v0, Lcom/appnext/nativeads/MediaView$3$1;

    invoke-direct {v0, p0}, Lcom/appnext/nativeads/MediaView$3$1;-><init>(Lcom/appnext/nativeads/MediaView$3;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/appnext/nativeads/MediaView$3$2;

    invoke-direct {v0, p0}, Lcom/appnext/nativeads/MediaView$3$2;-><init>(Lcom/appnext/nativeads/MediaView$3;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$3;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {p1}, Lcom/appnext/nativeads/MediaView;->c(Lcom/appnext/nativeads/MediaView;)Landroid/media/MediaPlayer;

    move-result-object p1

    new-instance v0, Lcom/appnext/nativeads/MediaView$3$3;

    invoke-direct {v0, p0}, Lcom/appnext/nativeads/MediaView$3$3;-><init>(Lcom/appnext/nativeads/MediaView$3;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
