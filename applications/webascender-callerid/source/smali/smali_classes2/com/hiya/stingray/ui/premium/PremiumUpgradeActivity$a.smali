.class final Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity$a;->f:Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity$a;->f:Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;

    sget-object v0, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity;->r:Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;

    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/c$b;->AFTER_UPDATE:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    invoke-virtual {v0, p1, v1}, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;->a(Landroid/content/Context;Lcom/hiya/stingray/ui/premium/upsell/c$b;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity$a;->f:Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->P()Lcom/hiya/stingray/ui/premium/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/r;->c()V

    return-void
.end method
