.class public final Le/a/v/a/z/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v/a/z/a;->b:Le/a/q2/a;

    const-string p1, "DetailsViewV2"

    .line 2
    iput-object p1, p0, Le/a/v/a/z/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/v/a/z/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "context"

    .line 2
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "call"

    const-string v3, "action"

    .line 3
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v3, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v3, v2, v1, v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v3, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public final b(Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;)V
    .locals 3

    const-string v0, "subAction"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/v/a/z/a;->a:Ljava/lang/String;

    const-string v2, "context"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Click"

    const-string v2, "action"

    .line 4
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v2, v0, p1, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v2, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public final c(Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;)V
    .locals 3

    const-string v0, "subAction"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/v/a/z/a;->a:Ljava/lang/String;

    const-string v2, "context"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Shown"

    const-string v2, "action"

    .line 4
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v2, v0, p1, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v2, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method
