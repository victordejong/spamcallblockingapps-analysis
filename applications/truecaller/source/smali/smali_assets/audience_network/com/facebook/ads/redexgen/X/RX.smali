.class public final Lcom/facebook/ads/redexgen/X/RX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OV;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/84;->A0D(Lcom/facebook/ads/redexgen/X/Rh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/84;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/84;)V
    .locals 0

    .line 50775
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RX;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AF8(I)V
    .locals 1

    .line 50776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RX;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A05(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/O9;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RX;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A05(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/O9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/O9;->A00(I)V

    .line 50778
    :cond_0
    return-void
.end method
