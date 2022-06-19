.class public Lcom/hiya/stingray/ui/login/OnBoardingActivity;
.super Lcom/hiya/stingray/ui/common/e;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/login/m;
.implements Lcom/hiya/stingray/ui/common/error/b$c;


# instance fields
.field r:Lcom/hiya/stingray/ui/common/error/e;

.field s:Lcom/hiya/stingray/ui/login/l;

.field t:Lcom/hiya/stingray/util/a0;

.field u:Lcom/hiya/stingray/manager/e1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public O()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->A()Li/c/b0/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/login/OnBoardingActivity;->r:Lcom/hiya/stingray/ui/common/error/e;

    iget-object v2, p0, Lcom/hiya/stingray/ui/login/OnBoardingActivity;->t:Lcom/hiya/stingray/util/a0;

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->L()Li/c/b0/b/v;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/hiya/stingray/t/e1/a;

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/hiya/stingray/ui/common/error/e;->h(Lcom/hiya/stingray/util/a0;Li/c/b0/b/v;Landroidx/fragment/app/n;Ljava/lang/String;Ljava/lang/Class;)Li/c/b0/c/c;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public a(Lcom/hiya/stingray/exception/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/OnBoardingActivity;->s:Lcom/hiya/stingray/ui/login/l;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/login/l;->u(Lcom/hiya/stingray/exception/a;)V

    return-void
.end method

.method public cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->P(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/hiya/stingray/ui/premium/SoftPaywallActivity;->O(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/hiya/stingray/ui/premium/SelectExpireActivity;->O(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/hiya/stingray/ui/login/PermissionFragment;->i1(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public i()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hiya/stingray/ui/local/MainActivity;->l0(Landroid/content/Context;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/e;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x64

    if-eq p1, p3, :cond_1

    const/16 p3, 0x65

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/OnBoardingActivity;->s:Lcom/hiya/stingray/ui/login/l;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/l;->t()V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/OnBoardingActivity;->s:Lcom/hiya/stingray/ui/login/l;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/l;->v()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->z()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->l0(Lcom/hiya/stingray/ui/login/OnBoardingActivity;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/OnBoardingActivity;->s:Lcom/hiya/stingray/ui/login/l;

    invoke-virtual {p1, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/login/OnBoardingActivity;->O()V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/OnBoardingActivity;->s:Lcom/hiya/stingray/ui/login/l;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/l;->v()V

    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/hiya/stingray/ui/login/MarketingFragment;->i1(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public u()V
    .locals 2

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/premium/upsell/c$b;->PAYWALL:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    invoke-static {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity;->O(Landroid/content/Context;Lcom/hiya/stingray/ui/premium/upsell/c$b;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
