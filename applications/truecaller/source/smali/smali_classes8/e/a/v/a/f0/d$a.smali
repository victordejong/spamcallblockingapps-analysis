.class public final Le/a/v/a/f0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/f0/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/v/a/f0/d;


# direct methods
.method public constructor <init>(Le/a/v/a/f0/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/f0/d$a;->a:Le/a/v/a/f0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Le/a/v/a/f0/d$a;->a:Le/a/v/a/f0/d;

    invoke-virtual {p1}, Le/a/v/a/f0/d;->getPresenter()Le/a/v/a/f0/a;

    move-result-object p1

    check-cast p1, Le/a/v/a/f0/c;

    .line 2
    iget-object v0, p1, Le/a/v/a/f0/c;->c:Le/a/v/a/z/a;

    .line 3
    iget-object v1, v0, Le/a/v/a/z/a;->a:Ljava/lang/String;

    sget-object v2, Lcom/truecaller/analytics/common/event/ViewActionEvent$LearnMoreSubAction;->LEARN_MORE:Lcom/truecaller/analytics/common/event/ViewActionEvent$LearnMoreSubAction;

    const-string v3, "context"

    .line 4
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "subAction"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent$LearnMoreSubAction;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Click"

    const-string v4, "action"

    .line 6
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v4, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v4, v3, v2, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, v0, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v4, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 9
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/f0/b;

    if-eqz v0, :cond_0

    .line 10
    iget-object p1, p1, Le/a/v/a/f0/c;->b:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 11
    invoke-interface {v0, p1}, Le/a/v/a/f0/b;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
