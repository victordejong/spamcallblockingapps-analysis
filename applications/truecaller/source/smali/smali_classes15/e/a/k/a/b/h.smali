.class public final Le/a/k/a/b/h;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/k/a/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/k/a/b/f;",
        ">;",
        "Le/a/k/a/b/e;"
    }
.end annotation


# instance fields
.field public d:Ljava/lang/Boolean;

.field public final e:Ls1/w/f;

.field public final f:Le/a/k/c/c2;

.field public final g:Le/a/k/c/y0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/k/c/c2;Le/a/k/c/y0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoPlayerConfigProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onboardingManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/k/a/b/h;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/k/a/b/h;->f:Le/a/k/c/c2;

    iput-object p3, p0, Le/a/k/a/b/h;->g:Le/a/k/c/y0;

    return-void
.end method


# virtual methods
.method public final Ij(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/b/f;

    if-eqz p1, :cond_0

    .line 2
    sget v0, Lcom/truecaller/videocallerid/R$drawable;->ic_vid_muted_audio:I

    invoke-interface {p1, v0}, Le/a/k/a/b/f;->ep(I)V

    const/4 v0, 0x1

    .line 3
    invoke-interface {p1, v0}, Le/a/k/a/b/f;->Fr(Z)V

    .line 4
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Le/a/k/a/b/h;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/b/f;

    if-eqz p1, :cond_2

    .line 6
    sget v0, Lcom/truecaller/videocallerid/R$drawable;->ic_vid_unmuted_audio:I

    invoke-interface {p1, v0}, Le/a/k/a/b/f;->ep(I)V

    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Le/a/k/a/b/f;->Fr(Z)V

    .line 8
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Le/a/k/a/b/h;->d:Ljava/lang/Boolean;

    :goto_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 12

    .line 1
    check-cast p1, Le/a/k/a/b/f;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Le/a/k/a/b/f;->Ym()Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideo;

    invoke-virtual {v0}, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideo;->getContact()Lcom/truecaller/data/entity/Contact;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideo;->getType()Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideoType;

    move-result-object v4

    sget-object v5, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideoType;->LANDSCAPE:Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideoType;

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-interface {p1, v2}, Le/a/k/a/b/f;->tr(Z)V

    .line 8
    invoke-virtual {v0}, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideo;->getType()Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideoType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Le/a/k/a/b/h;->f:Le/a/k/c/c2;

    invoke-virtual {v0}, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideo;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Le/a/k/c/c2;->j(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Le/a/k/a/k/l;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Le/a/k/a/b/h;->f:Le/a/k/c/c2;

    .line 11
    invoke-virtual {v0}, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideo;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-interface {p1, v1, v0}, Le/a/k/c/c2;->b(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Le/a/k/a/k/l;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_2
    instance-of v1, v0, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$P2pVideo;

    if-eqz v1, :cond_3

    .line 14
    invoke-interface {p1, v2}, Le/a/k/a/b/f;->tr(Z)V

    .line 15
    new-instance p1, Le/a/k/a/k/l$c;

    .line 16
    check-cast v0, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$P2pVideo;

    invoke-virtual {v0}, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$P2pVideo;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 17
    new-instance v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    .line 18
    sget-object v2, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->LOOP_PARTLY:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    .line 19
    sget-object v4, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;->DO_NOT_PLAY:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;

    .line 20
    invoke-direct {v1, v2, v4}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;)V

    .line 21
    new-instance v5, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;

    invoke-direct {v5, v1}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 22
    invoke-virtual {v0}, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$P2pVideo;->getVideoPlayerAnalyticsInfo()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    move-result-object v10

    const/16 v11, 0x1c

    move-object v4, p1

    .line 23
    invoke-direct/range {v4 .. v11}, Le/a/k/a/k/l$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;I)V

    goto :goto_0

    :cond_3
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_7

    .line 24
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/b/f;

    if-eqz v0, :cond_4

    const-string v1, "FullScreenPopupVideo"

    invoke-interface {v0, p1, v1}, Le/a/k/a/b/f;->qr(Le/a/k/a/k/l;Ljava/lang/String;)V

    .line 25
    :cond_4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/b/f;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/k/a/b/f;->Ym()Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType;

    move-result-object p1

    goto :goto_1

    :cond_5
    move-object p1, v3

    :goto_1
    instance-of p1, p1, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$P2pVideo;

    if-eqz p1, :cond_6

    goto :goto_2

    .line 26
    :cond_6
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/b/f;

    if-eqz p1, :cond_8

    .line 27
    invoke-interface {p1}, Le/a/k/a/b/f;->p1()Lq3/a/x2/i1;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 28
    new-instance v0, Le/a/k/a/b/g;

    invoke-direct {v0, p0, v3}, Le/a/k/a/b/g;-><init>(Le/a/k/a/b/h;Ls1/w/d;)V

    .line 29
    new-instance v1, Lq3/a/x2/u0;

    invoke-direct {v1, p1, v0}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 30
    invoke-static {v1, p0}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    goto :goto_2

    .line 31
    :cond_7
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/b/f;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Le/a/k/a/b/f;->Kk()V

    .line 32
    :cond_8
    :goto_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/b/f;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Le/a/k/a/b/f;->Ym()Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType;

    move-result-object v3

    .line 33
    :cond_9
    instance-of p1, v3, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$P2pVideo;

    if-eqz p1, :cond_a

    iget-object p1, p0, Le/a/k/a/b/h;->g:Le/a/k/c/y0;

    sget-object v0, Lcom/truecaller/videocallerid/utils/OnboardingType;->PACSExpand:Lcom/truecaller/videocallerid/utils/OnboardingType;

    invoke-interface {p1, v0}, Le/a/k/c/y0;->e(Lcom/truecaller/videocallerid/utils/OnboardingType;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 34
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/b/f;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Le/a/k/a/b/f;->gg()V

    :cond_a
    return-void
.end method
