.class final Lcom/hiya/stingray/ui/premium/upsell/c$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/c$k;->f:Lcom/hiya/stingray/ui/premium/upsell/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/c$k;->f:Lcom/hiya/stingray/ui/premium/upsell/c;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/upsell/c;->h1()Lcom/hiya/stingray/ui/premium/upsell/g;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/premium/upsell/g;->L(Z)V

    return v0
.end method
