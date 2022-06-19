.class public final synthetic Le/a/e/c/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/n0;->a:Le/a/e/c/s1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Le/a/e/c/n0;->a:Le/a/e/c/s1;

    .line 1
    iget-object v0, p1, Le/a/e/c/s1;->o:Le/a/q2/a;

    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->MAP:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v2, "detailView"

    invoke-static {v2, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->e(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 2
    iget-object v0, p1, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->z()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Le/a/e/c/s1;->s:Ln3/b/a/h;

    if-eqz v1, :cond_0

    invoke-static {v0}, Le/a/b0/q/t;->d(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p1, Le/a/e/c/s1;->s:Ln3/b/a/h;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p1, Le/a/e/c/s1;->s:Ln3/b/a/h;

    .line 5
    invoke-static {v0}, Le/a/b0/q/t;->d(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Le/a/b0/q/t;->n(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
