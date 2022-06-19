.class public final synthetic Le/a/e/c/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/v0;->a:Le/a/e/c/s1;

    iput-object p2, p0, Le/a/e/c/v0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    iget-object p1, p0, Le/a/e/c/v0;->a:Le/a/e/c/s1;

    iget-object v0, p0, Le/a/e/c/v0;->b:Ljava/lang/String;

    .line 1
    iget-object v1, p1, Le/a/e/c/s1;->o:Le/a/q2/a;

    sget-object v2, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->COPY:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    sget-object v3, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->NUMBER:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    const-string v4, "detailView"

    invoke-static {v4, v2, v3}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->f(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 2
    invoke-virtual {p1, v0}, Le/a/e/x0;->QA(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
