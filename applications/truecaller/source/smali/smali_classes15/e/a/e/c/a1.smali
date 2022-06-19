.class public final synthetic Le/a/e/c/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/a1;->a:Le/a/e/c/s1;

    iput-object p2, p0, Le/a/e/c/a1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Le/a/e/c/a1;->a:Le/a/e/c/s1;

    iget-object v0, p0, Le/a/e/c/a1;->b:Ljava/lang/String;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http://"

    .line 2
    invoke-static {v0, v1}, Lw3/c/a/a/a/h;->y(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://"

    invoke-static {v0, v2}, Lw3/c/a/a/a/h;->y(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-static {v1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Le/a/e/a2;->S(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 5
    iget-object p1, p1, Le/a/e/c/s1;->o:Le/a/q2/a;

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->BROWSER:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->LINK:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    const-string v2, "detailView"

    invoke-static {v2, v0, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->f(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method
