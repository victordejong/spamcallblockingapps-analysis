.class public final Le/a/b/j/b$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/j/b;->Kj()Lq3/a/p1;
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
    c = "com.truecaller.bizmon.callReason.BusinessCallReasonPresenter$setupView$1"
    f = "BusinessCallReasonPresenter.kt"
    l = {
        0x52
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/b/j/b;


# direct methods
.method public constructor <init>(Le/a/b/j/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/j/b$b;->f:Le/a/b/j/b;

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

    new-instance p1, Le/a/b/j/b$b;

    iget-object v0, p0, Le/a/b/j/b$b;->f:Le/a/b/j/b;

    invoke-direct {p1, v0, p2}, Le/a/b/j/b$b;-><init>(Le/a/b/j/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/j/b$b;

    iget-object v0, p0, Le/a/b/j/b$b;->f:Le/a/b/j/b;

    invoke-direct {p1, v0, p2}, Le/a/b/j/b$b;-><init>(Le/a/b/j/b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b/j/b$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/b/j/b$b;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

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
    iget-object p1, p0, Le/a/b/j/b$b;->f:Le/a/b/j/b;

    .line 5
    iget-object p1, p1, Le/a/b/j/b;->d:Le/a/b/j/a;

    if-eqz p1, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1d

    if-eqz p1, :cond_1c

    .line 6
    iget-object p1, p1, Le/a/b/j/a;->b:Lcom/truecaller/data/entity/Contact;

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->Y()Ljava/util/List;

    move-result-object p1

    const-string v2, "config.contact.searchWarnings"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/SearchWarning;

    if-eqz p1, :cond_4

    iget-object v2, p0, Le/a/b/j/b$b;->f:Le/a/b/j/b;

    .line 8
    iget-object v2, v2, Le/a/b/j/b;->j:Le/a/x4/g;

    .line 9
    iput v5, p0, Le/a/b/j/b$b;->e:I

    invoke-interface {v2, p1, p0}, Le/a/x4/g;->a(Lcom/truecaller/data/entity/SearchWarning;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    move-object v3, p1

    check-cast v3, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;

    :cond_4
    if-eqz v3, :cond_1a

    .line 10
    iget-object p1, p0, Le/a/b/j/b$b;->f:Le/a/b/j/b;

    .line 11
    iget-object v1, p1, Le/a/b/j/b;->e:Lcom/truecaller/bizmon/callReason/BusinessContactType;

    .line 12
    sget-object v2, Lcom/truecaller/bizmon/callReason/BusinessContactType;->UNKNOWN:Lcom/truecaller/bizmon/callReason/BusinessContactType;

    if-ne v1, v2, :cond_5

    goto/16 :goto_9

    .line 13
    :cond_5
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/m5/d;

    if-eqz p1, :cond_9

    .line 14
    invoke-virtual {v3}, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Le/a/m5/d;->setLabel(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3}, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Le/a/m5/d;->setMessage(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Le/a/b/j/b$b;->f:Le/a/b/j/b;

    .line 17
    iget v1, v1, Le/a/b/j/b;->g:I

    .line 18
    invoke-interface {p1, v1}, Le/a/m5/d;->setMessageMaxLength(I)V

    .line 19
    invoke-virtual {v3}, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v5

    .line 20
    iget-object v2, p0, Le/a/b/j/b$b;->f:Le/a/b/j/b;

    .line 21
    iget-object v2, v2, Le/a/b/j/b;->m:Le/a/u3/g;

    .line 22
    invoke-virtual {v2}, Le/a/u3/g;->E()Le/a/u3/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 23
    iget-object v2, p0, Le/a/b/j/b$b;->f:Le/a/b/j/b;

    invoke-static {v2}, Le/a/b/j/b;->Ij(Le/a/b/j/b;)Le/a/b/j/a;

    move-result-object v2

    .line 24
    iget-boolean v2, v2, Le/a/b/j/a;->d:Z

    if-eqz v2, :cond_6

    move v2, v5

    goto :goto_2

    :cond_6
    move v2, v4

    goto :goto_2

    :cond_7
    move v2, v1

    .line 25
    :goto_2
    invoke-interface {p1, v2}, Le/a/m5/d;->setIsExpandable(Z)V

    .line 26
    iget-object v2, p0, Le/a/b/j/b$b;->f:Le/a/b/j/b;

    if-eqz v1, :cond_8

    invoke-static {v2}, Le/a/b/j/b;->Ij(Le/a/b/j/b;)Le/a/b/j/a;

    move-result-object v1

    .line 27
    iget-boolean v1, v1, Le/a/b/j/a;->c:Z

    if-eqz v1, :cond_8

    move v1, v5

    goto :goto_3

    :cond_8
    move v1, v4

    .line 28
    :goto_3
    iput-boolean v1, v2, Le/a/b/j/b;->f:Z

    .line 29
    iget-object v1, p0, Le/a/b/j/b$b;->f:Le/a/b/j/b;

    .line 30
    iget-boolean v1, v1, Le/a/b/j/b;->f:Z

    .line 31
    invoke-interface {p1, v1}, Le/a/m5/d;->setIsExpanded(Z)V

    .line 32
    :cond_9
    iget-object p1, p0, Le/a/b/j/b$b;->f:Le/a/b/j/b;

    invoke-virtual {v3}, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 33
    iget-object v2, p1, Le/a/b/j/b;->h:Ls1/b0/c;

    sget-object v3, Le/a/b/j/b;->n:[Ls1/a/l;

    aget-object v3, v3, v4

    invoke-interface {v2, p1, v3, v1}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    .line 34
    iget-object p1, p0, Le/a/b/j/b$b;->f:Le/a/b/j/b;

    invoke-static {p1}, Le/a/b/j/b;->Ij(Le/a/b/j/b;)Le/a/b/j/a;

    move-result-object p1

    .line 35
    instance-of v1, p1, Le/a/b/j/a$c;

    if-eqz v1, :cond_f

    iget-object p1, p0, Le/a/b/j/b$b;->f:Le/a/b/j/b;

    .line 36
    iget-object v1, p1, Le/a/b/j/b;->m:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->E()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 37
    iget-object v1, p1, Le/a/b/j/b;->e:Lcom/truecaller/bizmon/callReason/BusinessContactType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_b

    if-eq v1, v5, :cond_a

    .line 38
    iget-object v1, p1, Le/a/b/j/b;->l:Le/a/b/j/c;

    invoke-interface {v1}, Le/a/b/j/c;->a()Le/a/m5/e;

    move-result-object v1

    goto :goto_4

    .line 39
    :cond_a
    iget-object v1, p1, Le/a/b/j/b;->l:Le/a/b/j/c;

    invoke-interface {v1}, Le/a/b/j/c;->g()Le/a/m5/e;

    move-result-object v1

    goto :goto_4

    .line 40
    :cond_b
    iget-object v1, p1, Le/a/b/j/b;->l:Le/a/b/j/c;

    invoke-interface {v1}, Le/a/b/j/c;->h()Le/a/m5/e;

    move-result-object v1

    goto :goto_4

    .line 41
    :cond_c
    iget-object v1, p1, Le/a/b/j/b;->e:Lcom/truecaller/bizmon/callReason/BusinessContactType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_e

    if-eq v1, v5, :cond_d

    .line 42
    iget-object v1, p1, Le/a/b/j/b;->l:Le/a/b/j/c;

    invoke-interface {v1}, Le/a/b/j/c;->a()Le/a/m5/e;

    move-result-object v1

    goto :goto_4

    .line 43
    :cond_d
    iget-object v1, p1, Le/a/b/j/b;->l:Le/a/b/j/c;

    invoke-interface {v1}, Le/a/b/j/c;->e()Le/a/m5/e;

    move-result-object v1

    goto :goto_4

    .line 44
    :cond_e
    iget-object v1, p1, Le/a/b/j/b;->l:Le/a/b/j/c;

    invoke-interface {v1}, Le/a/b/j/c;->f()Le/a/m5/e;

    move-result-object v1

    .line 45
    :goto_4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/m5/d;

    if-eqz p1, :cond_19

    invoke-interface {p1, v1}, Le/a/m5/d;->P(Le/a/m5/e;)V

    goto/16 :goto_8

    .line 46
    :cond_f
    instance-of v1, p1, Le/a/b/j/a$a;

    if-eqz v1, :cond_10

    iget-object p1, p0, Le/a/b/j/b$b;->f:Le/a/b/j/b;

    .line 47
    invoke-virtual {p1}, Le/a/b/j/b;->Lj()V

    goto/16 :goto_8

    .line 48
    :cond_10
    instance-of v1, p1, Le/a/b/j/a$b;

    if-eqz v1, :cond_14

    iget-object p1, p0, Le/a/b/j/b$b;->f:Le/a/b/j/b;

    .line 49
    iget-object v1, p1, Le/a/b/j/b;->m:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->D()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 50
    iget-object v1, p1, Le/a/b/j/b;->e:Lcom/truecaller/bizmon/callReason/BusinessContactType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_12

    if-eq v1, v5, :cond_11

    .line 51
    iget-object v1, p1, Le/a/b/j/b;->l:Le/a/b/j/c;

    invoke-interface {v1}, Le/a/b/j/c;->a()Le/a/m5/e;

    move-result-object v1

    goto :goto_5

    .line 52
    :cond_11
    iget-object v1, p1, Le/a/b/j/b;->l:Le/a/b/j/c;

    invoke-interface {v1}, Le/a/b/j/c;->g()Le/a/m5/e;

    move-result-object v1

    goto :goto_5

    .line 53
    :cond_12
    iget-object v1, p1, Le/a/b/j/b;->l:Le/a/b/j/c;

    invoke-interface {v1}, Le/a/b/j/c;->h()Le/a/m5/e;

    move-result-object v1

    .line 54
    :goto_5
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/m5/d;

    if-eqz p1, :cond_19

    invoke-interface {p1, v1}, Le/a/m5/d;->P(Le/a/m5/e;)V

    goto :goto_8

    .line 55
    :cond_13
    invoke-virtual {p1}, Le/a/b/j/b;->Lj()V

    goto :goto_8

    .line 56
    :cond_14
    instance-of p1, p1, Le/a/b/j/a$d;

    if-eqz p1, :cond_19

    iget-object p1, p0, Le/a/b/j/b$b;->f:Le/a/b/j/b;

    invoke-static {p1}, Le/a/b/j/b;->Ij(Le/a/b/j/b;)Le/a/b/j/a;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.truecaller.bizmon.callReason.BusinessCallReasonConfig.InCallUI"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/b/j/a$d;

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-boolean v2, v1, Le/a/b/j/a$d;->f:Z

    if-nez v2, :cond_18

    .line 59
    iget-boolean v1, v1, Le/a/b/j/a$d;->e:Z

    if-eqz v1, :cond_15

    goto :goto_6

    .line 60
    :cond_15
    iget-object v1, p1, Le/a/b/j/b;->e:Lcom/truecaller/bizmon/callReason/BusinessContactType;

    sget-object v2, Lcom/truecaller/bizmon/callReason/BusinessContactType;->PRIORITY:Lcom/truecaller/bizmon/callReason/BusinessContactType;

    if-ne v1, v2, :cond_16

    iget-object v1, p1, Le/a/b/j/b;->l:Le/a/b/j/c;

    invoke-interface {v1}, Le/a/b/j/c;->e()Le/a/m5/e;

    move-result-object v1

    goto :goto_7

    .line 61
    :cond_16
    sget-object v2, Lcom/truecaller/bizmon/callReason/BusinessContactType;->VERIFIED:Lcom/truecaller/bizmon/callReason/BusinessContactType;

    if-ne v1, v2, :cond_17

    iget-object v1, p1, Le/a/b/j/b;->l:Le/a/b/j/c;

    invoke-interface {v1}, Le/a/b/j/c;->f()Le/a/m5/e;

    move-result-object v1

    goto :goto_7

    .line 62
    :cond_17
    iget-object v1, p1, Le/a/b/j/b;->l:Le/a/b/j/c;

    invoke-interface {v1}, Le/a/b/j/c;->a()Le/a/m5/e;

    move-result-object v1

    goto :goto_7

    .line 63
    :cond_18
    :goto_6
    iget-object v1, p1, Le/a/b/j/b;->l:Le/a/b/j/c;

    invoke-interface {v1}, Le/a/b/j/c;->b()Le/a/m5/e;

    move-result-object v1

    .line 64
    :goto_7
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/m5/d;

    if-eqz p1, :cond_19

    invoke-interface {p1, v1}, Le/a/m5/d;->P(Le/a/m5/e;)V

    :cond_19
    :goto_8
    return-object v0

    .line 65
    :cond_1a
    :goto_9
    iget-object p1, p0, Le/a/b/j/b$b;->f:Le/a/b/j/b;

    .line 66
    sget-object v1, Le/a/b/j/b;->n:[Ls1/a/l;

    .line 67
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/m5/d;

    if-eqz p1, :cond_1b

    .line 68
    invoke-interface {p1}, Le/a/m5/d;->R()V

    :cond_1b
    return-object v0

    :cond_1c
    const-string p1, "config"

    .line 69
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 70
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Config must be set before attaching the presenter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
