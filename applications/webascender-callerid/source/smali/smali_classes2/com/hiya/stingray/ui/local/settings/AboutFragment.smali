.class public final Lcom/hiya/stingray/ui/local/settings/AboutFragment;
.super Lcom/hiya/stingray/ui/local/settings/i;
.source "SourceFile"


# instance fields
.field public r:Lcom/hiya/stingray/manager/x3;

.field private final s:Ljava/lang/String;

.field private t:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/settings/i;-><init>()V

    const-string v0, "about"

    .line 2
    iput-object v0, p0, Lcom/hiya/stingray/ui/local/settings/AboutFragment;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/AboutFragment;->t:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/AboutFragment;->s:Ljava/lang/String;

    return-object v0
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/AboutFragment;->t:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/settings/AboutFragment;->t:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/AboutFragment;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/AboutFragment;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public k1(Lcom/hiya/stingray/t/a1;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "setting"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/local/settings/i;->k1(Lcom/hiya/stingray/t/a1;Ljava/lang/Boolean;)V

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/a1;->b()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object p2, Lcom/hiya/stingray/manager/c4$a;->MY_PHONE_NUMBER:Lcom/hiya/stingray/manager/c4$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/i;->h1()Lcom/hiya/stingray/manager/o2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/o2;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lcom/hiya/stingray/ui/setting/d;

    invoke-direct {p1}, Lcom/hiya/stingray/ui/setting/d;-><init>()V

    invoke-static {p0, p1}, Lcom/hiya/stingray/ui/local/c;->a(Lcom/hiya/stingray/ui/common/i;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/hiya/stingray/ui/login/verification/VerificationActivity;->r:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "context!!"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;->SETTINGS:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    invoke-virtual {p1, p2, v0}, Lcom/hiya/stingray/ui/login/verification/VerificationActivity$a;->a(Landroid/content/Context;Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    .line 7
    :cond_2
    sget-object p2, Lcom/hiya/stingray/manager/c4$a;->TERMS:Lcom/hiya/stingray/manager/c4$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/hiya/stingray/ui/local/settings/AboutFragment;->r:Lcom/hiya/stingray/manager/x3;

    if-eqz p2, :cond_3

    const-string v0, "settings_terms_of_use_url"

    invoke-virtual {p2, v0}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hiya/stingray/util/u;->i(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "remoteConfigManager"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    .line 8
    :cond_5
    sget-object p2, Lcom/hiya/stingray/manager/c4$a;->PRIVACY:Lcom/hiya/stingray/manager/c4$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_6

    const v0, 0x7f1103b7

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hiya/stingray/util/u;->i(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_7
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    .line 9
    :cond_8
    sget-object p2, Lcom/hiya/stingray/manager/c4$a;->PRIVACY_AND_DATA:Lcom/hiya/stingray/manager/c4$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Lcom/hiya/stingray/ui/local/settings/f;

    invoke-direct {p1}, Lcom/hiya/stingray/ui/local/settings/f;-><init>()V

    invoke-static {p0, p1}, Lcom/hiya/stingray/ui/local/c;->a(Lcom/hiya/stingray/ui/common/i;Landroidx/fragment/app/Fragment;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public m1()V
    .locals 7

    .line 1
    sget v0, Lcom/hiya/stingray/o;->z4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/AboutFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    const-string v0, "toolBar"

    invoke-static {v1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "activity!!"

    invoke-static {v2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f11032b

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "getString(R.string.settings_about)"

    invoke-static {v3, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/hiya/stingray/util/e0;->s(Landroidx/appcompat/widget/Toolbar;Landroid/app/Activity;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/local/settings/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->J(Lcom/hiya/stingray/ui/local/settings/AboutFragment;)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/local/settings/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/AboutFragment;->Z0()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/i;->j1()Lcom/hiya/stingray/manager/c4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/c4;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/i;->l1(Ljava/util/List;)V

    return-void
.end method
