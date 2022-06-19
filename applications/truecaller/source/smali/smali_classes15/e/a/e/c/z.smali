.class public final synthetic Le/a/e/c/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;Ljava/lang/Runnable;Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/z;->a:Le/a/e/c/s1;

    iput-object p2, p0, Le/a/e/c/z;->b:Ljava/lang/Runnable;

    iput-object p3, p0, Le/a/e/c/z;->c:Ljava/lang/String;

    iput-object p4, p0, Le/a/e/c/z;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Le/a/e/c/z;->a:Le/a/e/c/s1;

    iget-object v0, p0, Le/a/e/c/z;->b:Ljava/lang/Runnable;

    iget-object v1, p0, Le/a/e/c/z;->c:Ljava/lang/String;

    iget-object v2, p0, Le/a/e/c/z;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p1, Le/a/e/c/s1;->s:Ln3/b/a/h;

    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v1, v3}, Le/a/e/a2;->d0(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const v0, 0x7f120704

    .line 4
    invoke-virtual {p1, v0}, Le/a/e/x0;->TA(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    :goto_0
    iget-object p1, p1, Le/a/e/c/s1;->o:Le/a/q2/a;

    const-string v0, "detailView"

    invoke-static {v0, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->e(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method
