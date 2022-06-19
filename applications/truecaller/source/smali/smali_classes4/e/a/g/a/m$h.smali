.class public final Le/a/g/a/m$h;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/m;->mk(Lcom/truecaller/acs/util/VideoCallerIdAcsMoreOption;)V
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
    c = "com.truecaller.acs.ui.AfterCallBasePresenter$onVideoCallerIdOptionClicked$1"
    f = "AfterCallBasePresenter.kt"
    l = {
        0x60b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/g/a/m;


# direct methods
.method public constructor <init>(Le/a/g/a/m;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/m$h;->f:Le/a/g/a/m;

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

    new-instance p1, Le/a/g/a/m$h;

    iget-object v0, p0, Le/a/g/a/m$h;->f:Le/a/g/a/m;

    invoke-direct {p1, v0, p2}, Le/a/g/a/m$h;-><init>(Le/a/g/a/m;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/g/a/m$h;

    iget-object v0, p0, Le/a/g/a/m$h;->f:Le/a/g/a/m;

    invoke-direct {p1, v0, p2}, Le/a/g/a/m$h;-><init>(Le/a/g/a/m;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g/a/m$h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/g/a/m$h;->e:I

    const-string v2, "it"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

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
    iget-object p1, p0, Le/a/g/a/m$h;->f:Le/a/g/a/m;

    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_3

    .line 6
    iget-object v1, p0, Le/a/g/a/m$h;->f:Le/a/g/a/m;

    .line 7
    iget-object v1, v1, Le/a/g/a/m;->w0:Le/a/g/j/r0;

    .line 8
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v4

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->e0()Ljava/util/List;

    move-result-object p1

    const-string v5, "it.tcSourcedNumbers"

    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput v3, p0, Le/a/g/a/m$h;->e:I

    check-cast v1, Le/a/g/j/s0;

    invoke-virtual {v1, v4, p1, p0}, Le/a/g/j/s0;->a(ZLjava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    .line 11
    iget-object p1, p0, Le/a/g/a/m$h;->f:Le/a/g/a/m;

    .line 12
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/h;

    if-eqz p1, :cond_4

    .line 13
    sget-object v0, Lcom/truecaller/acs/ui/ActionButtonType;->VIDEO_CALLER_ID:Lcom/truecaller/acs/ui/ActionButtonType;

    invoke-interface {p1, v0}, Le/a/g/a/h;->ir(Lcom/truecaller/acs/ui/ActionButtonType;)V

    .line 14
    :cond_4
    iget-object p1, p0, Le/a/g/a/m$h;->f:Le/a/g/a/m;

    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    .line 15
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_5

    .line 16
    iget-object v0, p0, Le/a/g/a/m$h;->f:Le/a/g/a/m;

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Le/a/g/a/m;->Dk(Lcom/truecaller/data/entity/Contact;)V

    .line 17
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
