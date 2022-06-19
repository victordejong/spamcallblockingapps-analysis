.class public final Le/a/g/a/b/l$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/b/l;->Dk(Lcom/truecaller/data/entity/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.acs.ui.fullscreen.AfterCallScreenPresenter$setProfilePicture$2"
    f = "AfterCallScreenPresenter.kt"
    l = {
        0xf0,
        0xfa
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/g/a/b/l;

.field public final synthetic h:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/g/a/b/l;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/b/l$e;->g:Le/a/g/a/b/l;

    iput-object p2, p0, Le/a/g/a/b/l$e;->h:Lcom/truecaller/data/entity/Contact;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance v0, Le/a/g/a/b/l$e;

    iget-object v1, p0, Le/a/g/a/b/l$e;->g:Le/a/g/a/b/l;

    iget-object v2, p0, Le/a/g/a/b/l$e;->h:Lcom/truecaller/data/entity/Contact;

    invoke-direct {v0, v1, v2, p2}, Le/a/g/a/b/l$e;-><init>(Le/a/g/a/b/l;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    iput-object p1, v0, Le/a/g/a/b/l$e;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/g/a/b/l$e;

    iget-object v1, p0, Le/a/g/a/b/l$e;->g:Le/a/g/a/b/l;

    iget-object v2, p0, Le/a/g/a/b/l$e;->h:Lcom/truecaller/data/entity/Contact;

    invoke-direct {v0, v1, v2, p2}, Le/a/g/a/b/l$e;-><init>(Le/a/g/a/b/l;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    iput-object p1, v0, Le/a/g/a/b/l$e;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/g/a/b/l$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/g/a/b/l$e;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Le/a/g/a/b/l$e;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v2, p0, Le/a/g/a/b/l$e;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/g/a/b/l$e;->e:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lq3/a/i0;

    .line 4
    iget-object p1, p0, Le/a/g/a/b/l$e;->g:Le/a/g/a/b/l;

    .line 5
    iget-object v5, p1, Le/a/g/a/m;->v0:Le/a/k/c/c2;

    .line 6
    iget-object v6, p0, Le/a/g/a/b/l$e;->h:Lcom/truecaller/data/entity/Contact;

    .line 7
    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    .line 8
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 9
    invoke-interface {v5, v6, p1}, Le/a/k/c/c2;->j(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Le/a/k/a/k/l;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    iget-object p1, p0, Le/a/g/a/b/l$e;->g:Le/a/g/a/b/l;

    .line 11
    iget-object v5, p1, Le/a/g/a/m;->v0:Le/a/k/c/c2;

    .line 12
    iget-object v6, p0, Le/a/g/a/b/l$e;->h:Lcom/truecaller/data/entity/Contact;

    .line 13
    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    .line 14
    iget-object v7, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Le/a/g/a/b/l$e;->g:Le/a/g/a/b/l;

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    .line 18
    sget-object v8, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->WAIT_FOR_BUFFER:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    .line 19
    sget-object v9, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;->PLAY_PARTLY_ONCE_THEN_BUFFER:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;

    .line 20
    invoke-direct {p1, v8, v9}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;)V

    .line 21
    new-instance v8, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;

    invoke-direct {v8, p1}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;)V

    .line 22
    sget-object v9, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->FACS:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    const/4 v10, 0x0

    const/16 v12, 0x10

    const/4 v13, 0x0

    iput-object v2, p0, Le/a/g/a/b/l$e;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/g/a/b/l$e;->f:I

    move-object v11, p0

    .line 23
    invoke-static/range {v5 .. v13}, Le/a/p5/s0/g;->S(Le/a/k/c/c2;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 24
    :cond_4
    :goto_0
    check-cast p1, Le/a/k/a/k/l;

    :goto_1
    if-eqz p1, :cond_a

    .line 25
    iget-object v5, p0, Le/a/g/a/b/l$e;->g:Le/a/g/a/b/l;

    .line 26
    iget-object v5, v5, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/g/a/b/h;

    if-eqz v5, :cond_5

    .line 27
    sget-object v6, Lcom/truecaller/acs/analytics/AnalyticsContext;->FACS:Lcom/truecaller/acs/analytics/AnalyticsContext;

    invoke-interface {v5, p1, v6}, Le/a/g/a/h;->Vz(Le/a/k/a/k/y;Lcom/truecaller/acs/analytics/AnalyticsContext;)V

    .line 28
    :cond_5
    iget-object v5, p0, Le/a/g/a/b/l$e;->g:Le/a/g/a/b/l;

    .line 29
    iget-object v5, v5, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/g/a/b/h;

    if-eqz v5, :cond_6

    const/4 v6, 0x0

    .line 30
    invoke-interface {v5, v6}, Le/a/g/a/b/h;->J2(Z)V

    .line 31
    :cond_6
    iget-object v5, p0, Le/a/g/a/b/l$e;->g:Le/a/g/a/b/l;

    sget-object v6, Lcom/truecaller/acs/ui/fullscreen/BackgroundMode;->FULL_SCREEN_VIDEO:Lcom/truecaller/acs/ui/fullscreen/BackgroundMode;

    .line 32
    iput-object v6, v5, Le/a/g/a/b/l;->F0:Lcom/truecaller/acs/ui/fullscreen/BackgroundMode;

    .line 33
    instance-of v6, p1, Le/a/k/a/k/l$c;

    if-eqz v6, :cond_7

    check-cast p1, Le/a/k/a/k/l$c;

    .line 34
    iget-boolean p1, p1, Le/a/k/a/k/l$c;->d:Z

    if-eqz p1, :cond_7

    .line 35
    iget-object p1, v5, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/b/h;

    if-eqz p1, :cond_7

    .line 36
    invoke-interface {p1}, Le/a/g/a/b/h;->Mg()Lq3/a/x2/i1;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 37
    new-instance v6, Le/a/g/a/b/k;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Le/a/g/a/b/k;-><init>(Le/a/g/a/b/l;Ls1/w/d;)V

    .line 38
    new-instance v7, Lq3/a/x2/u0;

    invoke-direct {v7, p1, v6}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 39
    invoke-static {v7, v5}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    .line 40
    :cond_7
    iget-object p1, p0, Le/a/g/a/b/l$e;->g:Le/a/g/a/b/l;

    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    .line 41
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    if-eqz p1, :cond_9

    const-string v5, "historyEvent.normalizedNumber ?: return@launch"

    .line 42
    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v5, p0, Le/a/g/a/b/l$e;->g:Le/a/g/a/b/l;

    .line 44
    iget-object v5, v5, Le/a/g/a/b/l;->Q0:Le/a/k/h;

    .line 45
    iput-object v2, p0, Le/a/g/a/b/l$e;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/g/a/b/l$e;->f:I

    invoke-interface {v5, p1, p0}, Le/a/k/h;->Q(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_2
    check-cast p1, Le/a/k/l/b;

    if-eqz p1, :cond_9

    .line 46
    iget-object p1, p1, Le/a/k/l/b;->f:Lcom/truecaller/videocallerid/data/VideoType;

    .line 47
    sget-object v1, Lcom/truecaller/videocallerid/data/VideoType;->PredefinedVideo:Lcom/truecaller/videocallerid/data/VideoType;

    if-ne p1, v1, :cond_b

    .line 48
    iget-object p1, p0, Le/a/g/a/b/l$e;->g:Le/a/g/a/b/l;

    iget-object v1, p0, Le/a/g/a/b/l$e;->h:Lcom/truecaller/data/entity/Contact;

    .line 49
    invoke-virtual {p1, v1}, Le/a/g/a/b/l;->Zk(Lcom/truecaller/data/entity/Contact;)V

    .line 50
    iget-object p1, p0, Le/a/g/a/b/l$e;->g:Le/a/g/a/b/l;

    .line 51
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/b/h;

    if-eqz p1, :cond_b

    .line 52
    invoke-interface {p1, v4}, Le/a/g/a/b/h;->J2(Z)V

    goto :goto_3

    :cond_9
    return-object v0

    .line 53
    :cond_a
    iget-object p1, p0, Le/a/g/a/b/l$e;->g:Le/a/g/a/b/l;

    iget-object v1, p0, Le/a/g/a/b/l$e;->h:Lcom/truecaller/data/entity/Contact;

    invoke-static {p1, v1}, Le/a/g/a/b/l;->Pk(Le/a/g/a/b/l;Lcom/truecaller/data/entity/Contact;)V

    .line 54
    iget-object p1, p0, Le/a/g/a/b/l$e;->g:Le/a/g/a/b/l;

    iget-object v1, p0, Le/a/g/a/b/l$e;->h:Lcom/truecaller/data/entity/Contact;

    .line 55
    invoke-virtual {p1, v1}, Le/a/g/a/b/l;->Rk(Lcom/truecaller/data/entity/Contact;)V

    :cond_b
    :goto_3
    return-object v0
.end method
