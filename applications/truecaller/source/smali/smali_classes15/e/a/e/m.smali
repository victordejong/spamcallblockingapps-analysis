.class public final synthetic Le/a/e/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# instance fields
.field public final synthetic a:Le/a/e/v0;

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Le/a/e/v0;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/m;->a:Le/a/e/v0;

    iput-object p2, p0, Le/a/e/m;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Le/a/e/m;->a:Le/a/e/v0;

    iget-object v1, p0, Le/a/e/m;->b:Landroid/app/Activity;

    check-cast p1, Ljava/lang/Integer;

    .line 1
    invoke-virtual {v0}, Le/a/e/x0;->SA()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v4, 0xc8

    if-ne p1, v4, :cond_0

    .line 3
    iget-object p1, v0, Le/a/e/v0;->p:Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const p1, 0x7f12028b

    .line 4
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    sget v0, Lcom/truecaller/old/ui/activities/DialogActivity;->a:I

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/old/ui/activities/DialogActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    .line 7
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "ARG_TITLE"

    const-string v4, ""

    .line 8
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "ARG_TEXT"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 9
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "FEEDBACK_SENT"

    .line 10
    invoke-static {p1, v2}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    .line 11
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, v0, Le/a/e/v0;->p:Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const p1, 0x7f12028a

    const/4 v3, 0x0

    .line 13
    invoke-static {v1, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 14
    invoke-virtual {v0, v2}, Le/a/e/v0;->ZA(Z)V

    .line 15
    iput-boolean v3, v0, Le/a/e/v0;->f:Z

    .line 16
    :cond_1
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
