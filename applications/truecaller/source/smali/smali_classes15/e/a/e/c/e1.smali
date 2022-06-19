.class public final synthetic Le/a/e/c/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;

.field public final synthetic b:Lcom/truecaller/data/entity/Number;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;Lcom/truecaller/data/entity/Number;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/e1;->a:Le/a/e/c/s1;

    iput-object p2, p0, Le/a/e/c/e1;->b:Lcom/truecaller/data/entity/Number;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    iget-object p1, p0, Le/a/e/c/e1;->a:Le/a/e/c/s1;

    iget-object v0, p0, Le/a/e/c/e1;->b:Lcom/truecaller/data/entity/Number;

    .line 1
    iget-object v1, p1, Le/a/e/c/s1;->k:Le/a/e/c/a;

    .line 2
    invoke-virtual {v1}, Le/a/e/c/a;->c()Le/a/p5/u0/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/p5/u0/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p1, Le/a/e/c/s1;->k:Le/a/e/c/a;

    .line 4
    invoke-virtual {v1}, Le/a/e/c/a;->c()Le/a/p5/u0/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/p5/u0/b;->a()V

    .line 5
    :cond_0
    iget-object v1, p1, Le/a/e/c/s1;->o:Le/a/q2/a;

    const-string v2, "detailView"

    const-string v3, "ContextCallOnDemand"

    invoke-static {v2, v3}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 6
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v1

    invoke-interface {v1}, Le/a/j2;->W7()Le/a/h/d/d;

    move-result-object v1

    const/4 v3, 0x0

    .line 7
    invoke-interface {v1, v0, v3}, Le/a/h/d/d;->a(Lcom/truecaller/data/entity/Number;Z)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 8
    invoke-static {v7}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    sget-object v13, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnDemand;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnDemand;

    .line 10
    iget-object v0, p1, Le/a/e/c/s1;->o:Le/a/q2/a;

    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$CallSubAction;->BUTTON:Lcom/truecaller/analytics/common/event/ViewActionEvent$CallSubAction;

    invoke-virtual {v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$CallSubAction;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v6, "detailView"

    const-string v0, "analyticsContext"

    .line 11
    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callContextOption"

    .line 12
    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p1, p1, Le/a/e/c/s1;->y1:Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    .line 14
    new-instance v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-object v4, v0

    move-object v5, v7

    invoke-direct/range {v4 .. v13}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLandroid/telecom/PhoneAccountHandle;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    .line 15
    invoke-interface {p1, v0}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    :cond_2
    :goto_0
    return-void
.end method
