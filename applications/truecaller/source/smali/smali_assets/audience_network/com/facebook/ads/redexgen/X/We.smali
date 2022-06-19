.class public final Lcom/facebook/ads/redexgen/X/We;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioSinkListener"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/1c;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1c;)V
    .locals 0

    .line 63963
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/We;->A00:Lcom/facebook/ads/redexgen/X/1c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/1c;Lcom/facebook/ads/redexgen/X/BZ;)V
    .locals 0

    .line 63964
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/We;-><init>(Lcom/facebook/ads/redexgen/X/1c;)V

    return-void
.end method


# virtual methods
.method public final A9w(I)V
    .locals 1

    .line 63965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A00:Lcom/facebook/ads/redexgen/X/1c;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1c;->A03(Lcom/facebook/ads/redexgen/X/1c;)Lcom/facebook/ads/redexgen/X/BF;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/BF;->A01(I)V

    .line 63966
    return-void
.end method

.method public final ABe()V
    .locals 2

    .line 63967
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/We;->A00:Lcom/facebook/ads/redexgen/X/1c;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A07(Lcom/facebook/ads/redexgen/X/1c;Z)Z

    .line 63968
    return-void
.end method

.method public final ACM(IJJ)V
    .locals 6

    .line 63969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A00:Lcom/facebook/ads/redexgen/X/1c;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1c;->A03(Lcom/facebook/ads/redexgen/X/1c;)Lcom/facebook/ads/redexgen/X/BF;

    move-result-object v0

    move-wide v2, p2

    move-wide v4, p4

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/BF;->A02(IJJ)V

    .line 63970
    return-void
.end method
