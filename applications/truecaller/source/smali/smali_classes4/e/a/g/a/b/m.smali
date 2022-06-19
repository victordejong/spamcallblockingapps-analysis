.class public final Le/a/g/a/b/m;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.acs.ui.fullscreen.AfterCallScreenPresenter$maybeUpdateUserBadge$1"
    f = "AfterCallScreenPresenter.kt"
    l = {
        0x1c6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/g/a/b/l;


# direct methods
.method public constructor <init>(Le/a/g/a/b/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/b/m;->g:Le/a/g/a/b/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/g/a/b/m;

    iget-object v0, p0, Le/a/g/a/b/m;->g:Le/a/g/a/b/l;

    invoke-direct {p1, v0, p2}, Le/a/g/a/b/m;-><init>(Le/a/g/a/b/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/g/a/b/m;

    iget-object v0, p0, Le/a/g/a/b/m;->g:Le/a/g/a/b/l;

    invoke-direct {p1, v0, p2}, Le/a/g/a/b/m;-><init>(Le/a/g/a/b/l;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g/a/b/m;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/g/a/b/m;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Le/a/g/a/b/m;->e:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/data/entity/Contact;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/g/a/b/m;->g:Le/a/g/a/b/l;

    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string v2, "historyEvent.normalizedNumber ?: return@launch"

    .line 6
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Le/a/g/a/b/m;->g:Le/a/g/a/b/l;

    invoke-virtual {v2}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v2

    .line 8
    iget-object v2, v2, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_4

    const-string v4, "historyEvent.contact ?: return@launch"

    .line 9
    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v4, p0, Le/a/g/a/b/m;->g:Le/a/g/a/b/l;

    .line 11
    iget-object v4, v4, Le/a/g/a/b/l;->Q0:Le/a/k/h;

    .line 12
    iput-object v2, p0, Le/a/g/a/b/m;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/g/a/b/m;->f:I

    invoke-interface {v4, p1, p0}, Le/a/k/h;->Q(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    move-object v1, v2

    :goto_0
    check-cast p1, Le/a/k/l/b;

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p1, Le/a/k/l/b;->f:Lcom/truecaller/videocallerid/data/VideoType;

    .line 14
    sget-object v2, Lcom/truecaller/videocallerid/data/VideoType;->SelfieVideo:Lcom/truecaller/videocallerid/data/VideoType;

    if-ne p1, v2, :cond_3

    .line 15
    iget-object p1, p0, Le/a/g/a/b/m;->g:Le/a/g/a/b/l;

    .line 16
    iget-object v2, p1, Le/a/g/a/m;->y0:Le/a/z2/a;

    .line 17
    invoke-interface {v2, v1}, Le/a/z2/a;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v2

    .line 18
    invoke-virtual {p1, v1, v2}, Le/a/g/a/m;->Bk(Lcom/truecaller/data/entity/Contact;Z)V

    goto :goto_1

    .line 19
    :cond_3
    iget-object p1, p0, Le/a/g/a/b/m;->g:Le/a/g/a/b/l;

    .line 20
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/b/h;

    if-eqz p1, :cond_4

    .line 21
    invoke-interface {p1}, Le/a/g/a/h;->Si()V

    :cond_4
    :goto_1
    return-object v0
.end method
