.class public final Lcom/facebook/ads/redexgen/X/JZ;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Pu;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Pu;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Pu;)V
    .locals 0

    .line 40671
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JZ;->A00:Lcom/facebook/ads/redexgen/X/Pu;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 1

    .line 40672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JZ;->A00:Lcom/facebook/ads/redexgen/X/Pu;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/7d;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/JX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JX;->A0E(Lcom/facebook/ads/redexgen/X/JX;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JZ;->A00:Lcom/facebook/ads/redexgen/X/Pu;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/7d;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/JX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JX;->A0C(Lcom/facebook/ads/redexgen/X/JX;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JZ;->A00:Lcom/facebook/ads/redexgen/X/Pu;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/7d;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/JX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JX;->A09(Lcom/facebook/ads/redexgen/X/JX;)V

    .line 40674
    :cond_0
    return-void
.end method
