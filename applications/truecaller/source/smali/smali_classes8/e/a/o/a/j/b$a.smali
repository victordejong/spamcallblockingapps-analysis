.class public final Le/a/o/a/j/b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/j/b;->Kj()Lq3/a/p1;
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
    c = "com.truecaller.contextcall.ui.truecontext.CallContextPresenter$setupView$1"
    f = "CallContextPresenter.kt"
    l = {
        0x3c,
        0x3e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/o/a/j/b;


# direct methods
.method public constructor <init>(Le/a/o/a/j/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

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

    new-instance p1, Le/a/o/a/j/b$a;

    iget-object v0, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    invoke-direct {p1, v0, p2}, Le/a/o/a/j/b$a;-><init>(Le/a/o/a/j/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/o/a/j/b$a;

    iget-object v0, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    invoke-direct {p1, v0, p2}, Le/a/o/a/j/b$a;-><init>(Le/a/o/a/j/b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/o/a/j/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/o/a/j/b$a;->e:I

    const-string v2, "config"

    const/4 v3, 0x0

    const-string v4, "null cannot be cast to non-null type com.truecaller.contextcall.ui.truecontext.CallContextConfig.CallerId"

    const/4 v5, 0x2

    const-string v6, "null cannot be cast to non-null type com.truecaller.contextcall.ui.truecontext.CallContextConfig.InCallUI"

    const/4 v7, 0x0

    const-string v8, "null cannot be cast to non-null type com.truecaller.contextcall.ui.truecontext.CallContextConfig.Acs"

    const/4 v9, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v9, :cond_1

    if-ne v1, v5, :cond_0

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

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    .line 5
    iget-object v1, p1, Le/a/o/a/j/b;->d:Le/a/o/a/j/a;

    if-eqz v1, :cond_3

    move v10, v9

    goto :goto_0

    :cond_3
    move v10, v7

    :goto_0
    if-eqz v10, :cond_1c

    if-eqz v1, :cond_1b

    .line 6
    instance-of v10, v1, Le/a/o/a/j/a$b;

    if-eqz v10, :cond_5

    invoke-static {p1}, Le/a/o/a/j/b;->Ij(Le/a/o/a/j/b;)Le/a/o/a/j/a;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/o/a/j/a$b;

    .line 7
    iget-object p1, p1, Le/a/o/a/j/a$b;->d:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 8
    iget-object v1, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    .line 9
    iget-object v1, v1, Le/a/o/a/j/b;->j:Le/a/o/c;

    .line 10
    iput v9, p0, Le/a/o/a/j/b$a;->e:I

    invoke-interface {v1, p1, p0}, Le/a/o/c;->H(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p1, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    if-eqz p1, :cond_8

    invoke-static {p1}, Le/a/m0/a1$k;->k1(Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;)Lcom/truecaller/data/entity/CallContextMessage;

    move-result-object p1

    goto :goto_3

    .line 11
    :cond_5
    instance-of v10, v1, Le/a/o/a/j/a$a;

    if-eqz v10, :cond_6

    invoke-static {p1}, Le/a/o/a/j/b;->Ij(Le/a/o/a/j/b;)Le/a/o/a/j/a;

    move-result-object p1

    invoke-static {p1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/o/a/j/a$a;

    .line 12
    iget-object p1, p1, Le/a/o/a/j/a$a;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 13
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->v:Lcom/truecaller/data/entity/CallContextMessage;

    goto :goto_3

    .line 14
    :cond_6
    instance-of v1, v1, Le/a/o/a/j/a$c;

    if-eqz v1, :cond_1a

    invoke-static {p1}, Le/a/o/a/j/b;->Ij(Le/a/o/a/j/b;)Le/a/o/a/j/a;

    move-result-object p1

    invoke-static {p1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/o/a/j/a$c;

    .line 15
    iget-object p1, p1, Le/a/o/a/j/a$c;->d:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 16
    iget-object v1, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    .line 17
    iget-object v1, v1, Le/a/o/a/j/b;->j:Le/a/o/c;

    .line 18
    iput v5, p0, Le/a/o/a/j/b$a;->e:I

    invoke-interface {v1, p1, p0}, Le/a/o/c;->H(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    check-cast p1, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    if-eqz p1, :cond_8

    invoke-static {p1}, Le/a/m0/a1$k;->k1(Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;)Lcom/truecaller/data/entity/CallContextMessage;

    move-result-object p1

    goto :goto_3

    :cond_8
    move-object p1, v3

    .line 19
    :goto_3
    iget-object v0, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    .line 20
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/m5/d;

    if-eqz v1, :cond_a

    .line 21
    iget-object v0, v0, Le/a/o/a/j/b;->l:Le/a/p5/c0;

    .line 22
    sget v5, Lcom/truecaller/contextcall/R$string;->call_reason:I

    new-array v10, v7, [Ljava/lang/Object;

    invoke-interface {v0, v5, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "resourceProvider.getString(R.string.call_reason)"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Le/a/m5/d;->setLabel(Ljava/lang/String;)V

    if-eqz p1, :cond_9

    .line 23
    iget-object v0, p1, Lcom/truecaller/data/entity/CallContextMessage;->c:Ljava/lang/String;

    .line 24
    invoke-interface {v1, v0}, Le/a/m5/d;->setMessage(Ljava/lang/String;)V

    .line 25
    :cond_9
    iget-object v0, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    .line 26
    iget v0, v0, Le/a/o/a/j/b;->g:I

    .line 27
    invoke-interface {v1, v0}, Le/a/m5/d;->setMessageMaxLength(I)V

    .line 28
    iget-object v0, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    .line 29
    iget-boolean v0, v0, Le/a/o/a/j/b;->f:Z

    .line 30
    invoke-interface {v1, v0}, Le/a/m5/d;->setIsExpandable(Z)V

    .line 31
    iget-object v0, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    invoke-static {v0}, Le/a/o/a/j/b;->Ij(Le/a/o/a/j/b;)Le/a/o/a/j/a;

    move-result-object v5

    .line 32
    iget-boolean v5, v5, Le/a/o/a/j/a;->a:Z

    xor-int/2addr v5, v9

    .line 33
    iput-boolean v5, v0, Le/a/o/a/j/b;->e:Z

    .line 34
    iget-object v0, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    .line 35
    iget-boolean v0, v0, Le/a/o/a/j/b;->e:Z

    .line 36
    invoke-interface {v1, v0}, Le/a/m5/d;->setIsExpanded(Z)V

    .line 37
    :cond_a
    iget-object v0, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    .line 38
    iget-boolean v1, v0, Le/a/o/a/j/b;->h:Z

    if-nez v1, :cond_c

    if-eqz p1, :cond_c

    .line 39
    iget-object v1, v0, Le/a/o/a/j/b;->j:Le/a/o/c;

    .line 40
    iget-object p1, p1, Lcom/truecaller/data/entity/CallContextMessage;->a:Ljava/lang/String;

    .line 41
    iget-object v0, v0, Le/a/o/a/j/b;->d:Le/a/o/a/j/a;

    if-eqz v0, :cond_b

    .line 42
    iget-object v0, v0, Le/a/o/a/j/a;->b:Ljava/lang/String;

    .line 43
    invoke-interface {v1, p1, v0}, Le/a/o/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    .line 45
    iput-boolean v9, p1, Le/a/o/a/j/b;->h:Z

    goto :goto_4

    .line 46
    :cond_b
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 47
    :cond_c
    :goto_4
    iget-object p1, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    invoke-static {p1}, Le/a/o/a/j/b;->Ij(Le/a/o/a/j/b;)Le/a/o/a/j/a;

    move-result-object p1

    .line 48
    instance-of v0, p1, Le/a/o/a/j/a$b;

    if-eqz v0, :cond_e

    iget-object p1, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    invoke-static {p1}, Le/a/o/a/j/b;->Ij(Le/a/o/a/j/b;)Le/a/o/a/j/a;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/o/a/j/a$b;

    .line 49
    iget-object v0, v0, Le/a/o/a/j/a$b;->c:Lcom/truecaller/data/entity/Contact;

    .line 50
    invoke-virtual {p1, v0}, Le/a/o/a/j/b;->Lj(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Le/a/o/a/j/b;->k:Le/a/o/a/j/c;

    invoke-interface {v0}, Le/a/o/a/j/c;->f()Le/a/m5/e;

    move-result-object v0

    goto :goto_5

    .line 51
    :cond_d
    iget-object v0, p1, Le/a/o/a/j/b;->k:Le/a/o/a/j/c;

    invoke-interface {v0}, Le/a/o/a/j/c;->a()Le/a/m5/e;

    move-result-object v0

    .line 52
    :goto_5
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/m5/d;

    if-eqz p1, :cond_19

    invoke-interface {p1, v0}, Le/a/m5/d;->P(Le/a/m5/e;)V

    goto/16 :goto_a

    .line 53
    :cond_e
    instance-of v0, p1, Le/a/o/a/j/a$a;

    if-eqz v0, :cond_16

    iget-object p1, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    invoke-static {p1}, Le/a/o/a/j/b;->Ij(Le/a/o/a/j/b;)Le/a/o/a/j/a;

    move-result-object p1

    invoke-static {p1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/o/a/j/a$a;

    .line 54
    iget-object p1, p1, Le/a/o/a/j/a$a;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 55
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_19

    .line 56
    iget-object v0, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    invoke-static {v1}, Le/a/o/a/j/b;->Ij(Le/a/o/a/j/b;)Le/a/o/a/j/a;

    move-result-object v1

    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/o/a/j/a$a;

    .line 57
    iget-boolean v1, v1, Le/a/o/a/j/a$a;->d:Z

    .line 58
    iget-object v2, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    invoke-static {v2}, Le/a/o/a/j/b;->Ij(Le/a/o/a/j/b;)Le/a/o/a/j/a;

    move-result-object v2

    invoke-static {v2, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Le/a/o/a/j/a$a;

    .line 59
    iget-object v2, v2, Le/a/o/a/j/a$a;->e:Le/a/m5/b;

    if-eqz v2, :cond_f

    if-nez v1, :cond_f

    move v3, v9

    goto :goto_6

    :cond_f
    move v3, v7

    :goto_6
    if-eqz v2, :cond_10

    .line 60
    iget-boolean v4, v2, Le/a/m5/b;->a:Z

    goto :goto_7

    :cond_10
    move v4, v7

    :goto_7
    if-eqz v2, :cond_11

    .line 61
    iget-boolean v2, v2, Le/a/m5/b;->a:Z

    if-nez v2, :cond_11

    move v7, v9

    :cond_11
    if-eqz v1, :cond_12

    .line 62
    invoke-virtual {v0, p1}, Le/a/o/a/j/b;->Lj(Lcom/truecaller/data/entity/Contact;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object p1, v0, Le/a/o/a/j/b;->k:Le/a/o/a/j/c;

    invoke-interface {p1}, Le/a/o/a/j/c;->g()Le/a/m5/e;

    move-result-object p1

    goto :goto_8

    .line 63
    :cond_12
    invoke-virtual {v0, p1}, Le/a/o/a/j/b;->Lj(Lcom/truecaller/data/entity/Contact;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, v0, Le/a/o/a/j/b;->k:Le/a/o/a/j/c;

    invoke-interface {p1}, Le/a/o/a/j/c;->f()Le/a/m5/e;

    move-result-object p1

    goto :goto_8

    :cond_13
    if-eqz v3, :cond_14

    if-eqz v4, :cond_14

    .line 64
    iget-object p1, v0, Le/a/o/a/j/b;->k:Le/a/o/a/j/c;

    invoke-interface {p1}, Le/a/o/a/j/c;->e()Le/a/m5/e;

    move-result-object p1

    goto :goto_8

    :cond_14
    if-eqz v3, :cond_15

    if-eqz v7, :cond_15

    .line 65
    iget-object p1, v0, Le/a/o/a/j/b;->k:Le/a/o/a/j/c;

    invoke-interface {p1}, Le/a/o/a/j/c;->c()Le/a/m5/e;

    move-result-object p1

    goto :goto_8

    .line 66
    :cond_15
    iget-object p1, v0, Le/a/o/a/j/b;->k:Le/a/o/a/j/c;

    invoke-interface {p1}, Le/a/o/a/j/c;->a()Le/a/m5/e;

    move-result-object p1

    .line 67
    :goto_8
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/m5/d;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1}, Le/a/m5/d;->P(Le/a/m5/e;)V

    goto :goto_a

    .line 68
    :cond_16
    instance-of p1, p1, Le/a/o/a/j/a$c;

    if-eqz p1, :cond_19

    iget-object p1, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    invoke-static {p1}, Le/a/o/a/j/b;->Ij(Le/a/o/a/j/b;)Le/a/o/a/j/a;

    move-result-object v0

    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/o/a/j/a$c;

    .line 69
    iget-boolean v0, v0, Le/a/o/a/j/a$c;->e:Z

    .line 70
    iget-object v1, p0, Le/a/o/a/j/b$a;->f:Le/a/o/a/j/b;

    invoke-static {v1}, Le/a/o/a/j/b;->Ij(Le/a/o/a/j/b;)Le/a/o/a/j/a;

    move-result-object v1

    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/o/a/j/a$c;

    .line 71
    iget-object v1, v1, Le/a/o/a/j/a$c;->c:Lcom/truecaller/data/entity/Contact;

    .line 72
    invoke-virtual {p1, v1}, Le/a/o/a/j/b;->Lj(Lcom/truecaller/data/entity/Contact;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v0, p1, Le/a/o/a/j/b;->k:Le/a/o/a/j/c;

    invoke-interface {v0}, Le/a/o/a/j/c;->g()Le/a/m5/e;

    move-result-object v0

    goto :goto_9

    :cond_17
    if-eqz v0, :cond_18

    .line 73
    iget-object v0, p1, Le/a/o/a/j/b;->k:Le/a/o/a/j/c;

    invoke-interface {v0}, Le/a/o/a/j/c;->b()Le/a/m5/e;

    move-result-object v0

    goto :goto_9

    .line 74
    :cond_18
    iget-object v0, p1, Le/a/o/a/j/b;->k:Le/a/o/a/j/c;

    invoke-interface {v0}, Le/a/o/a/j/c;->a()Le/a/m5/e;

    move-result-object v0

    .line 75
    :goto_9
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/m5/d;

    if-eqz p1, :cond_19

    invoke-interface {p1, v0}, Le/a/m5/d;->P(Le/a/m5/e;)V

    .line 76
    :cond_19
    :goto_a
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 77
    :cond_1a
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 78
    :cond_1b
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 79
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Config must be set before attaching the presenter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
