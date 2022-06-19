.class public final Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->e(Le/a/k/a/k/l;Ljava/lang/String;)V
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

.field public final synthetic c:Le/a/k/a/k/l;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;Le/a/k/a/k/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$b;->b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;

    iput-object p2, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$b;->c:Le/a/k/a/k/l;

    iput-object p3, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$b;->d:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$b;->b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;

    invoke-static {v0}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->a(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;)Le/a/k/m/o;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/o;->d:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    iget-object v1, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$b;->c:Le/a/k/a/k/l;

    iget-object v2, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;->g(Le/a/k/a/k/l;Ljava/lang/String;)V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
