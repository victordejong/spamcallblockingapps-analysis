.class public final Le/a/g/a/a/i$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/a/i;->Dk(Lcom/truecaller/data/entity/Contact;)V
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
    c = "com.truecaller.acs.ui.popup.AfterCallPopupPresenter$setProfilePicture$1"
    f = "AfterCallPopupPresenter.kt"
    l = {
        0x103,
        0x113
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/g/a/a/i;

.field public final synthetic g:Lcom/truecaller/data/entity/Contact;

.field public final synthetic h:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Le/a/g/a/a/i;Lcom/truecaller/data/entity/Contact;Ls1/z/b/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/a/i$f;->f:Le/a/g/a/a/i;

    iput-object p2, p0, Le/a/g/a/a/i$f;->g:Lcom/truecaller/data/entity/Contact;

    iput-object p3, p0, Le/a/g/a/a/i$f;->h:Ls1/z/b/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/g/a/a/i$f;

    iget-object v0, p0, Le/a/g/a/a/i$f;->f:Le/a/g/a/a/i;

    iget-object v1, p0, Le/a/g/a/a/i$f;->g:Lcom/truecaller/data/entity/Contact;

    iget-object v2, p0, Le/a/g/a/a/i$f;->h:Ls1/z/b/l;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/g/a/a/i$f;-><init>(Le/a/g/a/a/i;Lcom/truecaller/data/entity/Contact;Ls1/z/b/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/g/a/a/i$f;

    iget-object v0, p0, Le/a/g/a/a/i$f;->f:Le/a/g/a/a/i;

    iget-object v1, p0, Le/a/g/a/a/i$f;->g:Lcom/truecaller/data/entity/Contact;

    iget-object v2, p0, Le/a/g/a/a/i$f;->h:Ls1/z/b/l;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/g/a/a/i$f;-><init>(Le/a/g/a/a/i;Lcom/truecaller/data/entity/Contact;Ls1/z/b/l;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g/a/a/i$f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/g/a/a/i$f;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/g/a/a/i$f;->f:Le/a/g/a/a/i;

    .line 5
    iget-object v1, p1, Le/a/g/a/m;->v0:Le/a/k/c/c2;

    .line 6
    iget-object v4, p0, Le/a/g/a/a/i$f;->g:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 8
    sget-object v5, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->PACS:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    iput v3, p0, Le/a/g/a/a/i$f;->e:I

    .line 9
    invoke-interface {v1, v4, p1, v5, p0}, Le/a/k/c/c2;->c(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 10
    :cond_3
    :goto_0
    check-cast p1, Le/a/k/a/k/a;

    if-eqz p1, :cond_4

    .line 11
    iget-object v0, p0, Le/a/g/a/a/i$f;->f:Le/a/g/a/a/i;

    .line 12
    iget-object v0, v0, Le/a/g/a/m;->u0:Le/a/u3/g;

    .line 13
    iget-object v1, v0, Le/a/u3/g;->y5:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x156

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    iget-object v0, p0, Le/a/g/a/a/i$f;->f:Le/a/g/a/a/i;

    .line 16
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g/a/a/h;

    if-eqz v0, :cond_6

    .line 17
    invoke-interface {v0}, Le/a/g/a/h;->k6()V

    goto :goto_2

    .line 18
    :cond_4
    iget-object p1, p0, Le/a/g/a/a/i$f;->f:Le/a/g/a/a/i;

    .line 19
    iget-object v3, p1, Le/a/g/a/m;->v0:Le/a/k/c/c2;

    .line 20
    iget-object v4, p0, Le/a/g/a/a/i$f;->g:Lcom/truecaller/data/entity/Contact;

    .line 21
    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    .line 22
    iget-object v5, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 23
    iget-object p1, p0, Le/a/g/a/a/i$f;->f:Le/a/g/a/a/i;

    .line 24
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance p1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    .line 26
    sget-object v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->LOOP_PARTLY:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    .line 27
    sget-object v6, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;->DO_NOT_PLAY:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;

    .line 28
    invoke-direct {p1, v1, v6}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;)V

    .line 29
    new-instance v6, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;

    invoke-direct {v6, p1}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;)V

    .line 30
    sget-object v7, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->PACS:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    const/4 v8, 0x0

    .line 31
    iget-object p1, p0, Le/a/g/a/a/i$f;->f:Le/a/g/a/a/i;

    .line 32
    iget-object v1, p1, Le/a/g/a/m;->D0:Le/a/e3/a;

    .line 33
    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    .line 34
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    const-string v9, "historyEvent.subscriptionId"

    .line 35
    invoke-static {p1, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Le/a/e3/a;->c(I)Z

    move-result v9

    .line 36
    iget-object v10, p0, Le/a/g/a/a/i$f;->h:Ls1/z/b/l;

    const/16 v12, 0x10

    const/4 v13, 0x0

    iput v2, p0, Le/a/g/a/a/i$f;->e:I

    move-object v11, p0

    .line 37
    invoke-static/range {v3 .. v13}, Le/a/p5/s0/g;->m0(Le/a/k/c/c2;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;ZZLs1/z/b/l;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 38
    :cond_5
    :goto_1
    check-cast p1, Le/a/k/a/k/a;

    .line 39
    iget-object v0, p0, Le/a/g/a/a/i$f;->f:Le/a/g/a/a/i;

    .line 40
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g/a/a/h;

    if-eqz v0, :cond_6

    .line 41
    invoke-interface {v0, p1}, Le/a/g/a/a/h;->fm(Le/a/k/a/k/a;)V

    .line 42
    :cond_6
    :goto_2
    iget-object v0, p0, Le/a/g/a/a/i$f;->f:Le/a/g/a/a/i;

    .line 43
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g/a/a/h;

    if-eqz v0, :cond_7

    .line 44
    sget-object v1, Lcom/truecaller/acs/analytics/AnalyticsContext;->PACS:Lcom/truecaller/acs/analytics/AnalyticsContext;

    invoke-interface {v0, p1, v1}, Le/a/g/a/h;->Vz(Le/a/k/a/k/y;Lcom/truecaller/acs/analytics/AnalyticsContext;)V

    .line 45
    :cond_7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
