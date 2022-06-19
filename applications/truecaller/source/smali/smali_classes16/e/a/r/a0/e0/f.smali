.class public final Le/a/r/a0/e0/f;
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
        "Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.wizard.welcome.autologin.AutoLoginManagerImpl$maybeRestoreAccount$2"
    f = "AutoLoginManager.kt"
    l = {
        0x43,
        0x44
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/r/a0/e0/e;


# direct methods
.method public constructor <init>(Le/a/r/a0/e0/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a0/e0/f;->f:Le/a/r/a0/e0/e;

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

    new-instance p1, Le/a/r/a0/e0/f;

    iget-object v0, p0, Le/a/r/a0/e0/f;->f:Le/a/r/a0/e0/e;

    invoke-direct {p1, v0, p2}, Le/a/r/a0/e0/f;-><init>(Le/a/r/a0/e0/e;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/a0/e0/f;

    iget-object v0, p0, Le/a/r/a0/e0/f;->f:Le/a/r/a0/e0/e;

    invoke-direct {p1, v0, p2}, Le/a/r/a0/e0/f;-><init>(Le/a/r/a0/e0/e;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/a0/e0/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/r/a0/e0/f;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

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
    iget-object p1, p0, Le/a/r/a0/e0/f;->f:Le/a/r/a0/e0/e;

    .line 5
    iget-object p1, p1, Le/a/r/a0/e0/e;->g:Le/a/r/e/b;

    const/4 v1, 0x0

    const-string v4, "AUTO_LOGIN_STATE"

    .line 6
    invoke-interface {p1, v4, v1}, Le/a/r/e/b;->getInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_5

    iget-object p1, p0, Le/a/r/a0/e0/f;->f:Le/a/r/a0/e0/e;

    iput v3, p0, Le/a/r/a0/e0/f;->e:I

    invoke-virtual {p1, p0}, Le/a/r/a0/e0/e;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    goto :goto_4

    :cond_5
    :goto_1
    if-nez p1, :cond_6

    goto :goto_3

    .line 8
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_8

    iget-object p1, p0, Le/a/r/a0/e0/f;->f:Le/a/r/a0/e0/e;

    iput v2, p0, Le/a/r/a0/e0/f;->e:I

    invoke-virtual {p1, p0}, Le/a/r/a0/e0/e;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    check-cast p1, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    goto :goto_4

    .line 9
    :cond_8
    :goto_3
    iget-object p1, p0, Le/a/r/a0/e0/f;->f:Le/a/r/a0/e0/e;

    sget-object v0, Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;->UNKNOWN_STATE:Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;

    .line 10
    invoke-virtual {p1, v0}, Le/a/r/a0/e0/e;->d(Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;)V

    .line 11
    sget-object p1, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;->LOGOUT:Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    :goto_4
    return-object p1
.end method
