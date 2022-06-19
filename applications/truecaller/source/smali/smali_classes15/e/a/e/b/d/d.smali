.class public final Le/a/e/b/d/d;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/d/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/e/b/d/c;",
        ">;",
        "Le/a/e/b/d/b;"
    }
.end annotation


# instance fields
.field public final b:Le/a/q2/a;

.field public final c:Le/a/y3/c;


# direct methods
.method public constructor <init>(Le/a/q2/a;Le/a/y3/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "freshChatManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/e/b/d/d;->b:Le/a/q2/a;

    iput-object p2, p0, Le/a/e/b/d/d;->c:Le/a/y3/c;

    return-void
.end method


# virtual methods
.method public Oa()V
    .locals 3

    .line 1
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$HelpAction;->CHAT_WITH_US:Lcom/truecaller/analytics/common/event/ViewActionEvent$HelpAction;

    const-string v2, "settings_help_screen"

    invoke-virtual {v0, v2, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->i(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$HelpAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    iget-object v1, p0, Le/a/e/b/d/d;->b:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 2
    iget-object v0, p0, Le/a/e/b/d/d;->c:Le/a/y3/c;

    invoke-interface {v0}, Le/a/y3/c;->b()V

    return-void
.end method

.method public b5()V
    .locals 3

    .line 1
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$HelpAction;->FAQ:Lcom/truecaller/analytics/common/event/ViewActionEvent$HelpAction;

    const-string v2, "settings_help_screen"

    invoke-virtual {v0, v2, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->i(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$HelpAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    iget-object v1, p0, Le/a/e/b/d/d;->b:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/d/c;

    if-eqz v0, :cond_0

    const-string v1, "https://support.truecaller.com/hc/en-us/categories/201513109-Android"

    invoke-interface {v0, v1}, Le/a/e/b/d/c;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public m1()V
    .locals 3

    .line 1
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$HelpAction;->SEND_FEEDBACK:Lcom/truecaller/analytics/common/event/ViewActionEvent$HelpAction;

    const-string v2, "settings_help_screen"

    invoke-virtual {v0, v2, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->i(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$HelpAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    iget-object v1, p0, Le/a/e/b/d/d;->b:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/d/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/e/b/d/c;->F9()V

    :cond_0
    return-void
.end method
