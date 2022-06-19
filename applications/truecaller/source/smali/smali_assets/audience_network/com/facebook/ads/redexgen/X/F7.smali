.class public final Lcom/facebook/ads/redexgen/X/F7;
.super Lcom/facebook/ads/redexgen/X/cS;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1o;)V
    .locals 0

    .line 32952
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/cS;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1o;)V

    .line 32953
    return-void
.end method

.method private A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/0x;
    .locals 1

    .line 32954
    new-instance v0, Lcom/facebook/ads/redexgen/X/cQ;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/cQ;-><init>(Lcom/facebook/ads/redexgen/X/F7;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/F7;)V
    .locals 0

    .line 32955
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cS;->A0F()V

    return-void
.end method


# virtual methods
.method public final A0J()V
    .locals 1

    .line 32956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A01:Lcom/facebook/ads/redexgen/X/0n;

    check-cast v0, Lcom/facebook/ads/redexgen/X/d0;

    .line 32957
    .local p0, "interstitialAdapter":Lcom/facebook/ads/redexgen/X/d0;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/d0;->A0B()Z

    .line 32958
    return-void
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/94;Lcom/facebook/ads/redexgen/X/92;Lcom/facebook/ads/redexgen/X/1p;)V
    .locals 12

    move-object v4, p1

    .line 32959
    check-cast v4, Lcom/facebook/ads/redexgen/X/d0;

    .line 32960
    .local v3, "adapter":Lcom/facebook/ads/redexgen/X/d0;
    new-instance v3, Lcom/facebook/ads/redexgen/X/cR;

    move-object/from16 v7, p4

    invoke-direct {v3, p0, v7, v4}, Lcom/facebook/ads/redexgen/X/cR;-><init>(Lcom/facebook/ads/redexgen/X/F7;Lcom/facebook/ads/redexgen/X/1p;Lcom/facebook/ads/redexgen/X/d0;)V

    .line 32961
    .local v2, "interstitialTimeout":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cS;->A0C()Landroid/os/Handler;

    move-result-object v2

    .line 32962
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/94;->A05()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A05()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32963
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    .line 32964
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/F7;->A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/0x;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A07:Lcom/facebook/ads/redexgen/X/1o;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/1o;->A09:Ljava/util/EnumSet;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A07:Lcom/facebook/ads/redexgen/X/1o;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/1o;->A03:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A07:Lcom/facebook/ads/redexgen/X/1o;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/1o;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A07:Lcom/facebook/ads/redexgen/X/1o;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/1o;->A01:Lcom/facebook/ads/RewardData;

    .line 32965
    invoke-virtual/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/d0;->A0A(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/0x;Lcom/facebook/ads/redexgen/X/1p;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/RewardData;)V

    .line 32966
    return-void
.end method

.method public final A0T()Lcom/facebook/ads/redexgen/X/16;
    .locals 1

    .line 32967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A01:Lcom/facebook/ads/redexgen/X/0n;

    check-cast v0, Lcom/facebook/ads/redexgen/X/d0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/d0;->A09()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    return-object v0
.end method
