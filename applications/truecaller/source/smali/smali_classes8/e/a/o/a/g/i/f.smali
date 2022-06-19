.class public final Le/a/o/a/g/i/f;
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
    c = "com.truecaller.contextcall.ui.custommessage.onboarded.OnBoardedCustomMessagePresenter$updateThenInitiateCallWithReason$1"
    f = "OnBoardedCustomMessagePresenter.kt"
    l = {
        0x33
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/o/a/g/i/g;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/o/a/g/i/g;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/g/i/f;->f:Le/a/o/a/g/i/g;

    iput-object p2, p0, Le/a/o/a/g/i/f;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/o/a/g/i/f;

    iget-object v0, p0, Le/a/o/a/g/i/f;->f:Le/a/o/a/g/i/g;

    iget-object v1, p0, Le/a/o/a/g/i/f;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/o/a/g/i/f;-><init>(Le/a/o/a/g/i/g;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/o/a/g/i/f;

    iget-object v0, p0, Le/a/o/a/g/i/f;->f:Le/a/o/a/g/i/g;

    iget-object v1, p0, Le/a/o/a/g/i/f;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/o/a/g/i/f;-><init>(Le/a/o/a/g/i/g;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/o/a/g/i/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/o/a/g/i/f;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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
    iget-object p1, p0, Le/a/o/a/g/i/f;->f:Le/a/o/a/g/i/g;

    .line 5
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/i/e;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Le/a/o/a/g/i/e;->T3()Lcom/truecaller/contextcall/db/reason/CallReason;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_3

    .line 7
    iget-object v4, p0, Le/a/o/a/g/i/f;->f:Le/a/o/a/g/i/g;

    .line 8
    iget-object v4, v4, Le/a/o/a/g/i/g;->h:Le/a/o/p/e/e;

    const/4 v5, 0x0

    .line 9
    iget-object v6, p0, Le/a/o/a/g/i/f;->g:Ljava/lang/String;

    invoke-static {p1, v5, v6, v3, v2}, Lcom/truecaller/contextcall/db/reason/CallReason;->copy$default(Lcom/truecaller/contextcall/db/reason/CallReason;ILjava/lang/String;ILjava/lang/Object;)Lcom/truecaller/contextcall/db/reason/CallReason;

    move-result-object p1

    iput v3, p0, Le/a/o/a/g/i/f;->e:I

    invoke-interface {v4, p1, p0}, Le/a/o/p/e/e;->b(Lcom/truecaller/contextcall/db/reason/CallReason;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 10
    :cond_3
    :goto_1
    iget-object p1, p0, Le/a/o/a/g/i/f;->f:Le/a/o/a/g/i/g;

    .line 11
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/i/e;

    if-eqz p1, :cond_5

    .line 12
    invoke-interface {p1}, Le/a/o/a/g/i/e;->r()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 13
    iget-object v1, p0, Le/a/o/a/g/i/f;->f:Le/a/o/a/g/i/g;

    .line 14
    iget-object v2, v1, Le/a/o/a/g/i/g;->f:Le/a/o/b/b;

    const/4 v3, 0x0

    .line 15
    iget-object v4, p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->a:Ljava/lang/String;

    .line 16
    iget-object v5, p0, Le/a/o/a/g/i/f;->g:Ljava/lang/String;

    .line 17
    sget-object v6, Lcom/truecaller/data/entity/FeatureType;->ON_BOARDING:Lcom/truecaller/data/entity/FeatureType;

    .line 18
    sget-object v7, Lcom/truecaller/data/entity/MessageType$Custom;->b:Lcom/truecaller/data/entity/MessageType$Custom;

    .line 19
    iget-object v8, p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->b:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 20
    invoke-static/range {v2 .. v10}, Le/a/m0/a1$k;->r(Le/a/o/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/FeatureType;Lcom/truecaller/data/entity/MessageType;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/data/entity/CallContextMessage;

    move-result-object v1

    if-nez v1, :cond_4

    .line 21
    sget-object v1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;

    goto :goto_2

    .line 22
    :cond_4
    new-instance v2, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Set;

    invoke-direct {v2, v1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Set;-><init>(Lcom/truecaller/data/entity/CallContextMessage;)V

    move-object v1, v2

    .line 23
    :goto_2
    sget-object v2, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object v3, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContextCallAction;->ON_BOARDED_CUSTOM_MESSAGE:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContextCallAction;

    const-string v4, "OnBoardingReasonPicker"

    invoke-virtual {v2, v4, v3}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->f(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContextCallAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v2

    .line 24
    iget-object v3, p0, Le/a/o/a/g/i/f;->f:Le/a/o/a/g/i/g;

    .line 25
    iget-object v3, v3, Le/a/o/a/g/i/g;->i:Lo3/a;

    .line 26
    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "analytics.get()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Le/a/q2/a;

    invoke-static {v2, v3}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 27
    new-instance v2, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;

    invoke-direct {v2, p1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;-><init>(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    .line 28
    invoke-virtual {v2, v1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;

    .line 29
    invoke-virtual {v2}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->a()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-result-object p1

    .line 30
    iget-object v1, p0, Le/a/o/a/g/i/f;->f:Le/a/o/a/g/i/g;

    .line 31
    iget-object v1, v1, Le/a/o/a/g/i/g;->g:Le/a/o/f;

    .line 32
    check-cast v1, Le/a/o/h;

    invoke-virtual {v1, p1}, Le/a/o/h;->a(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    .line 33
    iget-object p1, p0, Le/a/o/a/g/i/f;->f:Le/a/o/a/g/i/g;

    .line 34
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/i/e;

    if-eqz p1, :cond_5

    .line 35
    invoke-interface {p1}, Le/a/o/a/g/f;->t7()V

    :cond_5
    return-object v0
.end method
