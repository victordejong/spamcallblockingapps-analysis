.class public final Le/a/f/a/w/j;
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
    c = "com.truecaller.incallui.callui.phoneAccount.PhoneAccountsPresenter$onPause$1"
    f = "PhoneAccountsPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/f/a/w/k;


# direct methods
.method public constructor <init>(Le/a/f/a/w/k;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/w/j;->e:Le/a/f/a/w/k;

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

    new-instance p1, Le/a/f/a/w/j;

    iget-object v0, p0, Le/a/f/a/w/j;->e:Le/a/f/a/w/k;

    invoke-direct {p1, v0, p2}, Le/a/f/a/w/j;-><init>(Le/a/f/a/w/k;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/f/a/w/j;->e:Le/a/f/a/w/k;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/f/a/w/k;->d:Le/a/f/y/c;

    .line 5
    invoke-interface {p2}, Le/a/f/y/c;->h()Lq3/a/w2/h;

    move-result-object p2

    invoke-static {p2}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/incallui/service/CallState;

    .line 6
    sget-object v1, Lcom/truecaller/incallui/service/CallState;->STATE_SELECT_PHONE_ACCOUNT:Lcom/truecaller/incallui/service/CallState;

    if-ne p2, v1, :cond_0

    .line 7
    invoke-virtual {v0}, Le/a/f/a/w/k;->Ij()V

    :cond_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/f/a/w/j;->e:Le/a/f/a/w/k;

    .line 3
    iget-object p1, p1, Le/a/f/a/w/k;->d:Le/a/f/y/c;

    .line 4
    invoke-interface {p1}, Le/a/f/y/c;->h()Lq3/a/w2/h;

    move-result-object p1

    invoke-static {p1}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/incallui/service/CallState;

    .line 5
    sget-object v0, Lcom/truecaller/incallui/service/CallState;->STATE_SELECT_PHONE_ACCOUNT:Lcom/truecaller/incallui/service/CallState;

    if-ne p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Le/a/f/a/w/j;->e:Le/a/f/a/w/k;

    .line 7
    invoke-virtual {p1}, Le/a/f/a/w/k;->Ij()V

    .line 8
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
