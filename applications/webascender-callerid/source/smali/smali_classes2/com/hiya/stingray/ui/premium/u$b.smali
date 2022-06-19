.class final Lcom/hiya/stingray/ui/premium/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/u;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/premium/u;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/u;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/u$b;->f:Lcom/hiya/stingray/ui/premium/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/u$b;->f:Lcom/hiya/stingray/ui/premium/u;

    .line 2
    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity;->r:Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;

    const-string v2, "it"

    .line 3
    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "it.context"

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v2, Lcom/hiya/stingray/ui/premium/upsell/c$b;->SELECT_EXPIRE:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    .line 5
    invoke-virtual {v1, p1, v2}, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;->a(Landroid/content/Context;Lcom/hiya/stingray/ui/premium/upsell/c$b;)Landroid/content/Intent;

    move-result-object p1

    const/16 v1, 0x66

    .line 6
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
