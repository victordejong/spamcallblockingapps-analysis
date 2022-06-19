.class final Lcom/hiya/stingray/ui/premium/upsell/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/upsell/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/premium/upsell/c;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/upsell/c;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/c$d;->f:Lcom/hiya/stingray/ui/premium/upsell/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/c$d;->f:Lcom/hiya/stingray/ui/premium/upsell/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/c$d;->f:Lcom/hiya/stingray/ui/premium/upsell/c;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/upsell/c;->g1()Lcom/hiya/stingray/ui/premium/upsell/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/upsell/b;->a()V

    return-void
.end method
