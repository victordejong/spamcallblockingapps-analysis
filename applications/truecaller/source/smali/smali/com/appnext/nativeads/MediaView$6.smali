.class public final Lcom/appnext/nativeads/MediaView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/appnext/nativeads/MediaView$6;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$6;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {p1}, Lcom/appnext/nativeads/MediaView;->b(Lcom/appnext/nativeads/MediaView;)Lcom/appnext/a/a;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$6;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {p1}, Lcom/appnext/nativeads/MediaView;->b(Lcom/appnext/nativeads/MediaView;)Lcom/appnext/a/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$6;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-virtual {p1}, Lcom/appnext/nativeads/MediaView;->isClickEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$6;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-virtual {p1}, Lcom/appnext/nativeads/MediaView;->isAutoPLay()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$6;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {p1}, Lcom/appnext/nativeads/MediaView;->a(Lcom/appnext/nativeads/MediaView;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget v0, Lcom/appnext/nativeads/R$drawable;->apnxt_na_play:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$6;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {p1}, Lcom/appnext/nativeads/MediaView;->i(Lcom/appnext/nativeads/MediaView;)Z

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$6;->fN:Lcom/appnext/nativeads/MediaView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/appnext/nativeads/MediaView;->b(Lcom/appnext/nativeads/MediaView;Z)Z

    .line 7
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$6;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {p1}, Lcom/appnext/nativeads/MediaView;->b(Lcom/appnext/nativeads/MediaView;)Lcom/appnext/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/a/a;->pause()V

    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$6;->fN:Lcom/appnext/nativeads/MediaView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/appnext/nativeads/MediaView;->b(Lcom/appnext/nativeads/MediaView;Z)Z

    .line 9
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$6;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {p1, v0}, Lcom/appnext/nativeads/MediaView;->a(Lcom/appnext/nativeads/MediaView;Z)Z

    .line 10
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView$6;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {p1}, Lcom/appnext/nativeads/MediaView;->b(Lcom/appnext/nativeads/MediaView;)Lcom/appnext/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/a/a;->start()V

    return-void
.end method
