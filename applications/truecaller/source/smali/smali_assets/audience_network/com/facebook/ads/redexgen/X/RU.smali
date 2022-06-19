.class public final Lcom/facebook/ads/redexgen/X/RU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OW;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/RT;->A08(Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Lz;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/PE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PE;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/RT;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RT;Lcom/facebook/ads/redexgen/X/PE;)V
    .locals 0

    .line 50752
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RU;->A01:Lcom/facebook/ads/redexgen/X/RT;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:Lcom/facebook/ads/redexgen/X/PE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9r()V
    .locals 1

    .line 50753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:Lcom/facebook/ads/redexgen/X/PE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PE;->A02()I

    move-result v0

    if-nez v0, :cond_0

    .line 50754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A01:Lcom/facebook/ads/redexgen/X/RT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RT;->A04(Lcom/facebook/ads/redexgen/X/RT;)Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0U()V

    .line 50755
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A01:Lcom/facebook/ads/redexgen/X/RT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RT;->A07(Lcom/facebook/ads/redexgen/X/RT;)Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0U()V

    .line 50756
    return-void
.end method
