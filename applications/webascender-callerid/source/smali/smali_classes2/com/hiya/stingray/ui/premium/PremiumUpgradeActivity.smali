.class public final Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;
.super Lcom/hiya/stingray/ui/common/e;
.source "SourceFile"


# instance fields
.field public r:Lcom/hiya/stingray/manager/x3;

.field public s:Lcom/hiya/stingray/ui/premium/r;

.field private t:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/e;-><init>()V

    return-void
.end method

.method private final Q()V
    .locals 5

    .line 1
    sget v0, Lcom/hiya/stingray/o;->F:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "body"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->r:Lcom/hiya/stingray/manager/x3;

    const/4 v2, 0x0

    const-string v3, "remoteConfigManager"

    if-eqz v1, :cond_5

    const-string v4, "premium_upgrade_body"

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->I4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tryButtonTop"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->r:Lcom/hiya/stingray/manager/x3;

    if-eqz v1, :cond_4

    const-string v4, "premium_upgrade_try_button_top"

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget v0, Lcom/hiya/stingray/o;->H4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tryButtonBottom"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->r:Lcom/hiya/stingray/manager/x3;

    if-eqz v1, :cond_3

    const-string v4, "premium_upgrade_try_button_bottom"

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    sget v0, Lcom/hiya/stingray/o;->j4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "subtitle"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->r:Lcom/hiya/stingray/manager/x3;

    if-eqz v1, :cond_2

    const-string v4, "premium_upgrade_subtitle"

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget v0, Lcom/hiya/stingray/o;->m1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "footer"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->r:Lcom/hiya/stingray/manager/x3;

    if-eqz v1, :cond_1

    const-string v4, "premium_upgrade_footer"

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    sget v0, Lcom/hiya/stingray/o;->W3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    const-string v1, "skip"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->r:Lcom/hiya/stingray/manager/x3;

    if-eqz v1, :cond_0

    const-string v2, "premium_upgrade_continue_button"

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_1
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_2
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_3
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_4
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_5
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public O(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->t:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->t:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final P()Lcom/hiya/stingray/ui/premium/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->s:Lcom/hiya/stingray/ui/premium/r;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->z()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->o0(Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;)V

    const p1, 0x7f060163

    .line 3
    invoke-static {p0, p1}, Lcom/hiya/stingray/util/e0;->p(Landroid/app/Activity;I)V

    const p1, 0x7f0c0024

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/c;->setContentView(I)V

    .line 5
    sget p1, Lcom/hiya/stingray/o;->C4:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity$a;-><init>(Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget p1, Lcom/hiya/stingray/o;->W3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity$b;-><init>(Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->Q()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/e;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->s:Lcom/hiya/stingray/ui/premium/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/premium/r;->b()V

    return-void

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
