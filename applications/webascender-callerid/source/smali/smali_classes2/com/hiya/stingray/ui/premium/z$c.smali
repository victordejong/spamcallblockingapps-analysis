.class final Lcom/hiya/stingray/ui/premium/z$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/z;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/premium/z;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/z;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/z$c;->f:Lcom/hiya/stingray/ui/premium/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/z$c;->f:Lcom/hiya/stingray/ui/premium/z;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/z;->h1()Lcom/hiya/stingray/ui/premium/upsell/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/upsell/g;->C()V

    return-void
.end method
