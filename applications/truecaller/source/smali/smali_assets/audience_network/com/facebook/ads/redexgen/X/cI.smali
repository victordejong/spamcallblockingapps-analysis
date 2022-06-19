.class public final Lcom/facebook/ads/redexgen/X/cI;
.super Lcom/facebook/ads/redexgen/X/Ki;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/cG;->ABI(ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/os/Message;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/cG;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cG;Landroid/os/Message;)V
    .locals 0

    .line 71417
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cI;->A01:Lcom/facebook/ads/redexgen/X/cG;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cI;->A00:Landroid/os/Message;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ki;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 71418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cI;->A01:Lcom/facebook/ads/redexgen/X/cG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cG;->A01(Lcom/facebook/ads/redexgen/X/cG;)Lcom/facebook/ads/redexgen/X/1z;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cI;->A00:Landroid/os/Message;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1z;->A7r(Landroid/os/Message;)V

    .line 71419
    return-void
.end method
