.class public final Le/a/g/a/m$l;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/m;->Mk(Lcom/truecaller/data/entity/Contact;)Lq3/a/p1;
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
    c = "com.truecaller.acs.ui.AfterCallBasePresenter$showContactInfo$1"
    f = "AfterCallBasePresenter.kt"
    l = {
        0x20e,
        0x21b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/g/a/m;

.field public final synthetic g:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/g/a/m;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    iput-object p2, p0, Le/a/g/a/m$l;->g:Lcom/truecaller/data/entity/Contact;

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

    new-instance p1, Le/a/g/a/m$l;

    iget-object v0, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    iget-object v1, p0, Le/a/g/a/m$l;->g:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p1, v0, v1, p2}, Le/a/g/a/m$l;-><init>(Le/a/g/a/m;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/g/a/m$l;

    iget-object v0, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    iget-object v1, p0, Le/a/g/a/m$l;->g:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p1, v0, v1, p2}, Le/a/g/a/m$l;-><init>(Le/a/g/a/m;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g/a/m$l;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/g/a/m$l;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

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
    iget-object p1, p0, Le/a/g/a/m$l;->g:Lcom/truecaller/data/entity/Contact;

    if-nez p1, :cond_3

    return-object v0

    .line 5
    :cond_3
    iget-object v2, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    iput v6, p0, Le/a/g/a/m$l;->e:I

    invoke-virtual {v2, p1, p0}, Le/a/g/a/m;->Kj(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 6
    :cond_4
    :goto_0
    iget-object p1, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    .line 7
    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v2

    .line 8
    iget-object v2, v2, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    const-string v7, "historyEvent.subscriptionId"

    .line 9
    invoke-static {v2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v7, p1, Le/a/g/a/m;->V:Le/a/e4/p;

    invoke-interface {v7}, Le/a/e4/p;->h()Z

    move-result v7

    if-nez v7, :cond_5

    .line 11
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/h;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Le/a/g/a/h;->Dk()V

    goto :goto_3

    .line 12
    :cond_5
    iget-object v7, p1, Le/a/g/a/m;->V:Le/a/e4/p;

    invoke-interface {v7, v2}, Le/a/e4/p;->v(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 13
    iget v7, v2, Lcom/truecaller/multisim/SimInfo;->a:I

    if-eqz v7, :cond_7

    if-eq v7, v6, :cond_6

    .line 14
    iget-object v2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/g/a/h;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Le/a/g/a/h;->Dk()V

    goto :goto_1

    .line 15
    :cond_6
    iget-object v7, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v7, Le/a/g/a/h;

    if-eqz v7, :cond_8

    iget-object v2, v2, Lcom/truecaller/multisim/SimInfo;->d:Ljava/lang/String;

    invoke-virtual {p1}, Le/a/g/a/m;->Rj()I

    move-result v8

    invoke-interface {v7, v2, v8}, Le/a/g/a/h;->Ea(Ljava/lang/String;I)V

    goto :goto_1

    .line 16
    :cond_7
    iget-object v7, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v7, Le/a/g/a/h;

    if-eqz v7, :cond_8

    iget-object v2, v2, Lcom/truecaller/multisim/SimInfo;->d:Ljava/lang/String;

    invoke-virtual {p1}, Le/a/g/a/m;->Qj()I

    move-result v8

    invoke-interface {v7, v2, v8}, Le/a/g/a/h;->Ea(Ljava/lang/String;I)V

    :goto_1
    move-object v2, v0

    goto :goto_2

    :cond_8
    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_9

    goto :goto_3

    .line 17
    :cond_9
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/h;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Le/a/g/a/h;->Dk()V

    .line 18
    :cond_a
    :goto_3
    iget-object p1, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    iget-object v2, p0, Le/a/g/a/m$l;->g:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1, v2}, Le/a/g/a/m;->Dk(Lcom/truecaller/data/entity/Contact;)V

    .line 19
    iget-object p1, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    iget-object v2, p0, Le/a/g/a/m$l;->g:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1, v2}, Le/a/g/a/m;->zk(Lcom/truecaller/data/entity/Contact;)V

    .line 20
    iget-object p1, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    iget-object v2, p0, Le/a/g/a/m$l;->g:Lcom/truecaller/data/entity/Contact;

    .line 21
    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v7

    .line 22
    iget-object v7, v7, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    if-nez v7, :cond_c

    .line 23
    iget-object v2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/g/a/h;

    if-eqz v2, :cond_b

    sget v7, Lcom/truecaller/acs/R$string;->acs_unknown_caller:I

    invoke-interface {v2, v7}, Le/a/g/a/h;->q3(I)V

    .line 24
    :cond_b
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/h;

    if-eqz p1, :cond_d

    sget v2, Lcom/truecaller/acs/R$string;->acs_hidden_number:I

    invoke-interface {p1, v2}, Le/a/g/a/h;->Aq(I)V

    goto :goto_4

    .line 25
    :cond_c
    invoke-virtual {p1, v7, v2}, Le/a/g/a/m;->Ck(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;)V

    .line 26
    :cond_d
    :goto_4
    iget-object p1, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    iget-object v2, p0, Le/a/g/a/m$l;->g:Lcom/truecaller/data/entity/Contact;

    .line 27
    iget-object v7, p1, Le/a/g/a/m;->y0:Le/a/z2/a;

    .line 28
    invoke-interface {v7, v2}, Le/a/z2/a;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v7

    invoke-virtual {p1, v2, v7}, Le/a/g/a/m;->Bk(Lcom/truecaller/data/entity/Contact;Z)V

    .line 29
    iget-object p1, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    iget-object v2, p0, Le/a/g/a/m$l;->g:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1, v2}, Le/a/g/a/m;->tk(Lcom/truecaller/data/entity/Contact;)V

    .line 30
    iget-object p1, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    iget-object v2, p0, Le/a/g/a/m$l;->g:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1, v2}, Le/a/g/a/m;->yk(Lcom/truecaller/data/entity/Contact;)V

    .line 31
    iget-object p1, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    iget-object v2, p0, Le/a/g/a/m$l;->g:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1, v2}, Le/a/g/a/m;->Gk(Lcom/truecaller/data/entity/Contact;)V

    .line 32
    iget-object p1, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    iget-object v2, p0, Le/a/g/a/m$l;->g:Lcom/truecaller/data/entity/Contact;

    .line 33
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->c1()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p1, Le/a/g/a/m;->g0:Le/a/g/j/a;

    .line 35
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/TrueApp;->W()Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v6

    goto :goto_5

    :cond_e
    move v2, v5

    :goto_5
    if-eqz v2, :cond_f

    .line 37
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/h;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Le/a/g/a/h;->tl()V

    goto :goto_6

    .line 38
    :cond_f
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/h;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Le/a/g/a/h;->ky()V

    .line 39
    :cond_10
    :goto_6
    iget-object p1, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    .line 40
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/h;

    if-eqz p1, :cond_11

    invoke-interface {p1}, Le/a/g/a/h;->ta()V

    .line 41
    :cond_11
    iget-object p1, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    iget-object v2, p0, Le/a/g/a/m$l;->g:Lcom/truecaller/data/entity/Contact;

    .line 42
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/h;

    if-eqz p1, :cond_12

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->m0()Z

    move-result v2

    invoke-interface {p1, v2}, Le/a/g/a/h;->Ey(Z)V

    .line 43
    :cond_12
    iget-object p1, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    .line 44
    invoke-virtual {p1}, Le/a/g/a/m;->ak()V

    .line 45
    iget-object p1, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    iget-object v2, p0, Le/a/g/a/m$l;->g:Lcom/truecaller/data/entity/Contact;

    iput v4, p0, Le/a/g/a/m$l;->e:I

    invoke-virtual {p1, v2, p0}, Le/a/g/a/m;->vk(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_13

    return-object v1

    .line 46
    :cond_13
    :goto_7
    iget-object p1, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    iget-object v1, p0, Le/a/g/a/m$l;->g:Lcom/truecaller/data/entity/Contact;

    .line 47
    iget-object v2, p1, Le/a/g/a/m;->k:Le/a/m5/c;

    if-nez v2, :cond_18

    .line 48
    iget-object v2, p1, Le/a/g/a/m;->m0:Le/a/g/j/d0;

    check-cast v2, Le/a/g/j/e0;

    invoke-virtual {v2, v1}, Le/a/g/j/e0;->a(Lcom/truecaller/data/entity/Contact;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 49
    iget-object v2, p1, Le/a/g/a/m;->t0:Le/a/g/j/y;

    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v4

    .line 50
    iget v4, v4, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 51
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "contact"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->h0()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x3

    if-ne v4, v2, :cond_14

    move v2, v6

    goto :goto_8

    :cond_14
    move v2, v5

    :goto_8
    if-eqz v2, :cond_18

    .line 53
    iget-object v2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/g/a/h;

    if-eqz v2, :cond_15

    invoke-interface {v2}, Le/a/g/a/h;->l7()V

    .line 54
    :cond_15
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/h;

    if-eqz p1, :cond_18

    const-string v2, "$this$shouldShowCred"

    .line 55
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->m0()Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v6

    goto :goto_9

    :cond_16
    move v2, v5

    :goto_9
    if-eqz v2, :cond_17

    .line 57
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result v1

    if-nez v1, :cond_17

    move v1, v6

    goto :goto_a

    :cond_17
    move v1, v5

    :goto_a
    invoke-interface {p1, v1}, Le/a/g/a/h;->qk(Z)V

    .line 58
    :cond_18
    iget-object p1, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    iget-object v1, p0, Le/a/g/a/m$l;->g:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1, v1}, Le/a/g/a/m;->xk(Lcom/truecaller/data/entity/Contact;)V

    .line 59
    iget-object v7, p0, Le/a/g/a/m$l;->f:Le/a/g/a/m;

    iget-object p1, p0, Le/a/g/a/m$l;->g:Lcom/truecaller/data/entity/Contact;

    .line 60
    invoke-virtual {v7}, Le/a/g/a/m;->Tj()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v7, Le/a/g/a/m;->C0:Le/a/b/i/c;

    invoke-virtual {v7}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Le/a/b/i/c;->e(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 61
    invoke-virtual {v7}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v1

    .line 62
    iget-object v1, v1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    if-eqz v1, :cond_1c

    const-string v2, "it"

    .line 63
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_19

    move v5, v6

    :cond_19
    if-eqz v5, :cond_1a

    goto :goto_b

    :cond_1a
    move-object v1, v3

    :goto_b
    if-eqz v1, :cond_1c

    .line 64
    iget-boolean v2, v7, Le/a/g/a/m;->q:Z

    if-eqz v2, :cond_1b

    goto :goto_c

    .line 65
    :cond_1b
    iput-boolean v6, v7, Le/a/g/a/m;->q:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 66
    new-instance v10, Le/a/g/a/r;

    invoke-direct {v10, v1, v3, v7, p1}, Le/a/g/a/r;-><init>(Ljava/lang/String;Ls1/w/d;Le/a/g/a/m;Lcom/truecaller/data/entity/Contact;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_1c
    :goto_c
    return-object v0
.end method
