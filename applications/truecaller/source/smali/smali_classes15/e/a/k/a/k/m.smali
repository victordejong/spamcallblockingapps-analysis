.class public final Le/a/k/a/k/m;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/k/m/q;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/m;->b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    iput-object p2, p0, Le/a/k/a/k/m;->c:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/k/a/k/m;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Le/a/k/a/k/m;->b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    .line 2
    sget v2, Lcom/truecaller/videocallerid/R$layout;->layout_video_caller_id_avatar_player:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    sget v1, Lcom/truecaller/videocallerid/R$id;->loadingBackground:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    sget v1, Lcom/truecaller/videocallerid/R$id;->loadingGroup:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/Group;

    if-eqz v5, :cond_0

    .line 8
    sget v1, Lcom/truecaller/videocallerid/R$id;->playerView:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v6, :cond_0

    .line 10
    sget v1, Lcom/truecaller/videocallerid/R$id;->progressBar:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ProgressBar;

    if-eqz v7, :cond_0

    .line 12
    new-instance v1, Le/a/k/m/q;

    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Le/a/k/m/q;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroidx/constraintlayout/widget/Group;Lcom/google/android/exoplayer2/ui/PlayerView;Landroid/widget/ProgressBar;)V

    return-object v1

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
