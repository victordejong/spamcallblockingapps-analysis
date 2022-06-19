.class final Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$u;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->B1(ILandroid/widget/TextView;Z[Ljava/lang/String;ZLjava/lang/String;Lkotlin/w/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Ljava/lang/Integer;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

.field final synthetic g:Z

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Landroid/widget/TextView;

.field final synthetic j:[Ljava/lang/String;

.field final synthetic k:Lkotlin/w/b/l;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;ZLjava/lang/String;Landroid/widget/TextView;[Ljava/lang/String;Lkotlin/w/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$u;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    iput-boolean p2, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$u;->g:Z

    iput-object p3, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$u;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$u;->i:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$u;->j:[Ljava/lang/String;

    iput-object p6, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$u;->k:Lkotlin/w/b/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1
    iget-boolean v1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$u;->g:Z

    if-eqz v1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$u;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->m1()Lcom/hiya/stingray/manager/e1;

    move-result-object p1

    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v0

    const-string v1, "upgrade"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$u;->h:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    :cond_1
    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$u;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v0, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity;->r:Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$u;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/hiya/stingray/ui/premium/upsell/c$b;->CALL_SETTINGS:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;->a(Landroid/content/Context;Lcom/hiya/stingray/ui/premium/upsell/c$b;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$u;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$u;->j:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$u;->k:Lkotlin/w/b/l;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$u;->a(I)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
