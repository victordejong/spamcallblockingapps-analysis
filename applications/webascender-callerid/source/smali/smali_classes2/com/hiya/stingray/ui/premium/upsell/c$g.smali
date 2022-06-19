.class final Lcom/hiya/stingray/ui/premium/upsell/c$g;
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/c$g;->f:Lcom/hiya/stingray/ui/premium/upsell/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/c$g;->f:Lcom/hiya/stingray/ui/premium/upsell/c;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/upsell/c;->h1()Lcom/hiya/stingray/ui/premium/upsell/g;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/hiya/stingray/ui/premium/upsell/g;->M(Lcom/hiya/stingray/ui/premium/upsell/g;ZILjava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/c$g;->f:Lcom/hiya/stingray/ui/premium/upsell/c;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/upsell/c;->g1()Lcom/hiya/stingray/ui/premium/upsell/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/upsell/b;->g()V

    return-void
.end method
