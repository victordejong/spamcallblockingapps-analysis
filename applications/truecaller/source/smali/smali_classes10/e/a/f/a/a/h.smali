.class public final Le/a/f/a/a/h;
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
    c = "com.truecaller.incallui.callui.incoming.IncomingCallPresenter$acceptCall$1"
    f = "IncomingCallPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/f/a/a/i;


# direct methods
.method public constructor <init>(Le/a/f/a/a/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/a/h;->e:Le/a/f/a/a/i;

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

    new-instance p1, Le/a/f/a/a/h;

    iget-object v0, p0, Le/a/f/a/a/h;->e:Le/a/f/a/a/i;

    invoke-direct {p1, v0, p2}, Le/a/f/a/a/h;-><init>(Le/a/f/a/a/i;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/f/a/a/h;->e:Le/a/f/a/a/i;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/a/g;

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p2}, Le/a/f/a/a/g;->L()V

    .line 6
    :cond_0
    iget-object p2, v0, Le/a/f/a/a/i;->p:Le/a/f/y/c;

    .line 7
    invoke-interface {p2}, Le/a/f/y/c;->q()V

    .line 8
    iget-object p2, v0, Le/a/f/a/a/i;->k:Lq3/a/w2/h;

    if-eqz p2, :cond_1

    .line 9
    sget-object v0, Lcom/truecaller/incallui/callui/incoming/IncomingCallUIEvent;->ACCEPT_CLICK:Lcom/truecaller/incallui/callui/incoming/IncomingCallUIEvent;

    invoke-interface {p2, v0}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    return-object p1

    :cond_1
    const-string p1, "uiEventsChannel"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/f/a/a/h;->e:Le/a/f/a/a/i;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/a/f/a/a/g;->L()V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/f/a/a/h;->e:Le/a/f/a/a/i;

    .line 6
    iget-object p1, p1, Le/a/f/a/a/i;->p:Le/a/f/y/c;

    .line 7
    invoke-interface {p1}, Le/a/f/y/c;->q()V

    .line 8
    iget-object p1, p0, Le/a/f/a/a/h;->e:Le/a/f/a/a/i;

    .line 9
    iget-object p1, p1, Le/a/f/a/a/i;->k:Lq3/a/w2/h;

    if-eqz p1, :cond_1

    .line 10
    sget-object v0, Lcom/truecaller/incallui/callui/incoming/IncomingCallUIEvent;->ACCEPT_CLICK:Lcom/truecaller/incallui/callui/incoming/IncomingCallUIEvent;

    invoke-interface {p1, v0}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 11
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_1
    const-string p1, "uiEventsChannel"

    .line 12
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
