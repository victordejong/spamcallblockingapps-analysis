.class public final Le/a/l/a/b$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/l/a/b$a;->a:I

    iput-object p2, p0, Le/a/l/a/b$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Le/a/l/a/b$a;->a:I

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1
    iget-object p1, p0, Le/a/l/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/a/b;

    invoke-virtual {p1}, Le/a/l/a/b;->SA()Le/a/p4/b;

    move-result-object p1

    .line 2
    iget-object v1, p0, Le/a/l/a/b$a;->b:Ljava/lang/Object;

    check-cast v1, Le/a/l/a/b;

    .line 3
    invoke-virtual {v1}, Le/a/l/a/b;->RA()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "premiumTopImageUrlView"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Le/a/p4/b;->Q(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Le/a/l/a/b$a;->b:Ljava/lang/Object;

    check-cast v1, Le/a/l/a/b;

    .line 6
    invoke-virtual {v1}, Le/a/l/a/b;->QA()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "goldImageUrlView"

    .line 7
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Le/a/p4/b;->P0(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Le/a/l/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/a/b;

    .line 9
    iget-object v1, p1, Le/a/l/a/b;->f:Le/a/l/a2;

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "requireContext()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/truecaller/premium/PremiumLaunchContext;->NAV_DRAWER:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {v1, p1, v0}, Le/a/l/a2;->b(Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;)V

    return-void

    :cond_0
    const-string p1, "premiumScreenNavigator"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    throw v0

    .line 13
    :cond_2
    iget-object p1, p0, Le/a/l/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/a/b;

    invoke-virtual {p1}, Le/a/l/a/b;->SA()Le/a/p4/b;

    move-result-object p1

    .line 14
    invoke-interface {p1, v0}, Le/a/p4/b;->Q(Ljava/lang/String;)V

    .line 15
    invoke-interface {p1, v0}, Le/a/p4/b;->P0(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Le/a/l/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/a/b;

    .line 17
    invoke-virtual {p1}, Le/a/l/a/b;->RA()Landroid/widget/EditText;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 20
    iget-object p1, p0, Le/a/l/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/a/b;

    .line 21
    invoke-virtual {p1}, Le/a/l/a/b;->QA()Landroid/widget/EditText;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method
