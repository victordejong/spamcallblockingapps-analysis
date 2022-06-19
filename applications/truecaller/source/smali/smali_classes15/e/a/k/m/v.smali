.class public final Le/a/k/m/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/j0/a;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lcom/truecaller/common/ui/avatar/AvatarXView;

.field public final c:Landroid/view/View;

.field public final d:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/view/View;Lcom/truecaller/videocallerid/ui/view/VideoGradientView;Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/k/m/v;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Le/a/k/m/v;->b:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 4
    iput-object p3, p0, Le/a/k/m/v;->c:Landroid/view/View;

    .line 5
    iput-object p5, p0, Le/a/k/m/v;->d:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    .line 6
    iput-object p6, p0, Le/a/k/m/v;->e:Landroid/widget/TextView;

    .line 7
    iput-object p7, p0, Le/a/k/m/v;->f:Landroid/widget/TextView;

    .line 8
    iput-object p8, p0, Le/a/k/m/v;->g:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le/a/k/m/v;
    .locals 10

    .line 1
    sget v0, Lcom/truecaller/videocallerid/R$layout;->view_video_caller_id_preview:I

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    sget p0, Lcom/truecaller/videocallerid/R$id;->avatar:I

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v3, :cond_0

    .line 4
    sget p0, Lcom/truecaller/videocallerid/R$id;->frameView:I

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    sget p0, Lcom/truecaller/videocallerid/R$id;->gradientBackground:I

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/truecaller/videocallerid/ui/view/VideoGradientView;

    if-eqz v5, :cond_0

    .line 8
    sget p0, Lcom/truecaller/videocallerid/R$id;->playerView:I

    .line 9
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    if-eqz v6, :cond_0

    .line 10
    sget p0, Lcom/truecaller/videocallerid/R$id;->textCountry:I

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 12
    sget p0, Lcom/truecaller/videocallerid/R$id;->textPhoneNumber:I

    .line 13
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 14
    sget p0, Lcom/truecaller/videocallerid/R$id;->textProfileName:I

    .line 15
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 16
    new-instance p0, Le/a/k/m/v;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Le/a/k/m/v;-><init>(Landroid/view/View;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/view/View;Lcom/truecaller/videocallerid/ui/view/VideoGradientView;Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 18
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
