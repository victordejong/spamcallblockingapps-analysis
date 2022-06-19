.class public final Le/a/k/a/k/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/k/a/k/k;


# direct methods
.method public constructor <init>(Le/a/k/a/k/k;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/j;->a:Le/a/k/a/k/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/k/a/k/j;->a:Le/a/k/a/k/k;

    iget-object p1, p1, Le/a/k/a/k/k;->b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->b(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;ZI)V

    .line 2
    iget-object p1, p0, Le/a/k/a/k/j;->a:Le/a/k/a/k/k;

    iget-object p1, p1, Le/a/k/a/k/k;->c:Ls1/z/b/a;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method
