.class public final Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->f(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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

    iput-object p1, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$c;->b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;

    iput-boolean p2, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$c;->c:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$c;->b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;

    invoke-static {v0}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->a(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;)Le/a/k/m/o;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/o;->e:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "binding.muteButton"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$c;->c:Z

    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
