.class public final Le/a/g/a/b/l$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/b/l;->xk(Lcom/truecaller/data/entity/Contact;)V
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
    c = "com.truecaller.acs.ui.fullscreen.AfterCallScreenPresenter$setLandscapeVideo$1"
    f = "AfterCallScreenPresenter.kt"
    l = {
        0x133
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

    iput-object p1, p0, Le/a/g/a/b/l$c;->g:Le/a/g/a/b/l;

    iput-object p2, p0, Le/a/g/a/b/l$c;->h:Lcom/truecaller/data/entity/Contact;

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

    new-instance v0, Le/a/g/a/b/l$c;

    iget-object v1, p0, Le/a/g/a/b/l$c;->g:Le/a/g/a/b/l;

    iget-object v2, p0, Le/a/g/a/b/l$c;->h:Lcom/truecaller/data/entity/Contact;

    invoke-direct {v0, v1, v2, p2}, Le/a/g/a/b/l$c;-><init>(Le/a/g/a/b/l;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    iput-object p1, v0, Le/a/g/a/b/l$c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/g/a/b/l$c;

    iget-object v1, p0, Le/a/g/a/b/l$c;->g:Le/a/g/a/b/l;

    iget-object v2, p0, Le/a/g/a/b/l$c;->h:Lcom/truecaller/data/entity/Contact;

    invoke-direct {v0, v1, v2, p2}, Le/a/g/a/b/l$c;-><init>(Le/a/g/a/b/l;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    iput-object p1, v0, Le/a/g/a/b/l$c;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/g/a/b/l$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/g/a/b/l$c;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Le/a/g/a/b/l$c;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

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
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/g/a/b/l$c;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    iget-object v1, p0, Le/a/g/a/b/l$c;->g:Le/a/g/a/b/l;

    invoke-virtual {v1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 6
    iget-object v5, p0, Le/a/g/a/b/l$c;->g:Le/a/g/a/b/l;

    .line 7
    iget-object v5, v5, Le/a/g/a/m;->u0:Le/a/u3/g;

    .line 8
    iget-object v6, v5, Le/a/u3/g;->x4:Le/a/u3/g$a;

    sget-object v7, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v8, 0x11f

    aget-object v7, v7, v8

    invoke-virtual {v6, v5, v7}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v5

    .line 9
    invoke-interface {v5}, Le/a/u3/b;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    iget-object v5, p0, Le/a/g/a/b/l$c;->g:Le/a/g/a/b/l;

    .line 11
    iget-object v6, v5, Le/a/g/a/b/l;->R0:Le/a/b/i/c;

    .line 12
    iget-object v7, p0, Le/a/g/a/b/l$c;->h:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v5}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Le/a/b/i/c;->e(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    .line 13
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_6

    .line 15
    iget-object v5, p0, Le/a/g/a/b/l$c;->g:Le/a/g/a/b/l;

    .line 16
    iget-object v5, v5, Le/a/g/a/b/l;->R0:Le/a/b/i/c;

    const-string v6, "it"

    .line 17
    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Le/a/g/a/b/l$c;->g:Le/a/g/a/b/l;

    invoke-virtual {v6}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v6

    .line 18
    iget-object v6, v6, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Le/a/g/a/b/l$c;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/g/a/b/l$c;->f:I

    invoke-interface {v5, v1, v3, v6, p0}, Le/a/b/i/c;->a(Ljava/lang/String;ZLjava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_3

    :cond_5
    move-object p1, v0

    :cond_6
    move-object v0, p1

    .line 22
    :goto_3
    iget-object p1, p0, Le/a/g/a/b/l$c;->g:Le/a/g/a/b/l;

    .line 23
    iget-object v1, p1, Le/a/g/a/m;->v0:Le/a/k/c/c2;

    .line 24
    iget-object v5, p0, Le/a/g/a/b/l$c;->h:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    .line 25
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 26
    invoke-interface {v1, v5, p1, v3}, Le/a/k/c/c2;->g(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Z)Le/a/k/c/b;

    move-result-object p1

    .line 27
    instance-of v1, p1, Le/a/k/c/b$a;

    if-eqz v1, :cond_7

    .line 28
    iget-object v0, p0, Le/a/g/a/b/l$c;->g:Le/a/g/a/b/l;

    .line 29
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g/a/b/h;

    if-eqz v0, :cond_a

    .line 30
    check-cast p1, Le/a/k/c/b$a;

    .line 31
    iget-object p1, p1, Le/a/k/c/b$a;->a:Le/a/k/a/k/a;

    .line 32
    sget-object v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->FACS_LANDSCAPE_AVATAR:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    invoke-virtual {v1}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Le/a/g/a/h;->tu(Le/a/k/a/k/y;Ljava/lang/String;)V

    .line 33
    invoke-interface {v0}, Le/a/g/a/h;->k6()V

    goto :goto_5

    .line 34
    :cond_7
    instance-of v1, p1, Le/a/k/c/b$b;

    if-eqz v1, :cond_a

    .line 35
    iget-object v1, p0, Le/a/g/a/b/l$c;->g:Le/a/g/a/b/l;

    .line 36
    iput-boolean v4, v1, Le/a/g/a/b/l;->G0:Z

    .line 37
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/b/h;

    if-eqz v1, :cond_8

    .line 38
    check-cast p1, Le/a/k/c/b$b;

    .line 39
    iget-object p1, p1, Le/a/k/c/b$b;->a:Le/a/k/a/k/l;

    .line 40
    sget-object v3, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->FACS_LANDSCAPE:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    invoke-virtual {v3}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Le/a/g/a/h;->V1(Le/a/k/a/k/l;Ljava/lang/String;)V

    .line 41
    :cond_8
    iget-object p1, p0, Le/a/g/a/b/l$c;->g:Le/a/g/a/b/l;

    .line 42
    iget-object p1, p1, Le/a/g/a/b/l;->K0:Ljava/lang/Boolean;

    .line 43
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 45
    iget-object p1, p0, Le/a/g/a/b/l$c;->g:Le/a/g/a/b/l;

    .line 46
    invoke-virtual {p1}, Le/a/g/a/b/l;->Tk()Le/a/g/a/b/h;

    goto :goto_4

    .line 47
    :cond_9
    iget-object p1, p0, Le/a/g/a/b/l$c;->g:Le/a/g/a/b/l;

    .line 48
    invoke-virtual {p1}, Le/a/g/a/b/l;->Uk()Le/a/g/a/b/h;

    .line 49
    :goto_4
    iget-object p1, p0, Le/a/g/a/b/l$c;->g:Le/a/g/a/b/l;

    .line 50
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/b/h;

    if-eqz p1, :cond_a

    .line 51
    invoke-interface {p1}, Le/a/g/a/h;->at()Lq3/a/x2/i1;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 52
    new-instance v1, Le/a/g/a/b/l$c$a;

    invoke-direct {v1, p0, v2}, Le/a/g/a/b/l$c$a;-><init>(Le/a/g/a/b/l$c;Ls1/w/d;)V

    .line 53
    new-instance v2, Lq3/a/x2/u0;

    invoke-direct {v2, p1, v1}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 54
    invoke-static {v2, v0}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    .line 55
    :cond_a
    :goto_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
