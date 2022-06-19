.class public final Le/a/g/a/a/a$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/a/a;->fm(Le/a/k/a/k/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;

.field public final synthetic b:Le/a/g/a/a/a;

.field public final synthetic c:Le/a/k/a/k/a;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;Le/a/g/a/a/a;Le/a/k/a/k/a;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/a/a$k;->a:Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;

    iput-object p2, p0, Le/a/g/a/a/a$k;->b:Le/a/g/a/a/a;

    iput-object p3, p0, Le/a/g/a/a/a$k;->c:Le/a/k/a/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Le/a/g/a/a/a$k;->b:Le/a/g/a/a/a;

    invoke-virtual {p1}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object p1

    iget-object v0, p0, Le/a/g/a/a/a$k;->a:Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;

    .line 2
    invoke-virtual {v0}, Le/a/k/a/k/c;->getPresenter$video_caller_id_release()Le/a/k/a/k/w;

    move-result-object v0

    check-cast v0, Le/a/k/a/k/r;

    .line 3
    iget-object v0, v0, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    invoke-interface {v0}, Le/a/k/a/k/z/c;->p1()Lq3/a/x2/i1;

    move-result-object v0

    invoke-interface {v0}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Le/a/k/a/k/z/b$e;

    .line 4
    iget-object v1, p0, Le/a/g/a/a/a$k;->a:Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;

    invoke-virtual {v1}, Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le/a/g/a/a/a$k;->c:Le/a/k/a/k/a;

    check-cast p1, Le/a/g/a/a/i;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "avatarVideoConfig"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v2}, Le/a/k/a/k/a;->a()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v2, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    .line 8
    sget-object v3, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->ExpandingPACS:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    .line 9
    invoke-virtual {v0}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;->getCallId()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v0}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;->getVideoId()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-direct {v2, v3, v4, v0}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;-><init>(Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 12
    :goto_0
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g/a/a/h;

    if-eqz v0, :cond_2

    new-instance v3, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$P2pVideo;

    invoke-direct {v3, v1, v2}, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$P2pVideo;-><init>(Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;)V

    invoke-interface {v0, v3}, Le/a/g/a/h;->pe(Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType;)V

    .line 13
    :cond_2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/a/h;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/g/a/h;->finish()V

    :cond_3
    :goto_1
    return-void
.end method
