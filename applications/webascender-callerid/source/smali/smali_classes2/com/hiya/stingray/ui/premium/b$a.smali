.class final Lcom/hiya/stingray/ui/premium/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/premium/b;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/b$a;->f:Lcom/hiya/stingray/ui/premium/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/b$a;->f:Lcom/hiya/stingray/ui/premium/b;

    sget-object v0, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity;->r:Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/hiya/stingray/ui/premium/upsell/c$b;->BASIC_TAB:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;->a(Landroid/content/Context;Lcom/hiya/stingray/ui/premium/upsell/c$b;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/b$a;->f:Lcom/hiya/stingray/ui/premium/b;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/b;->g1()Lcom/hiya/stingray/ui/premium/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/a;->c()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method
