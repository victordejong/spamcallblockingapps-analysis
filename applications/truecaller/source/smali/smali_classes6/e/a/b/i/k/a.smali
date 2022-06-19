.class public final Le/a/b/i/k/a;
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
    c = "com.truecaller.bizmon.callMeBack.mvp.CallMeBackPresenter$requestForCallMeBack$1"
    f = "CallMeBackPresenter.kt"
    l = {
        0x28
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/b/i/k/b;


# direct methods
.method public constructor <init>(Le/a/b/i/k/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/i/k/a;->g:Le/a/b/i/k/b;

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

    new-instance v0, Le/a/b/i/k/a;

    iget-object v1, p0, Le/a/b/i/k/a;->g:Le/a/b/i/k/b;

    invoke-direct {v0, v1, p2}, Le/a/b/i/k/a;-><init>(Le/a/b/i/k/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b/i/k/a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/b/i/k/a;

    iget-object v1, p0, Le/a/b/i/k/a;->g:Le/a/b/i/k/b;

    invoke-direct {v0, v1, p2}, Le/a/b/i/k/a;-><init>(Le/a/b/i/k/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b/i/k/a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/b/i/k/a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/b/i/k/a;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Le/a/b/i/k/a;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/b/i/k/a;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    iget-object v1, p0, Le/a/b/i/k/a;->g:Le/a/b/i/k/b;

    sget-object v6, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;->CLICK_CALL_ME_BACK:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;

    invoke-static {v1, v6, v2, v3}, Le/a/b/i/k/b;->Jj(Le/a/b/i/k/b;Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;Ljava/lang/String;I)V

    .line 5
    iget-object v1, p0, Le/a/b/i/k/a;->g:Le/a/b/i/k/b;

    .line 6
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/b/i/f;

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v1, v5}, Le/a/b/i/f;->p(Z)V

    .line 8
    invoke-interface {v1, v4}, Le/a/b/i/f;->f(Z)V

    .line 9
    :cond_2
    iget-object v1, p0, Le/a/b/i/k/a;->g:Le/a/b/i/k/b;

    .line 10
    iget-object v6, v1, Le/a/b/i/k/b;->k:Le/a/b/i/c;

    .line 11
    iget-object v1, v1, Le/a/b/i/k/b;->e:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 12
    iput-object p1, p0, Le/a/b/i/k/a;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/b/i/k/a;->f:I

    invoke-interface {v6, v1, p0}, Le/a/b/i/c;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lcom/truecaller/bizmon/callMeBack/data/models/CallMeBackResponse;

    if-eqz p1, :cond_9

    .line 13
    iget-object p1, p0, Le/a/b/i/k/a;->g:Le/a/b/i/k/b;

    .line 14
    iget-object v0, p1, Le/a/b/i/k/b;->j:Le/a/p5/c0;

    .line 15
    sget v1, Lcom/truecaller/bizmon/R$string;->biz_acs_call_me_back_response_sub_title:I

    new-array v6, v4, [Ljava/lang/Object;

    .line 16
    iget-object v7, p1, Le/a/b/i/k/b;->d:Lcom/truecaller/data/entity/Contact;

    if-eqz v7, :cond_8

    .line 17
    invoke-virtual {v7}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-interface {v0, v1, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026_sub_title, contact.name)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object v0, p1, Le/a/b/i/k/b;->h:Ljava/lang/String;

    .line 19
    iget-object p1, p0, Le/a/b/i/k/a;->g:Le/a/b/i/k/b;

    .line 20
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/i/f;

    if-eqz v0, :cond_7

    .line 21
    iget-boolean v1, p1, Le/a/b/i/k/b;->g:Z

    const-string v6, "responseSubTitle"

    if-eqz v1, :cond_5

    .line 22
    iget-object p1, p1, Le/a/b/i/k/b;->h:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 23
    invoke-interface {v0, p1}, Le/a/b/i/f;->setResponseSubTitle(Ljava/lang/String;)V

    .line 24
    invoke-interface {v0}, Le/a/b/i/f;->o()V

    goto :goto_1

    .line 25
    :cond_4
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 26
    :cond_5
    invoke-interface {v0, v4}, Le/a/b/i/f;->q(Z)V

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/a/b/i/k/a;->g:Le/a/b/i/k/b;

    .line 28
    iget-object v1, v1, Le/a/b/i/k/b;->j:Le/a/p5/c0;

    .line 29
    sget v4, Lcom/truecaller/bizmon/R$string;->biz_acs_call_me_back_response_title:I

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v1, v4, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v1, p0, Le/a/b/i/k/a;->g:Le/a/b/i/k/b;

    .line 31
    iget-object v1, v1, Le/a/b/i/k/b;->j:Le/a/p5/c0;

    .line 32
    sget v4, Lcom/truecaller/bizmon/R$string;->biz_new_line:I

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v1, v4, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v1, p0, Le/a/b/i/k/a;->g:Le/a/b/i/k/b;

    .line 34
    iget-object v1, v1, Le/a/b/i/k/b;->j:Le/a/p5/c0;

    new-array v7, v5, [Ljava/lang/Object;

    .line 35
    invoke-interface {v1, v4, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Le/a/b/i/k/a;->g:Le/a/b/i/k/b;

    .line 37
    iget-object v1, v1, Le/a/b/i/k/b;->h:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-interface {v0, p1}, Le/a/b/i/f;->m(Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :cond_6
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_7
    :goto_1
    iget-object p1, p0, Le/a/b/i/k/a;->g:Le/a/b/i/k/b;

    sget-object v0, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;->SHOW_CALL_ME_BACK_RESPONSE:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;

    invoke-static {p1, v0, v2, v3}, Le/a/b/i/k/b;->Jj(Le/a/b/i/k/b;Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;Ljava/lang/String;I)V

    goto :goto_2

    :cond_8
    const-string p1, "contact"

    .line 42
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_9
    iget-object p1, p0, Le/a/b/i/k/a;->g:Le/a/b/i/k/b;

    sget-object v0, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;->CLICK_CALL_ME_BACK:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;

    sget-object v1, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;->REQUEST_CALL_ME_BACK_FAILURE:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;

    invoke-virtual {v1}, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {p1, v0, v1}, Le/a/b/i/k/b;->Ij(Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Le/a/b/i/k/a;->g:Le/a/b/i/k/b;

    .line 46
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/i/f;

    if-eqz v0, :cond_a

    .line 47
    iget-object p1, p1, Le/a/b/i/k/b;->j:Le/a/p5/c0;

    .line 48
    sget v1, Lcom/truecaller/bizmon/R$string;->biz_acs_call_me_back_request_error:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resourceProvider.getStri\u2026ll_me_back_request_error)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/b/i/f;->m(Ljava/lang/String;)V

    .line 49
    invoke-interface {v0, v4}, Le/a/b/i/f;->p(Z)V

    .line 50
    iget-object p1, p0, Le/a/b/i/k/a;->g:Le/a/b/i/k/b;

    .line 51
    iget-boolean p1, p1, Le/a/b/i/k/b;->g:Z

    if-nez p1, :cond_a

    .line 52
    invoke-interface {v0, v5}, Le/a/b/i/f;->q(Z)V

    .line 53
    :cond_a
    :goto_2
    iget-object p1, p0, Le/a/b/i/k/a;->g:Le/a/b/i/k/b;

    .line 54
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/i/f;

    if-eqz p1, :cond_b

    .line 55
    invoke-interface {p1, v5}, Le/a/b/i/f;->f(Z)V

    .line 56
    :cond_b
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_c
    const-string p1, "normalizedNumber"

    .line 57
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
