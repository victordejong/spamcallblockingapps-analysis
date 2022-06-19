.class public final Le/a/r/z/u;
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
    c = "com.truecaller.wizard.verification.VerificationPresenterImpl$onVerified$1"
    f = "VerificationPresenter.kt"
    l = {
        0x1ab,
        0x1af,
        0x1b1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/r/z/s;

.field public final synthetic g:Lcom/truecaller/account/network/TokenResponseDto;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/r/z/s;Lcom/truecaller/account/network/TokenResponseDto;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/z/u;->f:Le/a/r/z/s;

    iput-object p2, p0, Le/a/r/z/u;->g:Lcom/truecaller/account/network/TokenResponseDto;

    iput-object p3, p0, Le/a/r/z/u;->h:Ljava/lang/String;

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

    new-instance p1, Le/a/r/z/u;

    iget-object v0, p0, Le/a/r/z/u;->f:Le/a/r/z/s;

    iget-object v1, p0, Le/a/r/z/u;->g:Lcom/truecaller/account/network/TokenResponseDto;

    iget-object v2, p0, Le/a/r/z/u;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/r/z/u;-><init>(Le/a/r/z/s;Lcom/truecaller/account/network/TokenResponseDto;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/z/u;

    iget-object v0, p0, Le/a/r/z/u;->f:Le/a/r/z/s;

    iget-object v1, p0, Le/a/r/z/u;->g:Lcom/truecaller/account/network/TokenResponseDto;

    iget-object v2, p0, Le/a/r/z/u;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/r/z/u;-><init>(Le/a/r/z/s;Lcom/truecaller/account/network/TokenResponseDto;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/z/u;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/r/z/u;->e:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/r/z/u;->f:Le/a/r/z/s;

    .line 5
    iget-object v1, p1, Le/a/r/z/s;->K:Le/a/r/z/n;

    .line 6
    iget-object v5, p0, Le/a/r/z/u;->g:Lcom/truecaller/account/network/TokenResponseDto;

    .line 7
    iget-object v6, p1, Le/a/r/z/s;->i:Ljava/lang/Long;

    .line 8
    iget-object p1, p1, Le/a/r/z/s;->j:Ljava/lang/String;

    .line 9
    iput v4, p0, Le/a/r/z/u;->e:I

    invoke-interface {v1, v5, v6, p1, p0}, Le/a/r/z/n;->a(Lcom/truecaller/account/network/TokenResponseDto;Ljava/lang/Long;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 10
    iget-object v1, p0, Le/a/r/z/u;->f:Le/a/r/z/s;

    const/4 v4, 0x0

    .line 11
    iput-boolean v4, v1, Le/a/r/z/s;->q:Z

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {v1}, Le/a/r/z/s;->Uj()V

    .line 13
    iget-object p1, p0, Le/a/r/z/u;->f:Le/a/r/z/s;

    .line 14
    iget-object p1, p1, Le/a/r/z/s;->A:Ls1/w/f;

    .line 15
    new-instance v1, Le/a/r/z/u$a;

    invoke-direct {v1, p0, v4}, Le/a/r/z/u$a;-><init>(Le/a/r/z/u;Ls1/w/d;)V

    iput v3, p0, Le/a/r/z/u;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 16
    :cond_5
    iget-object p1, v1, Le/a/r/z/s;->A:Ls1/w/f;

    .line 17
    new-instance v1, Le/a/r/z/u$b;

    invoke-direct {v1, p0, v4}, Le/a/r/z/u$b;-><init>(Le/a/r/z/u;Ls1/w/d;)V

    iput v2, p0, Le/a/r/z/u;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 18
    :cond_6
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
