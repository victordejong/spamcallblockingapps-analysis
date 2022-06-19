.class public final Lcom/appnext/nativeads/MediaView$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/appnext/nativeads/MediaView$3$2;->fO:Lcom/appnext/nativeads/MediaView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView$3$2;->fO:Lcom/appnext/nativeads/MediaView$3;

    iget-object v0, v0, Lcom/appnext/nativeads/MediaView$3;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {v0}, Lcom/appnext/nativeads/MediaView;->a(Lcom/appnext/nativeads/MediaView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/MediaView$3$2;->fO:Lcom/appnext/nativeads/MediaView$3;

    iget-object v1, v1, Lcom/appnext/nativeads/MediaView$3;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {v1}, Lcom/appnext/nativeads/MediaView;->b(Lcom/appnext/nativeads/MediaView;)Lcom/appnext/a/a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "MediaView$initVideo"

    .line 2
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
