.class public final Le/a/m/t;
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
    c = "com.truecaller.consentrefresh.ConsentRefreshPresenter$onAccept$1"
    f = "ConsentRefreshPresenter.kt"
    l = {
        0x40,
        0x46,
        0x4b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/m/v;


# direct methods
.method public constructor <init>(Le/a/m/v;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/m/t;->g:Le/a/m/v;

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

    new-instance p1, Le/a/m/t;

    iget-object v0, p0, Le/a/m/t;->g:Le/a/m/v;

    invoke-direct {p1, v0, p2}, Le/a/m/t;-><init>(Le/a/m/v;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/m/t;

    iget-object v0, p0, Le/a/m/t;->g:Le/a/m/v;

    invoke-direct {p1, v0, p2}, Le/a/m/t;-><init>(Le/a/m/v;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/m/t;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/m/t;->f:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object v1, p0, Le/a/m/t;->e:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/common/account/Region;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Le/a/m/t;->e:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/common/account/Region;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/m/t;->g:Le/a/m/v;

    .line 5
    iget-object p1, p1, Le/a/m/v;->l:Le/a/b0/e/f;

    .line 6
    invoke-interface {p1}, Le/a/b0/e/f;->f()Lcom/truecaller/common/account/Region;

    move-result-object v1

    .line 7
    sget-object p1, Lcom/truecaller/common/account/Region;->REGION_C:Lcom/truecaller/common/account/Region;

    if-ne v1, p1, :cond_6

    iget-object p1, p0, Le/a/m/t;->g:Le/a/m/v;

    iput-object v1, p0, Le/a/m/t;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/m/t;->f:I

    const-string v5, "region-c"

    invoke-virtual {p1, v5, p0}, Le/a/m/v;->Jj(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 8
    iget-object p1, p0, Le/a/m/t;->g:Le/a/m/v;

    .line 9
    iget-object p1, p1, Le/a/m/v;->g:Le/a/b0/o/a;

    const-string v0, "region_c_reported"

    .line 10
    invoke-interface {p1, v0, v4}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    iget-object p1, p0, Le/a/m/t;->g:Le/a/m/v;

    invoke-static {p1}, Le/a/m/v;->Ij(Le/a/m/v;)V

    .line 12
    iget-object p1, p0, Le/a/m/t;->g:Le/a/m/v;

    .line 13
    iget-object p1, p1, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 14
    check-cast p1, Le/a/m/r;

    if-eqz p1, :cond_5

    .line 15
    invoke-interface {p1}, Le/a/m/r;->h0()V

    .line 16
    :cond_5
    iget-object p1, p0, Le/a/m/t;->g:Le/a/m/v;

    .line 17
    iget-object p1, p1, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 18
    check-cast p1, Le/a/m/r;

    if-eqz p1, :cond_a

    .line 19
    invoke-interface {p1}, Le/a/m/r;->close()V

    goto :goto_3

    .line 20
    :cond_6
    sget-object p1, Lcom/truecaller/common/account/Region;->REGION_ZA:Lcom/truecaller/common/account/Region;

    if-ne v1, p1, :cond_8

    iget-object p1, p0, Le/a/m/t;->g:Le/a/m/v;

    iput-object v1, p0, Le/a/m/t;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/m/t;->f:I

    const-string v3, "region-za"

    invoke-virtual {p1, v3, p0}, Le/a/m/v;->Jj(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 21
    iget-object p1, p0, Le/a/m/t;->g:Le/a/m/v;

    .line 22
    iget-object p1, p1, Le/a/m/v;->h:Le/a/b0/e/r/a;

    const-string v0, "region_za_policy_accepted"

    .line 23
    invoke-interface {p1, v0, v4}, Le/a/b0/e/r/a;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    iget-object p1, p0, Le/a/m/t;->g:Le/a/m/v;

    invoke-static {p1}, Le/a/m/v;->Ij(Le/a/m/v;)V

    .line 25
    iget-object p1, p0, Le/a/m/t;->g:Le/a/m/v;

    .line 26
    iget-object p1, p1, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 27
    check-cast p1, Le/a/m/r;

    if-eqz p1, :cond_a

    .line 28
    invoke-interface {p1}, Le/a/m/r;->l1()V

    goto :goto_3

    .line 29
    :cond_8
    sget-object p1, Lcom/truecaller/common/account/Region;->REGION_BR:Lcom/truecaller/common/account/Region;

    if-ne v1, p1, :cond_a

    iget-object p1, p0, Le/a/m/t;->g:Le/a/m/v;

    const/4 v1, 0x0

    iput-object v1, p0, Le/a/m/t;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/m/t;->f:I

    const-string v1, "region-br"

    invoke-virtual {p1, v1, p0}, Le/a/m/v;->Jj(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 30
    iget-object p1, p0, Le/a/m/t;->g:Le/a/m/v;

    .line 31
    iget-object p1, p1, Le/a/m/v;->h:Le/a/b0/e/r/a;

    const-string v0, "region_br_policy_accepted"

    .line 32
    invoke-interface {p1, v0, v4}, Le/a/b0/e/r/a;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    iget-object p1, p0, Le/a/m/t;->g:Le/a/m/v;

    invoke-static {p1}, Le/a/m/v;->Ij(Le/a/m/v;)V

    .line 34
    iget-object p1, p0, Le/a/m/t;->g:Le/a/m/v;

    .line 35
    iget-object p1, p1, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 36
    check-cast p1, Le/a/m/r;

    if-eqz p1, :cond_a

    .line 37
    invoke-interface {p1}, Le/a/m/r;->l1()V

    .line 38
    :cond_a
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
