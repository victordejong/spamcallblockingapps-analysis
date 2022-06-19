.class public final Le/a/k/a/k/g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/k/m/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/g;->b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;

    iput-object p2, p0, Le/a/k/a/k/g;->c:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/k/a/k/g;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Le/a/k/a/k/g;->b:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;

    const-string v1, "parent"

    .line 2
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget v1, Lcom/truecaller/videocallerid/R$layout;->layout_landscape_video_caller_id:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    sget v0, Lcom/truecaller/videocallerid/R$id;->buttonPlay:I

    .line 5
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v3, :cond_0

    .line 6
    sget v0, Lcom/truecaller/videocallerid/R$id;->container_video_view:I

    .line 7
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/cardview/widget/CardView;

    if-eqz v4, :cond_0

    .line 8
    sget v0, Lcom/truecaller/videocallerid/R$id;->fullscreen_video_player:I

    .line 9
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    if-eqz v5, :cond_0

    .line 10
    sget v0, Lcom/truecaller/videocallerid/R$id;->mute_button:I

    .line 11
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v6, :cond_0

    .line 12
    new-instance v0, Le/a/k/m/o;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Le/a/k/m/o;-><init>(Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/cardview/widget/CardView;Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;Landroidx/appcompat/widget/AppCompatImageView;)V

    return-object v0

    .line 13
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
