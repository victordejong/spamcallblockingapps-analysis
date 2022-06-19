.class public final Le/a/k/a/k/r;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/k/a/k/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/k/a/k/x;",
        ">;",
        "Le/a/k/a/k/w;"
    }
.end annotation


# instance fields
.field public d:Lq3/a/p1;

.field public e:Ljava/lang/String;

.field public f:Le/a/k/a/k/a;

.field public g:Le/a/k/a/k/l;

.field public h:Z

.field public i:Ljava/lang/Boolean;

.field public j:Ljava/lang/Long;

.field public k:Le/a/k/a/k/z/a;

.field public final l:Ls1/w/f;

.field public final m:Le/a/k/n/f/d;

.field public final n:Le/a/k/c/u0;

.field public final o:Le/a/k/d;

.field public final p:Le/a/k/a/k/z/c;

.field public final q:Le/a/k/a/k/p;

.field public final r:Le/a/k/c/h2/d;

.field public final s:Le/a/p5/c;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/k/n/f/d;Le/a/k/c/u0;Le/a/k/d;Le/a/k/a/k/z/c;Le/a/k/a/k/p;Le/a/k/c/h2/d;Le/a/p5/c;)V
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

    const-string v0, "incomingVideoRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerIdDownloadLauncher"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessVideoCallerIDAnalytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoPlayingManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playbackMirrorHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/k/a/k/r;->l:Ls1/w/f;

    iput-object p2, p0, Le/a/k/a/k/r;->m:Le/a/k/n/f/d;

    iput-object p3, p0, Le/a/k/a/k/r;->n:Le/a/k/c/u0;

    iput-object p4, p0, Le/a/k/a/k/r;->o:Le/a/k/d;

    iput-object p5, p0, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    iput-object p6, p0, Le/a/k/a/k/r;->q:Le/a/k/a/k/p;

    iput-object p7, p0, Le/a/k/a/k/r;->r:Le/a/k/c/h2/d;

    iput-object p8, p0, Le/a/k/a/k/r;->s:Le/a/p5/c;

    const-string p1, ""

    .line 2
    iput-object p1, p0, Le/a/k/a/k/r;->e:Ljava/lang/String;

    .line 3
    sget-object p1, Le/a/k/a/k/z/a$b;->a:Le/a/k/a/k/z/a$b;

    iput-object p1, p0, Le/a/k/a/k/r;->k:Le/a/k/a/k/z/a;

    return-void
.end method

.method public static final Ij(Le/a/k/a/k/r;Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/k/a/k/r;->f:Le/a/k/a/k/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/k/a/k/a;->a()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/a/k/a/k/r;->g:Le/a/k/a/k/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Le/a/k/a/k/l;->a()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    invoke-interface {v1}, Le/a/k/a/k/z/c;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3
    iget-object v2, p0, Le/a/k/a/k/r;->r:Le/a/k/c/h2/d;

    invoke-virtual {v0}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;->getContext()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    move-result-object v3

    invoke-virtual {v0}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;->getVideoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;->getCallId()Ljava/lang/String;

    move-result-object v6

    move-object v7, p1

    invoke-interface/range {v2 .. v7}, Le/a/k/c/h2/d;->f(Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;)Lq3/a/p1;

    :cond_2
    return-void
.end method

.method public static synthetic Kj(Le/a/k/a/k/r;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;ZLjava/lang/String;Ljava/lang/Long;Ls1/w/d;I)Ljava/lang/Object;
    .locals 10

    and-int/lit8 v0, p8, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object/from16 v9, p7

    .line 1
    invoke-virtual/range {v2 .. v9}, Le/a/k/a/k/r;->Jj(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;ZLjava/lang/String;Ljava/lang/Long;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final Jj(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;ZLjava/lang/String;Ljava/lang/Long;Ls1/w/d;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move-object/from16 v4, p3

    move-object/from16 v15, p5

    move-object/from16 v0, p7

    sget-object v16, Ls1/s;->a:Ls1/s;

    instance-of v1, v0, Le/a/k/a/k/r$a;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/k/a/k/r$a;

    iget v2, v1, Le/a/k/a/k/r$a;->e:I

    const/high16 v3, -0x80000000

    and-int v5, v2, v3

    if-eqz v5, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/k/a/k/r$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/k/a/k/r$a;

    invoke-direct {v1, v6, v0}, Le/a/k/a/k/r$a;-><init>(Le/a/k/a/k/r;Ls1/w/d;)V

    :goto_0
    iget-object v0, v1, Le/a/k/a/k/r$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/k/a/k/r$a;->e:I

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    iget-object v2, v1, Le/a/k/a/k/r$a;->j:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Le/a/k/a/k/r$a;->i:Ljava/lang/Object;

    check-cast v3, Lq3/a/i0;

    iget-object v4, v1, Le/a/k/a/k/r$a;->h:Ljava/lang/Object;

    check-cast v4, Le/a/k/a/k/z/c;

    iget-object v1, v1, Le/a/k/a/k/r$a;->g:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v14, v2

    goto :goto_2

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/k/x;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0, v14}, Le/a/k/a/k/x;->a(Ljava/lang/String;)Z

    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 6
    :goto_1
    iput-object v0, v6, Le/a/k/a/k/r;->i:Ljava/lang/Boolean;

    .line 7
    instance-of v7, v4, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;

    if-nez v7, :cond_7

    if-eqz p4, :cond_4

    .line 8
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    invoke-static {v0, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, v6, Le/a/k/a/k/r;->o:Le/a/k/d;

    iget-object v3, v6, Le/a/k/a/k/r;->e:Ljava/lang/String;

    invoke-interface {v0, v14, v15, v3}, Le/a/k/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_4
    iget-object v0, v6, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    if-eqz p6, :cond_5

    move-object v1, v4

    move-object v3, v6

    move-object v4, v0

    move-object/from16 v0, p6

    goto :goto_3

    :cond_5
    iput-object v4, v1, Le/a/k/a/k/r$a;->g:Ljava/lang/Object;

    iput-object v0, v1, Le/a/k/a/k/r$a;->h:Ljava/lang/Object;

    iput-object v6, v1, Le/a/k/a/k/r$a;->i:Ljava/lang/Object;

    iput-object v14, v1, Le/a/k/a/k/r$a;->j:Ljava/lang/Object;

    iput v5, v1, Le/a/k/a/k/r$a;->e:I

    invoke-virtual {v6, v14, v1}, Le/a/k/a/k/r;->Mj(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_6

    return-object v2

    :cond_6
    move-object v3, v6

    move-object/from16 v17, v4

    move-object v4, v0

    move-object v0, v1

    move-object/from16 v1, v17

    :goto_2
    check-cast v0, Ljava/lang/Long;

    :goto_3
    invoke-interface {v4, v3, v14, v0, v1}, Le/a/k/a/k/z/c;->f(Lq3/a/i0;Ljava/lang/String;Ljava/lang/Long;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;)V

    return-object v16

    .line 12
    :cond_7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 14
    iget-object v0, v6, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    .line 15
    invoke-interface {v0, v6, v14, v3, v4}, Le/a/k/a/k/z/c;->f(Lq3/a/i0;Ljava/lang/String;Ljava/lang/Long;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;)V

    return-object v16

    .line 16
    :cond_8
    new-instance v0, Le/a/k/c/p$a;

    .line 17
    iget-object v10, v6, Le/a/k/a/k/r;->e:Ljava/lang/String;

    .line 18
    move-object v1, v4

    check-cast v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;

    .line 19
    iget v1, v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;->c:F

    float-to-long v12, v1

    move-object v7, v0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v11, p5

    .line 20
    invoke-direct/range {v7 .. v13}, Le/a/k/c/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 21
    iget-object v1, v6, Le/a/k/a/k/r;->n:Le/a/k/c/u0;

    invoke-interface {v1, v0}, Le/a/k/c/u0;->a(Le/a/k/c/p;)V

    .line 22
    iget-object v0, v6, Le/a/k/a/k/r;->d:Lq3/a/p1;

    if-eqz v0, :cond_9

    invoke-static {v0, v3, v5, v3}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_9
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 23
    new-instance v9, Le/a/k/a/k/r$b;

    const/4 v10, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Le/a/k/a/k/r$b;-><init>(Le/a/k/a/k/r;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ls1/w/d;)V

    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    iput-object v0, v6, Le/a/k/a/k/r;->d:Lq3/a/p1;

    if-eqz p4, :cond_a

    .line 24
    iget-object v0, v6, Le/a/k/a/k/r;->o:Le/a/k/d;

    iget-object v1, v6, Le/a/k/a/k/r;->e:Ljava/lang/String;

    invoke-interface {v0, v14, v15, v1}, Le/a/k/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object v16
.end method

.method public final Lj(Ljava/util/List;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;ZLs1/w/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/Number;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Le/a/k/a/k/r$c;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/k/a/k/r$c;

    iget v3, v2, Le/a/k/a/k/r$c;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/k/a/k/r$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/k/a/k/r$c;

    invoke-direct {v2, v0, v1}, Le/a/k/a/k/r$c;-><init>(Le/a/k/a/k/r;Ls1/w/d;)V

    :goto_0
    move-object v10, v2

    iget-object v1, v10, Le/a/k/a/k/r$c;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v10, Le/a/k/a/k/r$c;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v2, v10, Le/a/k/a/k/r$c;->g:Ljava/lang/Object;

    check-cast v2, Le/a/k/a/k/r;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-boolean v3, v10, Le/a/k/a/k/r$c;->j:Z

    iget-object v6, v10, Le/a/k/a/k/r$c;->i:Ljava/lang/Object;

    check-cast v6, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iget-object v7, v10, Le/a/k/a/k/r$c;->h:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v10, Le/a/k/a/k/r$c;->g:Ljava/lang/Object;

    check-cast v8, Le/a/k/a/k/r;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v14, v8

    move v8, v3

    move-object v3, v14

    move-object v15, v7

    move-object v7, v6

    move-object v6, v15

    goto :goto_2

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/k/a/k/r;->m:Le/a/k/n/f/d;

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    const/16 v6, 0xa

    move-object/from16 v7, p1

    invoke-static {v7, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 7
    check-cast v7, Lcom/truecaller/data/entity/Number;

    .line 8
    invoke-virtual {v7}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_4
    iput-object v0, v10, Le/a/k/a/k/r$c;->g:Ljava/lang/Object;

    move-object/from16 v6, p2

    iput-object v6, v10, Le/a/k/a/k/r$c;->h:Ljava/lang/Object;

    move-object/from16 v7, p3

    iput-object v7, v10, Le/a/k/a/k/r$c;->i:Ljava/lang/Object;

    move/from16 v8, p4

    iput-boolean v8, v10, Le/a/k/a/k/r$c;->j:Z

    iput v5, v10, Le/a/k/a/k/r$c;->e:I

    .line 10
    check-cast v1, Le/a/k/n/f/f;

    invoke-virtual {v1, v3, v10}, Le/a/k/n/f/f;->c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_5

    return-object v2

    :cond_5
    move-object v3, v0

    .line 11
    :goto_2
    move-object v9, v1

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/2addr v5, v9

    .line 12
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 13
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v9, 0x0

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    move-object v1, v9

    :goto_3
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_7

    .line 14
    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/k/l/b;

    if-eqz v1, :cond_7

    .line 15
    iget-object v1, v1, Le/a/k/l/b;->e:Lcom/truecaller/videocallerid/data/VideoDetails;

    .line 16
    iget-object v5, v1, Lcom/truecaller/videocallerid/data/VideoDetails;->a:Ljava/lang/String;

    const/4 v11, 0x0

    .line 17
    iget-wide v12, v1, Lcom/truecaller/videocallerid/data/VideoDetails;->c:J

    .line 18
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v12, v13}, Ljava/lang/Long;-><init>(J)V

    const/16 v12, 0x10

    .line 19
    iput-object v3, v10, Le/a/k/a/k/r$c;->g:Ljava/lang/Object;

    iput-object v9, v10, Le/a/k/a/k/r$c;->h:Ljava/lang/Object;

    iput-object v9, v10, Le/a/k/a/k/r$c;->i:Ljava/lang/Object;

    iput v4, v10, Le/a/k/a/k/r$c;->e:I

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v11

    move-object v9, v1

    move v11, v12

    .line 20
    invoke-static/range {v3 .. v11}, Le/a/k/a/k/r;->Kj(Le/a/k/a/k/r;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;ZLjava/lang/String;Ljava/lang/Long;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_8

    return-object v2

    .line 21
    :cond_7
    iget-object v1, v3, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    invoke-interface {v1, v3}, Le/a/k/a/k/z/c;->e(Lq3/a/i0;)V

    .line 22
    :cond_8
    :goto_4
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method

.method public final Mj(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/k/a/k/r$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/a/k/r$d;

    iget v1, v0, Le/a/k/a/k/r$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/k/r$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/k/r$d;

    invoke-direct {v0, p0, p2}, Le/a/k/a/k/r$d;-><init>(Le/a/k/a/k/r;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/a/k/r$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/k/r$d;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p2, p0, Le/a/k/a/k/r;->m:Le/a/k/n/f/d;

    iput v4, v0, Le/a/k/a/k/r$d;->e:I

    check-cast p2, Le/a/k/n/f/f;

    .line 2
    iget-object v2, p2, Le/a/k/n/f/f;->b:Ls1/w/f;

    new-instance v4, Le/a/k/n/f/h;

    invoke-direct {v4, p2, p1, v3}, Le/a/k/n/f/h;-><init>(Le/a/k/n/f/f;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v2, v4, v0}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 3
    :cond_3
    :goto_1
    check-cast p2, Le/a/k/l/b;

    if-eqz p2, :cond_4

    .line 4
    iget-object p1, p2, Le/a/k/l/b;->e:Lcom/truecaller/videocallerid/data/VideoDetails;

    if-eqz p1, :cond_4

    .line 5
    iget-wide p1, p1, Lcom/truecaller/videocallerid/data/VideoDetails;->c:J

    .line 6
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    :cond_4
    return-object v3
.end method

.method public final synthetic Nj(Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p1, Le/a/k/a/k/r$e;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/k/a/k/r$e;

    iget v2, v1, Le/a/k/a/k/r$e;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/k/a/k/r$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/k/a/k/r$e;

    invoke-direct {v1, p0, p1}, Le/a/k/a/k/r$e;-><init>(Le/a/k/a/k/r;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/k/a/k/r$e;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/k/a/k/r$e;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    if-ne v3, v5, :cond_1

    iget-object v1, v1, Le/a/k/a/k/r$e;->g:Ljava/lang/Object;

    check-cast v1, Le/a/k/a/k/x;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v3, v1, Le/a/k/a/k/r$e;->h:Ljava/lang/Object;

    check-cast v3, Le/a/k/a/k/x;

    iget-object v6, v1, Le/a/k/a/k/r$e;->g:Ljava/lang/Object;

    check-cast v6, Le/a/k/a/k/r;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/a/k/r;->g:Le/a/k/a/k/l;

    if-eqz p1, :cond_6

    .line 5
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/k/a/k/x;

    if-eqz v3, :cond_5

    iget-object v7, p0, Le/a/k/a/k/r;->q:Le/a/k/a/k/p;

    iput-object p0, v1, Le/a/k/a/k/r$e;->g:Ljava/lang/Object;

    iput-object v3, v1, Le/a/k/a/k/r$e;->h:Ljava/lang/Object;

    iput v6, v1, Le/a/k/a/k/r$e;->e:I

    check-cast v7, Le/a/k/a/k/q;

    invoke-virtual {v7, p1, v1}, Le/a/k/a/k/q;->e(Le/a/k/a/k/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    move-object v6, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v3, p1}, Le/a/k/a/k/x;->b(Z)V

    move-object p1, v0

    goto :goto_2

    :cond_5
    move-object v6, p0

    move-object p1, v4

    :goto_2
    if-eqz p1, :cond_7

    goto :goto_4

    :cond_6
    move-object v6, p0

    .line 6
    :cond_7
    iget-object p1, v6, Le/a/k/a/k/r;->f:Le/a/k/a/k/a;

    if-eqz p1, :cond_9

    .line 7
    iget-object v3, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/k/a/k/x;

    if-eqz v3, :cond_9

    iget-object v6, v6, Le/a/k/a/k/r;->q:Le/a/k/a/k/p;

    iput-object v3, v1, Le/a/k/a/k/r$e;->g:Ljava/lang/Object;

    iput-object v4, v1, Le/a/k/a/k/r$e;->h:Ljava/lang/Object;

    iput v5, v1, Le/a/k/a/k/r$e;->e:I

    check-cast v6, Le/a/k/a/k/q;

    invoke-virtual {v6, p1, v1}, Le/a/k/a/k/q;->d(Le/a/k/a/k/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_8

    return-object v2

    :cond_8
    move-object v1, v3

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v1, p1}, Le/a/k/a/k/x;->b(Z)V

    :cond_9
    :goto_4
    return-object v0
.end method

.method public Oj()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/k/a/k/r;->g:Le/a/k/a/k/l;

    instance-of v1, v0, Le/a/k/a/k/l$c;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Le/a/k/a/k/l$c;

    .line 2
    iget-object v1, p0, Le/a/k/a/k/r;->f:Le/a/k/a/k/a;

    instance-of v3, v1, Le/a/k/a/k/a$c;

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_1
    check-cast v1, Le/a/k/a/k/a$c;

    if-eqz v0, :cond_2

    .line 3
    iget-object v3, v0, Le/a/k/a/k/l$c;->b:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 4
    iget-object v3, v1, Le/a/k/a/k/a$c;->b:Ljava/lang/String;

    :goto_0
    move-object v5, v3

    goto :goto_1

    :cond_3
    move-object v5, v2

    :goto_1
    const/4 v3, 0x1

    if-eqz v5, :cond_9

    if-eqz v0, :cond_4

    .line 5
    iget-boolean v4, v0, Le/a/k/a/k/l$c;->d:Z

    if-eq v4, v3, :cond_5

    :cond_4
    if-eqz v1, :cond_6

    .line 6
    iget-boolean v4, v1, Le/a/k/a/k/a$c;->d:Z

    if-ne v4, v3, :cond_6

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    if-eqz v0, :cond_7

    .line 7
    iget-object v0, v0, Le/a/k/a/k/l$c;->e:Ljava/lang/String;

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    .line 8
    iget-object v0, v1, Le/a/k/a/k/a$c;->f:Ljava/lang/String;

    goto :goto_3

    :cond_8
    move-object v0, v2

    :goto_3
    move-object v8, v0

    if-eqz v4, :cond_9

    .line 9
    iget-object v0, p0, Le/a/k/a/k/r;->s:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    iget-object v4, p0, Le/a/k/a/k/r;->j:Ljava/lang/Long;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v0, v6

    .line 10
    iget-object v4, p0, Le/a/k/a/k/r;->o:Le/a/k/d;

    iget-object v9, p0, Le/a/k/a/k/r;->e:Ljava/lang/String;

    invoke-interface/range {v4 .. v9}, Le/a/k/d;->d(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_9
    iput-object v2, p0, Le/a/k/a/k/r;->i:Ljava/lang/Boolean;

    .line 12
    iput-object v2, p0, Le/a/k/a/k/r;->g:Le/a/k/a/k/l;

    .line 13
    iput-object v2, p0, Le/a/k/a/k/r;->f:Le/a/k/a/k/a;

    .line 14
    iput-object v2, p0, Le/a/k/a/k/r;->j:Ljava/lang/Long;

    .line 15
    iget-object v0, p0, Le/a/k/a/k/r;->d:Lq3/a/p1;

    if-eqz v0, :cond_a

    invoke-static {v0, v2, v3, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 16
    :cond_a
    iget-object v0, p0, Le/a/k/a/k/r;->n:Le/a/k/c/u0;

    invoke-interface {v0}, Le/a/k/c/u0;->j()Lq3/a/w2/h;

    move-result-object v0

    sget-object v1, Le/a/k/c/t0$b;->a:Le/a/k/c/t0$b;

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    invoke-interface {v0, p0}, Le/a/k/a/k/z/c;->e(Lq3/a/i0;)V

    return-void
.end method

.method public final Pj(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k/a/k/r;->f:Le/a/k/a/k/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/k/a/k/x;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Le/a/k/a/k/a;->b()Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v1, v0, p1}, Le/a/k/a/k/x;->c(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Z)V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Le/a/k/a/k/x;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    invoke-interface {p1}, Le/a/k/a/k/z/c;->p1()Lq3/a/x2/i1;

    move-result-object p1

    .line 5
    new-instance v0, Le/a/k/a/k/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/k/a/k/s;-><init>(Le/a/k/a/k/r;Ls1/w/d;)V

    .line 6
    new-instance v2, Lq3/a/x2/u0;

    invoke-direct {v2, p1, v0}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 7
    invoke-static {v2, p0}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    .line 8
    iget-object p1, p0, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    invoke-interface {p1}, Le/a/k/a/k/z/c;->b()Lq3/a/x2/e1;

    move-result-object p1

    new-instance v0, Le/a/k/a/k/t;

    invoke-direct {v0, p0, v1}, Le/a/k/a/k/t;-><init>(Le/a/k/a/k/r;Ls1/w/d;)V

    .line 9
    new-instance v1, Lq3/a/x2/u0;

    invoke-direct {v1, p1, v0}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 10
    invoke-static {v1, p0}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/k/a/k/r;->Oj()V

    .line 2
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 3
    iget-object v0, p0, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    invoke-interface {v0}, Le/a/k/a/k/z/c;->release()V

    return-void
.end method
