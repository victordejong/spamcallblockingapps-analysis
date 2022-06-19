.class public final Le/a/f/a/w/i;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.incallui.callui.phoneAccount.PhoneAccountsPresenter$listenToCallStateChanges$1"
    f = "PhoneAccountsPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/f/a/w/k;


# direct methods
.method public constructor <init>(Le/a/f/a/w/k;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/w/i;->f:Le/a/f/a/w/k;

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

    new-instance v0, Le/a/f/a/w/i;

    iget-object v1, p0, Le/a/f/a/w/i;->f:Le/a/f/a/w/k;

    invoke-direct {v0, v1, p2}, Le/a/f/a/w/i;-><init>(Le/a/f/a/w/k;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/w/i;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/f/a/w/i;->f:Le/a/f/a/w/k;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Lcom/truecaller/incallui/service/CallState;

    .line 4
    sget-object p2, Lcom/truecaller/incallui/service/CallState;->STATE_SELECT_PHONE_ACCOUNT:Lcom/truecaller/incallui/service/CallState;

    if-eq p1, p2, :cond_1

    .line 5
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/w/h;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/f/a/w/h;->V0()V

    .line 6
    :cond_0
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/w/h;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/f/a/w/h;->t()V

    :cond_1
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f/a/w/i;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/incallui/service/CallState;

    .line 2
    sget-object v0, Lcom/truecaller/incallui/service/CallState;->STATE_SELECT_PHONE_ACCOUNT:Lcom/truecaller/incallui/service/CallState;

    if-eq p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Le/a/f/a/w/i;->f:Le/a/f/a/w/k;

    .line 4
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/w/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/a/w/h;->V0()V

    .line 5
    :cond_0
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/w/h;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/f/a/w/h;->t()V

    .line 6
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
