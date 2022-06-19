.class public final Le/a/r/a0/c0;
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
    c = "com.truecaller.wizard.welcome.WelcomePresenter$requestPermissions$1"
    f = "WelcomePresenter.kt"
    l = {
        0x93,
        0x98,
        0x9b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/r/a0/z;

.field public final synthetic g:Le/a/r/c/d$b;


# direct methods
.method public constructor <init>(Le/a/r/a0/z;Le/a/r/c/d$b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a0/c0;->f:Le/a/r/a0/z;

    iput-object p2, p0, Le/a/r/a0/c0;->g:Le/a/r/c/d$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/a0/c0;

    iget-object v0, p0, Le/a/r/a0/c0;->f:Le/a/r/a0/z;

    iget-object v1, p0, Le/a/r/a0/c0;->g:Le/a/r/c/d$b;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/a0/c0;-><init>(Le/a/r/a0/z;Le/a/r/c/d$b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/a0/c0;

    iget-object v0, p0, Le/a/r/a0/c0;->f:Le/a/r/a0/z;

    iget-object v1, p0, Le/a/r/a0/c0;->g:Le/a/r/c/d$b;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/a0/c0;-><init>(Le/a/r/a0/z;Le/a/r/c/d$b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/a0/c0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/r/a0/c0;->e:I

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

    goto/16 :goto_3

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/r/a0/c0;->g:Le/a/r/c/d$b;

    .line 5
    iget-object p1, p1, Le/a/r/c/d$b;->a:Lcom/truecaller/wizard/utils/RolesToRequest;

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/wizard/utils/RolesToRequest;->shouldAskDefaultDialer()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7
    iget-object p1, p0, Le/a/r/a0/c0;->f:Le/a/r/a0/z;

    .line 8
    iget-object p1, p1, Le/a/r/a0/z;->i:Le/a/h5/m;

    .line 9
    iput v4, p0, Le/a/r/a0/c0;->e:I

    invoke-interface {p1, p0}, Le/a/h5/m;->g(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 10
    iget-object v1, p0, Le/a/r/a0/c0;->f:Le/a/r/a0/z;

    .line 11
    iget-object v1, v1, Le/a/r/a0/z;->k:Le/a/r/a0/q;

    const-string v2, "Shown"

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "action"

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v1, v1, Le/a/r/a0/q;->a:Le/a/q2/a;

    new-instance v6, Le/a/r/a0/d0;

    const-string v7, "DefaultDialer"

    invoke-direct {v6, v7, v2}, Le/a/r/a0/d0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 14
    iget-object v1, p0, Le/a/r/a0/c0;->f:Le/a/r/a0/z;

    .line 15
    iget-object v1, v1, Le/a/r/a0/z;->k:Le/a/r/a0/q;

    if-eqz p1, :cond_5

    const-string p1, "Enabled"

    goto :goto_2

    :cond_5
    const-string p1, "Disabled"

    .line 16
    :goto_2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v1, v1, Le/a/r/a0/q;->a:Le/a/q2/a;

    new-instance v2, Le/a/r/a0/d0;

    invoke-direct {v2, v7, p1}, Le/a/r/a0/d0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 18
    iget-object p1, p0, Le/a/r/a0/c0;->g:Le/a/r/c/d$b;

    .line 19
    iget-object p1, p1, Le/a/r/c/d$b;->a:Lcom/truecaller/wizard/utils/RolesToRequest;

    .line 20
    sget-object v1, Lcom/truecaller/wizard/utils/RolesToRequest;->DefaultDialerAndCallerid:Lcom/truecaller/wizard/utils/RolesToRequest;

    if-ne p1, v1, :cond_7

    .line 21
    iget-object p1, p0, Le/a/r/a0/c0;->f:Le/a/r/a0/z;

    iput v3, p0, Le/a/r/a0/c0;->e:I

    invoke-virtual {p1, p0}, Le/a/r/a0/z;->Mj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 22
    :cond_6
    iget-object p1, p0, Le/a/r/a0/c0;->g:Le/a/r/c/d$b;

    .line 23
    iget-object p1, p1, Le/a/r/c/d$b;->a:Lcom/truecaller/wizard/utils/RolesToRequest;

    .line 24
    sget-object v1, Lcom/truecaller/wizard/utils/RolesToRequest;->CallerId:Lcom/truecaller/wizard/utils/RolesToRequest;

    if-ne p1, v1, :cond_7

    .line 25
    iget-object p1, p0, Le/a/r/a0/c0;->f:Le/a/r/a0/z;

    iput v2, p0, Le/a/r/a0/c0;->e:I

    invoke-virtual {p1, p0}, Le/a/r/a0/z;->Mj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 26
    :cond_7
    :goto_3
    iget-object p1, p0, Le/a/r/a0/c0;->f:Le/a/r/a0/z;

    iget-object v0, p0, Le/a/r/a0/c0;->g:Le/a/r/c/d$b;

    .line 27
    iget-object v0, v0, Le/a/r/c/d$b;->b:Ljava/util/List;

    .line 28
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Le/a/r/a0/z;->Lj()Lq3/a/p1;

    goto :goto_5

    .line 30
    :cond_8
    iget-object v1, p1, Le/a/r/a0/z;->g:Le/a/r/c/l;

    .line 31
    iget-boolean v2, v1, Le/a/r/c/l;->a:Z

    if-nez v2, :cond_9

    iget-object v1, v1, Le/a/r/c/l;->e:Le/a/c3/a;

    invoke-interface {v1}, Le/a/c3/a;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_a

    .line 32
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a0/x;

    if-eqz p1, :cond_b

    invoke-interface {p1, v0}, Le/a/r/a0/x;->Tl(Ljava/util/List;)V

    goto :goto_5

    .line 33
    :cond_a
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a0/x;

    if-eqz p1, :cond_b

    const/16 v1, 0x64

    invoke-interface {p1, v0, v1}, Le/a/r/a0/x;->gp(Ljava/util/List;I)V

    .line 34
    :cond_b
    :goto_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
