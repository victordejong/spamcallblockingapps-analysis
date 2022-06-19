.class public final Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity;
.super Lcom/hiya/stingray/ui/common/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;
    }
.end annotation


# static fields
.field public static final r:Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity;->r:Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/e;-><init>()V

    return-void
.end method

.method public static final O(Landroid/content/Context;Lcom/hiya/stingray/ui/premium/upsell/c$b;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity;->r:Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;

    invoke-virtual {v0, p0, p1}, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;->a(Landroid/content/Context;Lcom/hiya/stingray/ui/premium/upsell/c$b;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->z()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->v(Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity;)V

    const p1, 0x7f060163

    .line 3
    invoke-static {p0, p1}, Lcom/hiya/stingray/util/e0;->p(Landroid/app/Activity;I)V

    const p1, 0x7f0c0027

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/c;->setContentView(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object p1

    .line 6
    sget-object v0, Lcom/hiya/stingray/ui/premium/upsell/c;->w:Lcom/hiya/stingray/ui/premium/upsell/c$a;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "EXTRA_SOURCE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Lcom/hiya/stingray/ui/premium/upsell/c$b;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    check-cast v2, Lcom/hiya/stingray/ui/premium/upsell/c$b;

    if-eqz v2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    sget-object v2, Lcom/hiya/stingray/ui/premium/upsell/c$b;->DEFAULT:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    .line 9
    :goto_2
    invoke-virtual {v0, v2}, Lcom/hiya/stingray/ui/premium/upsell/c$a;->a(Lcom/hiya/stingray/ui/premium/upsell/c$b;)Lcom/hiya/stingray/ui/premium/upsell/c;

    move-result-object v0

    const v1, 0x7f090126

    .line 10
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/y;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/y;->i()I

    return-void
.end method
