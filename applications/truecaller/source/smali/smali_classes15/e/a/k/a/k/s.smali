.class public final Le/a/k/a/k/s;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/k/a/k/z/b;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.ui.videoplayer.VideoPlayerPresenter$listenPlayingState$1"
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

    iput-object p1, p0, Le/a/k/a/k/s;->f:Le/a/k/a/k/r;

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

    new-instance v0, Le/a/k/a/k/s;

    iget-object v1, p0, Le/a/k/a/k/s;->f:Le/a/k/a/k/r;

    invoke-direct {v0, v1, p2}, Le/a/k/a/k/s;-><init>(Le/a/k/a/k/r;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k/a/k/s;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/a/k/s;

    iget-object v1, p0, Le/a/k/a/k/s;->f:Le/a/k/a/k/r;

    invoke-direct {v0, v1, p2}, Le/a/k/a/k/s;-><init>(Le/a/k/a/k/r;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k/a/k/s;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k/a/k/s;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/k/a/k/s;->e:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/k/z/b;

    iget-object v0, p0, Le/a/k/a/k/s;->f:Le/a/k/a/k/r;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Ls1/s;->a:Ls1/s;

    instance-of v2, p1, Le/a/k/a/k/z/b$f;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0, v5}, Le/a/k/a/k/r;->Pj(Z)V

    .line 5
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/k/x;

    if-eqz p1, :cond_0

    invoke-interface {p1, v4}, Le/a/k/a/k/x;->setVisibility(Z)V

    .line 6
    :cond_0
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/k/x;

    if-eqz p1, :cond_1b

    invoke-interface {p1, v5}, Le/a/k/a/k/x;->E(Z)V

    goto/16 :goto_8

    .line 7
    :cond_1
    instance-of v2, p1, Le/a/k/a/k/z/b$d;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    instance-of v2, p1, Le/a/k/a/k/z/b$b;

    if-eqz v2, :cond_4

    .line 9
    :goto_0
    invoke-virtual {v0, v4}, Le/a/k/a/k/r;->Pj(Z)V

    .line 10
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/k/x;

    if-eqz p1, :cond_3

    invoke-interface {p1, v5}, Le/a/k/a/k/x;->setVisibility(Z)V

    .line 11
    :cond_3
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/k/x;

    if-eqz p1, :cond_1b

    invoke-interface {p1, v5}, Le/a/k/a/k/x;->E(Z)V

    goto/16 :goto_8

    .line 12
    :cond_4
    instance-of v2, p1, Le/a/k/a/k/z/b$e;

    if-eqz v2, :cond_18

    .line 13
    iget-object v2, v0, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    invoke-interface {v2}, Le/a/k/a/k/z/c;->Y()Le/a/k/a/k/z/a;

    move-result-object v2

    iput-object v2, v0, Le/a/k/a/k/r;->k:Le/a/k/a/k/z/a;

    .line 14
    invoke-virtual {v0, v5}, Le/a/k/a/k/r;->Pj(Z)V

    .line 15
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/k/a/k/x;

    if-eqz v2, :cond_5

    invoke-interface {v2, v4}, Le/a/k/a/k/x;->setVisibility(Z)V

    .line 16
    :cond_5
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/k/a/k/x;

    if-eqz v2, :cond_6

    invoke-interface {v2, v5}, Le/a/k/a/k/x;->E(Z)V

    .line 17
    :cond_6
    iget-object v2, v0, Le/a/k/a/k/r;->g:Le/a/k/a/k/l;

    instance-of v6, v2, Le/a/k/a/k/l$c;

    if-nez v6, :cond_7

    move-object v2, v3

    :cond_7
    check-cast v2, Le/a/k/a/k/l$c;

    .line 18
    iget-object v6, v0, Le/a/k/a/k/r;->f:Le/a/k/a/k/a;

    instance-of v7, v6, Le/a/k/a/k/a$c;

    if-nez v7, :cond_8

    move-object v7, v3

    goto :goto_1

    :cond_8
    move-object v7, v6

    :goto_1
    check-cast v7, Le/a/k/a/k/a$c;

    if-eqz v2, :cond_9

    .line 19
    iget-boolean v8, v2, Le/a/k/a/k/l$c;->d:Z

    if-eq v8, v4, :cond_a

    :cond_9
    if-eqz v7, :cond_b

    .line 20
    iget-boolean v8, v7, Le/a/k/a/k/a$c;->d:Z

    if-ne v8, v4, :cond_b

    :cond_a
    move v8, v4

    goto :goto_2

    :cond_b
    move v8, v5

    :goto_2
    if-eqz v2, :cond_c

    .line 21
    iget-object v9, v2, Le/a/k/a/k/l$c;->b:Ljava/lang/String;

    if-eqz v9, :cond_c

    goto :goto_3

    :cond_c
    if-eqz v7, :cond_d

    .line 22
    iget-object v9, v7, Le/a/k/a/k/a$c;->b:Ljava/lang/String;

    goto :goto_3

    :cond_d
    move-object v9, v3

    :goto_3
    if-eqz v2, :cond_e

    .line 23
    iget-object v10, v2, Le/a/k/a/k/l$c;->c:Ljava/lang/String;

    if-eqz v10, :cond_e

    goto :goto_4

    :cond_e
    if-eqz v7, :cond_f

    .line 24
    iget-object v10, v7, Le/a/k/a/k/a$c;->e:Ljava/lang/String;

    goto :goto_4

    :cond_f
    move-object v10, v3

    :goto_4
    if-eqz v2, :cond_10

    .line 25
    iget-object v2, v2, Le/a/k/a/k/l$c;->e:Ljava/lang/String;

    if-eqz v2, :cond_10

    goto :goto_5

    :cond_10
    if-eqz v7, :cond_11

    .line 26
    iget-object v2, v7, Le/a/k/a/k/a$c;->f:Ljava/lang/String;

    goto :goto_5

    :cond_11
    move-object v2, v3

    :goto_5
    if-eqz v8, :cond_13

    if-eqz v9, :cond_13

    .line 27
    iget-object p1, v0, Le/a/k/a/k/r;->i:Ljava/lang/Boolean;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 28
    :cond_12
    iget-object p1, v0, Le/a/k/a/k/r;->n:Le/a/k/c/u0;

    invoke-interface {p1}, Le/a/k/c/u0;->j()Lq3/a/w2/h;

    move-result-object p1

    new-instance v3, Le/a/k/c/t0$c;

    invoke-direct {v3, v9, v10}, Le/a/k/c/t0$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 29
    iget-object p1, v0, Le/a/k/a/k/r;->o:Le/a/k/d;

    iget-object v3, v0, Le/a/k/a/k/r;->e:Ljava/lang/String;

    invoke-interface {p1, v9, v5, v2, v3}, Le/a/k/d;->b(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 30
    :cond_13
    check-cast p1, Le/a/k/a/k/z/b$e;

    .line 31
    iget-boolean v2, v0, Le/a/k/a/k/r;->h:Z

    if-eqz v2, :cond_14

    goto :goto_7

    :cond_14
    if-eqz v6, :cond_15

    .line 32
    invoke-virtual {v6}, Le/a/k/a/k/a;->a()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    move-result-object v2

    if-eqz v2, :cond_15

    move-object v3, v2

    goto :goto_6

    :cond_15
    iget-object v2, v0, Le/a/k/a/k/r;->g:Le/a/k/a/k/l;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Le/a/k/a/k/l;->a()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    move-result-object v3

    :cond_16
    :goto_6
    if-eqz v3, :cond_17

    .line 33
    iget-object v2, v0, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    invoke-interface {v2}, Le/a/k/a/k/z/c;->getUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_17

    .line 34
    iget-object v5, v0, Le/a/k/a/k/r;->r:Le/a/k/c/h2/d;

    invoke-virtual {v3}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;->getContext()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    move-result-object v6

    invoke-virtual {v3}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;->getVideoId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;->getCallId()Ljava/lang/String;

    move-result-object v9

    .line 35
    iget v10, p1, Le/a/k/a/k/z/b$e;->a:I

    .line 36
    invoke-interface/range {v5 .. v10}, Le/a/k/c/h2/d;->c(Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    iput-boolean v4, v0, Le/a/k/a/k/r;->h:Z

    .line 38
    :cond_17
    :goto_7
    iget-object p1, v0, Le/a/k/a/k/r;->s:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Le/a/k/a/k/r;->j:Ljava/lang/Long;

    goto :goto_8

    .line 39
    :cond_18
    instance-of v2, p1, Le/a/k/a/k/z/b$a;

    if-eqz v2, :cond_1a

    .line 40
    invoke-virtual {v0, v5}, Le/a/k/a/k/r;->Pj(Z)V

    .line 41
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/k/x;

    if-eqz p1, :cond_19

    invoke-interface {p1, v4}, Le/a/k/a/k/x;->setVisibility(Z)V

    .line 42
    :cond_19
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/k/x;

    if-eqz p1, :cond_1b

    invoke-interface {p1, v4}, Le/a/k/a/k/x;->E(Z)V

    goto :goto_8

    .line 43
    :cond_1a
    instance-of p1, p1, Le/a/k/a/k/z/b$c;

    if-eqz p1, :cond_1c

    :cond_1b
    :goto_8
    return-object v1

    :cond_1c
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
