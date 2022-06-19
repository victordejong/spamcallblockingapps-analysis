.class public final Le/a/k/a/k/t;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.ui.videoplayer.VideoPlayerPresenter$listenToNotPlayingState$1"
    f = "VideoPlayerPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/k/a/k/r;


# direct methods
.method public constructor <init>(Le/a/k/a/k/r;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/t;->f:Le/a/k/a/k/r;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/a/k/t;

    iget-object v1, p0, Le/a/k/a/k/t;->f:Le/a/k/a/k/r;

    invoke-direct {v0, v1, p2}, Le/a/k/a/k/t;-><init>(Le/a/k/a/k/r;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k/a/k/t;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/k/a/k/t;->f:Le/a/k/a/k/r;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    sget-object p2, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->MEDIA_PLAYER:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    invoke-static {v1, p2}, Le/a/k/a/k/r;->Ij(Le/a/k/a/k/r;Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;)V

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->getEx()Le/m/a/c/b0;

    move-result-object v7

    .line 7
    iget-object p1, v1, Le/a/k/a/k/r;->f:Le/a/k/a/k/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Le/a/k/a/k/a;->a()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v1, Le/a/k/a/k/r;->g:Le/a/k/a/k/l;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Le/a/k/a/k/l;->a()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 8
    iget-object p2, v1, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    invoke-interface {p2}, Le/a/k/a/k/z/c;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 9
    iget-object v2, v1, Le/a/k/a/k/r;->r:Le/a/k/c/h2/d;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;->getContext()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    move-result-object v3

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;->getVideoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v2 .. v7}, Le/a/k/c/h2/d;->e(Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/m/a/c/b0;)Lq3/a/p1;

    goto :goto_1

    .line 10
    :cond_3
    sget-object p1, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->CACHE:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    invoke-static {v1, p1}, Le/a/k/a/k/r;->Ij(Le/a/k/a/k/r;Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/k/a/k/t;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/k/a/k/t;->f:Le/a/k/a/k/r;

    sget-object v1, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->MEDIA_PLAYER:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    invoke-static {v0, v1}, Le/a/k/a/k/r;->Ij(Le/a/k/a/k/r;Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;)V

    .line 4
    iget-object v0, p0, Le/a/k/a/k/t;->f:Le/a/k/a/k/r;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->getEx()Le/m/a/c/b0;

    move-result-object v6

    .line 5
    iget-object p1, v0, Le/a/k/a/k/r;->f:Le/a/k/a/k/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Le/a/k/a/k/a;->a()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Le/a/k/a/k/r;->g:Le/a/k/a/k/l;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Le/a/k/a/k/l;->a()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 6
    iget-object v1, v0, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    invoke-interface {v1}, Le/a/k/a/k/z/c;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 7
    iget-object v1, v0, Le/a/k/a/k/r;->r:Le/a/k/c/h2/d;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;->getContext()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    move-result-object v2

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v1 .. v6}, Le/a/k/c/h2/d;->e(Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/m/a/c/b0;)Lq3/a/p1;

    goto :goto_1

    .line 8
    :cond_3
    iget-object p1, p0, Le/a/k/a/k/t;->f:Le/a/k/a/k/r;

    sget-object v0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->CACHE:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    invoke-static {p1, v0}, Le/a/k/a/k/r;->Ij(Le/a/k/a/k/r;Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;)V

    .line 9
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
