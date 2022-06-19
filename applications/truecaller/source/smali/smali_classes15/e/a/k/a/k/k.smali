.class public final Le/a/k/a/k/k;
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

.field public final synthetic c:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;Ls1/z/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/k;->b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;

    iput-object p2, p0, Le/a/k/a/k/k;->c:Ls1/z/b/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k/a/k/k;->b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;

    invoke-static {v0}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->a(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;)Le/a/k/m/o;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/o;->b:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Le/a/k/a/k/j;

    invoke-direct {v1, p0}, Le/a/k/a/k/j;-><init>(Le/a/k/a/k/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
