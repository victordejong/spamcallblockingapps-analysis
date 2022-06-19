.class public final Lj1;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lj1;->a:I

    iput-object p2, p0, Lj1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lj1;->a:I

    const/4 v0, 0x0

    const-string v1, "requireContext()"

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1
    iget-object p1, p0, Lj1;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/k/p;

    .line 2
    iget-object p1, p1, Le/a/e/b/k/p;->M:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 4
    :cond_0
    iget-object p1, p0, Lj1;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/k/p;

    invoke-virtual {p1}, Le/a/e/b/k/p;->OA()Le/a/e/b/k/t;

    move-result-object p1

    xor-int/2addr v0, v2

    invoke-interface {p1, v0}, Le/a/e/b/k/t;->Id(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lj1;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/k/p;

    .line 6
    iget-object p1, p1, Le/a/e/b/k/p;->M:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 8
    throw p1

    .line 9
    :cond_3
    iget-object p1, p0, Lj1;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/k/p;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    .line 10
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 13
    :cond_4
    iget-object p1, p0, Lj1;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/k/p;

    invoke-virtual {p1}, Le/a/e/b/k/p;->OA()Le/a/e/b/k/t;

    move-result-object p1

    invoke-interface {p1}, Le/a/e/b/k/t;->ve()V

    .line 14
    iget-object p1, p0, Lj1;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/k/p;

    sget-object v2, Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity;->f:Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity$b;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;->SETTINGS:Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;

    .line 15
    invoke-virtual {v2, v3, v1, v0}, Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity$b;->a(Landroid/content/Context;Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;Z)Landroid/content/Intent;

    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
