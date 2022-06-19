.class public final synthetic Le/a/e/c/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1$p;

.field public final synthetic b:Le/a/k3/l/d;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1$p;Le/a/k3/l/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/h0;->a:Le/a/e/c/s1$p;

    iput-object p2, p0, Le/a/e/c/h0;->b:Le/a/k3/l/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Le/a/e/c/h0;->a:Le/a/e/c/s1$p;

    iget-object v0, p0, Le/a/e/c/h0;->b:Le/a/k3/l/d;

    .line 1
    iget-object v1, p1, Le/a/e/c/s1$p;->a:Le/a/e/c/s1;

    .line 2
    iget-object v1, v1, Le/a/e/c/s1;->E0:Le/a/j2;

    .line 3
    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    const-string v2, "detailView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Le/a/k3/l/d;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Le/a/k3/l/d;->c:Landroid/content/Intent;

    .line 4
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "context"

    .line 5
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "subAction"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "externalApp"

    const-string v5, "action"

    .line 6
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v5, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v5, v4, v3, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {v1, v5}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 9
    iget-object v1, v0, Le/a/k3/l/d;->c:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 10
    :try_start_0
    iget-object p1, p1, Le/a/e/c/s1$p;->a:Le/a/e/c/s1;

    iget-object v0, v0, Le/a/k3/l/d;->c:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
