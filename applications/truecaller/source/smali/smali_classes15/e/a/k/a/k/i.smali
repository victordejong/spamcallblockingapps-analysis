.class public final Le/a/k/a/k/i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;Z)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/i;->b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;

    iput-boolean p2, p0, Le/a/k/a/k/i;->c:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k/a/k/i;->b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;

    invoke-static {v0}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->a(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;)Le/a/k/m/o;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/o;->b:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Le/a/k/a/k/i;->b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;

    invoke-static {v0}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->a(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;)Le/a/k/m/o;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/o;->b:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "binding.buttonPlay"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Le/a/k/a/k/i;->b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;

    invoke-static {v0}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->a(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;)Le/a/k/m/o;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/o;->c:Landroidx/cardview/widget/CardView;

    const-string v1, "binding.containerVideoView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Le/a/k/a/k/i;->b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;

    iget-boolean v1, p0, Le/a/k/a/k/i;->c:Z

    invoke-virtual {v0, v1}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->f(Z)V

    .line 5
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
