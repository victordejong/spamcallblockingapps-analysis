.class final Lcom/hiya/stingray/ui/premium/b0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/b0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/premium/b0;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/b0;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/b0$c;->f:Lcom/hiya/stingray/ui/premium/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/b0$c;->f:Lcom/hiya/stingray/ui/premium/b0;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/b0;->h1()Lcom/hiya/stingray/ui/premium/upsell/g;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/premium/upsell/g;->R(Z)V

    return-void
.end method
