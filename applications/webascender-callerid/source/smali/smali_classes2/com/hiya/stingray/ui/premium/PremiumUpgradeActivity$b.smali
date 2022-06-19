.class final Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity$b;
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity$b;->f:Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity$b;->f:Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity$b;->f:Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;

    const-class v2, Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity$b;->f:Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;->P()Lcom/hiya/stingray/ui/premium/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/r;->a()V

    return-void
.end method
