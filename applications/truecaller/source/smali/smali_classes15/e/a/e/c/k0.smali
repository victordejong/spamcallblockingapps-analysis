.class public final synthetic Le/a/e/c/k0;
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

    iput-object p1, p0, Le/a/e/c/k0;->a:Le/a/e/c/s1;

    iput-object p2, p0, Le/a/e/c/k0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object p1, p0, Le/a/e/c/k0;->a:Le/a/e/c/s1;

    iget-object v0, p0, Le/a/e/c/k0;->b:Ljava/lang/String;

    .line 1
    invoke-virtual {p1, v0}, Le/a/e/x0;->RA(Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Le/a/e/c/s1;->o:Le/a/q2/a;

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->COPY:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->EMAIL:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    const-string v2, "detailView"

    invoke-static {v2, v0, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->f(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    const/4 p1, 0x1

    return p1
.end method
