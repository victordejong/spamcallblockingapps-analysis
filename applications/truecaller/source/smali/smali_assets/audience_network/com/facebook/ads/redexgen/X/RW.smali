.class public final Lcom/facebook/ads/redexgen/X/RW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/50;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/84;->A8e(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/52;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/52;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/84;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/84;Lcom/facebook/ads/redexgen/X/52;)V
    .locals 0

    .line 50768
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RW;->A01:Lcom/facebook/ads/redexgen/X/84;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RW;->A00:Lcom/facebook/ads/redexgen/X/52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A8E()Z
    .locals 3

    .line 50769
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RW;->A01:Lcom/facebook/ads/redexgen/X/84;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T4;->A0X()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 50770
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RW;->A01:Lcom/facebook/ads/redexgen/X/84;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RW;->A00:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T4;->A0W(Lcom/facebook/ads/redexgen/X/52;)V

    .line 50771
    return v2

    .line 50772
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RW;->A01:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A0G(Lcom/facebook/ads/redexgen/X/84;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50773
    return v2

    .line 50774
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RW;->A01:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A0F(Lcom/facebook/ads/redexgen/X/84;)Z

    move-result v0

    return v0
.end method
