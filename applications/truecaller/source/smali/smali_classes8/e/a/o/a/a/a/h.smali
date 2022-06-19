.class public final Le/a/o/a/a/a/h;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/a/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/o/a/a/a/f;",
        ">;",
        "Le/a/o/a/a/a/e;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Le/a/o/f;

.field public final f:Le/a/o/b/b;

.field public final g:Le/a/o/p/e/e;

.field public final h:Le/a/o/p/b/d;

.field public final i:Le/a/o/b/o;

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/o/f;Le/a/o/b/b;Le/a/o/p/e/e;Le/a/o/p/b/d;Le/a/o/b/o;Lo3/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/o/f;",
            "Le/a/o/b/b;",
            "Le/a/o/p/e/e;",
            "Le/a/o/p/b/d;",
            "Le/a/o/b/o;",
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageFactory"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callReasonRepository"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiddenNumberRepository"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/o/a/a/a/h;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/o/a/a/a/h;->e:Le/a/o/f;

    iput-object p3, p0, Le/a/o/a/a/a/h;->f:Le/a/o/b/b;

    iput-object p4, p0, Le/a/o/a/a/a/h;->g:Le/a/o/p/e/e;

    iput-object p5, p0, Le/a/o/a/a/a/h;->h:Le/a/o/p/b/d;

    iput-object p6, p0, Le/a/o/a/a/a/h;->i:Le/a/o/b/o;

    iput-object p7, p0, Le/a/o/a/a/a/h;->j:Lo3/a;

    return-void
.end method


# virtual methods
.method public Hi(Lcom/truecaller/contextcall/db/reason/CallReason;)V
    .locals 10

    const-string v0, "reason"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/a/a/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/o/a/a/a/f;->r()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v3, v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 3
    iget-object v7, v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->b:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Le/a/o/a/a/a/h;->f:Le/a/o/b/b;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/contextcall/db/reason/CallReason;->getReasonText()Ljava/lang/String;

    move-result-object v4

    .line 6
    sget-object v5, Lcom/truecaller/data/entity/FeatureType;->ON_BOARDING:Lcom/truecaller/data/entity/FeatureType;

    .line 7
    sget-object v6, Lcom/truecaller/data/entity/MessageType$Custom;->b:Lcom/truecaller/data/entity/MessageType$Custom;

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 8
    invoke-static/range {v1 .. v9}, Le/a/m0/a1$k;->r(Le/a/o/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/FeatureType;Lcom/truecaller/data/entity/MessageType;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/data/entity/CallContextMessage;

    move-result-object p1

    if-nez p1, :cond_0

    .line 9
    sget-object p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Set;

    invoke-direct {v1, p1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Set;-><init>(Lcom/truecaller/data/entity/CallContextMessage;)V

    move-object p1, v1

    .line 11
    :goto_0
    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object v2, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContextCallAction;->ON_BOARDED_REASON_PICKED:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContextCallAction;

    const-string v3, "OnBoardingReasonPicker"

    invoke-virtual {v1, v3, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->f(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContextCallAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v1

    .line 12
    iget-object v2, p0, Le/a/o/a/a/a/h;->j:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "analytics.get()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Le/a/q2/a;

    invoke-static {v1, v2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 13
    new-instance v1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;

    invoke-direct {v1, v0}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;-><init>(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    .line 14
    invoke-virtual {v1, p1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;

    .line 15
    invoke-virtual {v1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->a()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-result-object p1

    .line 16
    iget-object v0, p0, Le/a/o/a/a/a/h;->e:Le/a/o/f;

    check-cast v0, Le/a/o/h;

    invoke-virtual {v0, p1}, Le/a/o/h;->a(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    .line 17
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/a/a/f;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/o/a/a/a/f;->t()V

    :cond_1
    return-void
.end method

.method public final Ij()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/a/a/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/o/a/a/a/f;->r()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;

    invoke-direct {v1, v0}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;-><init>(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    .line 3
    sget-object v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;

    invoke-virtual {v1, v0}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;

    .line 4
    invoke-virtual {v1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->a()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/a/o/a/a/a/h;->e:Le/a/o/f;

    check-cast v1, Le/a/o/h;

    invoke-virtual {v1, v0}, Le/a/o/h;->a(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    .line 6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/a/a/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/o/a/a/a/f;->t()V

    :cond_0
    return-void
.end method

.method public O3()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/o/a/a/a/h;->Ij()V

    return-void
.end method

.method public Vc(Lcom/truecaller/contextcall/db/reason/CallReason;)V
    .locals 2

    const-string v0, "reason"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/a/a/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/o/a/a/a/f;->r()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/o/a/a/a/f;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/o/a/a/a/f;->Lv()V

    .line 3
    :cond_0
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/o/a/a/a/f;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0, p1}, Le/a/o/a/a/a/f;->Tz(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Lcom/truecaller/contextcall/db/reason/CallReason;)V

    :cond_1
    return-void
.end method

.method public W()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/a/a/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/o/a/a/a/f;->r()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/o/a/a/a/f;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/o/a/a/a/f;->Lv()V

    .line 3
    :cond_0
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/o/a/a/a/f;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Le/a/o/a/a/a/f;->Tz(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Lcom/truecaller/contextcall/db/reason/CallReason;)V

    :cond_1
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Le/a/o/a/a/a/f;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const-string v0, "OnBoardingReasonPicker"

    const-string v1, "viewId"

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v1, v0, v2, v2}, Le/d/c/a/a;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Le/a/q2/y0/a/a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/a/o/a/a/a/h;->j:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "analytics.get()"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 6
    new-instance v6, Le/a/o/a/a/a/g;

    invoke-direct {v6, p0, v2}, Le/a/o/a/a/a/g;-><init>(Le/a/o/a/a/a/h;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    const-wide/16 v0, 0x2710

    .line 7
    invoke-interface {p1, v0, v1}, Le/a/o/a/a/a/f;->Cm(J)V

    return-void
.end method

.method public bc()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/a/a/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/o/a/a/a/f;->r()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    new-instance v5, Le/a/o/a/a/a/h$a;

    const/4 v2, 0x0

    invoke-direct {v5, p0, v1, v0, v2}, Le/a/o/a/a/a/h$a;-><init>(Le/a/o/a/a/a/h;Ljava/lang/String;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public i4()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/o/a/a/a/h;->Ij()V

    return-void
.end method

.method public q4()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/a/a/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/o/a/a/a/f;->Uv()V

    :cond_0
    return-void
.end method
