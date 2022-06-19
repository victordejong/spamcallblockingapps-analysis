.class public final Le/a/f/a/r$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/a/r;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/incallui/service/CallState;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.callui.InCallUIPresenter$maybeLoadVideoCallerId$2$1"
    f = "InCallUIPresenter.kt"
    l = {
        0xb3,
        0xb7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/f/a/r;


# direct methods
.method public constructor <init>(Le/a/f/a/r;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/r$a;->g:Le/a/f/a/r;

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

    new-instance v0, Le/a/f/a/r$a;

    iget-object v1, p0, Le/a/f/a/r$a;->g:Le/a/f/a/r;

    invoke-direct {v0, v1, p2}, Le/a/f/a/r$a;-><init>(Le/a/f/a/r;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/r$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/a/r$a;

    iget-object v1, p0, Le/a/f/a/r$a;->g:Le/a/f/a/r;

    invoke-direct {v0, v1, p2}, Le/a/f/a/r$a;-><init>(Le/a/f/a/r;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/r$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/f/a/r$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/f/a/r$a;->f:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Le/a/f/a/r$a;->e:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/n;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/f/a/r$a;->e:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/m;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f/a/r$a;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/incallui/service/CallState;

    .line 4
    sget-object v1, Lcom/truecaller/incallui/service/CallState;->STATE_RINGING:Lcom/truecaller/incallui/service/CallState;

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Le/a/f/a/r$a;->g:Le/a/f/a/r;

    iget-object v1, p1, Le/a/f/a/r;->f:Le/a/f/a/n;

    .line 5
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/m;

    if-eqz v3, :cond_d

    .line 6
    iget-object v4, p1, Le/a/f/a/r;->g:Le/a/k/a/k/l$c;

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p1, Le/a/f/a/r;->h:Le/a/f/a/g;

    iput-object v3, p0, Le/a/f/a/r$a;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/f/a/r$a;->f:I

    .line 7
    new-instance v3, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    .line 8
    sget-object v4, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->LOOP_PARTLY:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    .line 9
    sget-object v5, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;->DO_NOT_PLAY:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;

    .line 10
    invoke-direct {v3, v4, v5}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;)V

    .line 11
    new-instance v9, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;

    invoke-direct {v9, v3}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;)V

    .line 12
    iget-object v3, v1, Le/a/f/a/n;->t:Le/a/k/h;

    invoke-interface {v3}, Le/a/k/h;->A()Le/a/k/c/c2;

    move-result-object v6

    .line 13
    iget-object v7, p1, Le/a/f/a/g;->w:Lcom/truecaller/data/entity/Contact;

    .line 14
    iget-object v8, p1, Le/a/f/a/g;->e:Ljava/lang/String;

    .line 15
    sget-object v10, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->INCALLUI:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    .line 16
    iget-boolean p1, v1, Le/a/f/a/n;->i:Z

    xor-int/lit8 v11, p1, 0x1

    move-object v12, p0

    .line 17
    invoke-interface/range {v6 .. v12}, Le/a/k/c/c2;->i(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 18
    :cond_4
    :goto_0
    move-object v4, p1

    check-cast v4, Le/a/k/a/k/l;

    .line 19
    :goto_1
    iget-object p1, p0, Le/a/f/a/r$a;->g:Le/a/f/a/r;

    iget-object v0, p1, Le/a/f/a/r;->f:Le/a/f/a/n;

    iget-object p1, p1, Le/a/f/a/r;->h:Le/a/f/a/g;

    invoke-static {v0, v4, p1}, Le/a/f/a/n;->Ij(Le/a/f/a/n;Le/a/k/a/k/l;Le/a/f/a/g;)Le/a/f/a/m;

    goto/16 :goto_6

    .line 20
    :cond_5
    iget-object v1, p0, Le/a/f/a/r$a;->g:Le/a/f/a/r;

    iget-object v4, v1, Le/a/f/a/r;->f:Le/a/f/a/n;

    iget-object v1, v1, Le/a/f/a/r;->g:Le/a/k/a/k/l$c;

    .line 21
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    .line 22
    iget-boolean v1, v1, Le/a/k/a/k/l$c;->d:Z

    if-ne v1, v2, :cond_6

    move v1, v2

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_2
    if-nez v1, :cond_a

    .line 23
    sget-object v1, Lcom/truecaller/incallui/service/CallState;->STATE_ACTIVE:Lcom/truecaller/incallui/service/CallState;

    if-eq p1, v1, :cond_7

    sget-object v1, Lcom/truecaller/incallui/service/CallState;->STATE_HOLDING:Lcom/truecaller/incallui/service/CallState;

    if-ne p1, v1, :cond_a

    .line 24
    :cond_7
    iget-object p1, p0, Le/a/f/a/r$a;->g:Le/a/f/a/r;

    iget-object v1, p1, Le/a/f/a/r;->f:Le/a/f/a/n;

    iget-object p1, p1, Le/a/f/a/r;->h:Le/a/f/a/g;

    iput-object v1, p0, Le/a/f/a/r$a;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/f/a/r$a;->f:I

    .line 25
    iget-object v2, v1, Le/a/f/a/n;->j:Le/a/f/y/c;

    invoke-interface {v2}, Le/a/f/y/c;->x()Lcom/truecaller/incallui/service/CallType;

    move-result-object v2

    sget-object v3, Lcom/truecaller/incallui/service/CallType;->INCOMING:Lcom/truecaller/incallui/service/CallType;

    if-eq v2, v3, :cond_8

    const/4 p1, 0x0

    goto :goto_3

    .line 26
    :cond_8
    new-instance v2, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    .line 27
    sget-object v3, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->FIRST_FRAME:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    .line 28
    sget-object v4, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;->DO_NOT_PLAY:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;

    .line 29
    invoke-direct {v2, v3, v4}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;)V

    .line 30
    new-instance v8, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$b;

    invoke-direct {v8, v2}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$b;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;)V

    .line 31
    iget-object v2, v1, Le/a/f/a/n;->t:Le/a/k/h;

    invoke-interface {v2}, Le/a/k/h;->A()Le/a/k/c/c2;

    move-result-object v5

    .line 32
    iget-object v6, p1, Le/a/f/a/g;->w:Lcom/truecaller/data/entity/Contact;

    .line 33
    iget-object v7, p1, Le/a/f/a/g;->e:Ljava/lang/String;

    .line 34
    sget-object v9, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->INCALLUI:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    const/4 v10, 0x0

    const/16 v12, 0x10

    const/4 v13, 0x0

    move-object v11, p0

    .line 35
    invoke-static/range {v5 .. v13}, Le/a/p5/s0/g;->S(Le/a/k/c/c2;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    move-object v0, v1

    .line 36
    :goto_4
    check-cast p1, Le/a/k/a/k/l;

    iget-object v1, p0, Le/a/f/a/r$a;->g:Le/a/f/a/r;

    iget-object v1, v1, Le/a/f/a/r;->h:Le/a/f/a/g;

    invoke-static {v0, p1, v1}, Le/a/f/a/n;->Ij(Le/a/f/a/n;Le/a/k/a/k/l;Le/a/f/a/g;)Le/a/f/a/m;

    goto :goto_6

    .line 37
    :cond_a
    iget-object v0, p0, Le/a/f/a/r$a;->g:Le/a/f/a/r;

    iget-object v1, v0, Le/a/f/a/r;->f:Le/a/f/a/n;

    iget-object v0, v0, Le/a/f/a/r;->g:Le/a/k/a/k/l$c;

    .line 38
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_b

    .line 39
    iget-boolean v0, v0, Le/a/k/a/k/l$c;->d:Z

    if-ne v0, v2, :cond_b

    goto :goto_5

    :cond_b
    move v2, v4

    :goto_5
    if-nez v2, :cond_c

    .line 40
    sget-object v0, Lcom/truecaller/incallui/service/CallState;->STATE_DISCONNECTED:Lcom/truecaller/incallui/service/CallState;

    if-ne p1, v0, :cond_c

    goto :goto_6

    .line 41
    :cond_c
    iget-object p1, p0, Le/a/f/a/r$a;->g:Le/a/f/a/r;

    iget-object p1, p1, Le/a/f/a/r;->f:Le/a/f/a/n;

    .line 42
    invoke-virtual {p1}, Le/a/f/a/n;->Lj()V

    .line 43
    :cond_d
    :goto_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
