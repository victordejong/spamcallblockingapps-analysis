.class public final Le/a/k/m/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/j0/a;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/view/View;

.field public final c:Landroid/view/View;

.field public final d:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

.field public final e:Landroid/view/View;

.field public final f:Landroid/view/View;

.field public final g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/k/m/w;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Le/a/k/m/w;->b:Landroid/view/View;

    .line 4
    iput-object p3, p0, Le/a/k/m/w;->c:Landroid/view/View;

    .line 5
    iput-object p4, p0, Le/a/k/m/w;->d:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    .line 6
    iput-object p5, p0, Le/a/k/m/w;->e:Landroid/view/View;

    .line 7
    iput-object p6, p0, Le/a/k/m/w;->f:Landroid/view/View;

    .line 8
    iput-object p7, p0, Le/a/k/m/w;->g:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le/a/k/m/w;
    .locals 8

    .line 1
    sget v0, Lcom/truecaller/videocallerid/R$layout;->view_video_caller_id_preview_compact:I

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    sget p0, Lcom/truecaller/videocallerid/R$id;->circle:I

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    sget p0, Lcom/truecaller/videocallerid/R$id;->frameView:I

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    sget p0, Lcom/truecaller/videocallerid/R$id;->playerView:I

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    if-eqz v4, :cond_0

    .line 8
    sget p0, Lcom/truecaller/videocallerid/R$id;->rect1:I

    .line 9
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 10
    sget p0, Lcom/truecaller/videocallerid/R$id;->rect2:I

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 12
    sget p0, Lcom/truecaller/videocallerid/R$id;->rect3:I

    .line 13
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 14
    new-instance p0, Le/a/k/m/w;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Le/a/k/m/w;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
