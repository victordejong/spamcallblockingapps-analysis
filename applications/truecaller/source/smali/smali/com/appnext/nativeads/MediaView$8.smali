.class public final Lcom/appnext/nativeads/MediaView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/appnext/nativeads/MediaView$8;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView$8;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {v0}, Lcom/appnext/nativeads/MediaView;->c(Lcom/appnext/nativeads/MediaView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appnext/nativeads/MediaView$8;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {v0}, Lcom/appnext/nativeads/MediaView;->c(Lcom/appnext/nativeads/MediaView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView$8;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {v0}, Lcom/appnext/nativeads/MediaView;->c(Lcom/appnext/nativeads/MediaView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/appnext/nativeads/MediaView;->a(Lcom/appnext/nativeads/MediaView;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView$8;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {v0}, Lcom/appnext/nativeads/MediaView;->d(Lcom/appnext/nativeads/MediaView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView$8;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {v0}, Lcom/appnext/nativeads/MediaView;->d(Lcom/appnext/nativeads/MediaView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/MediaView$8;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {v1}, Lcom/appnext/nativeads/MediaView;->e(Lcom/appnext/nativeads/MediaView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
