.class public final Lcom/facebook/ads/redexgen/X/RY;
.super Lcom/facebook/ads/redexgen/X/QY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/84;->A0B(ILandroid/os/Bundle;)V
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

    .line 50779
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RY;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QY;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 3

    .line 50780
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RY;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A04(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lz;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50781
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RY;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/84;->A04(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/84;->A0E(Lcom/facebook/ads/redexgen/X/84;Lcom/facebook/ads/redexgen/X/Lz;)V

    .line 50782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RY;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A08(Lcom/facebook/ads/redexgen/X/84;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50783
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nu;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nu;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RY;->A00:Lcom/facebook/ads/redexgen/X/84;

    .line 50784
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A06(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A03(Lcom/facebook/ads/redexgen/X/QZ;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RY;->A00:Lcom/facebook/ads/redexgen/X/84;

    .line 50785
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A04(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Lcom/facebook/ads/redexgen/X/Lz;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RY;->A00:Lcom/facebook/ads/redexgen/X/84;

    .line 50786
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A00(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v0

    .line 50787
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A05()Ljava/util/Map;

    move-result-object v2

    .line 50788
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RY;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A03(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RY;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A08(Lcom/facebook/ads/redexgen/X/84;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/JT;->A8v(Ljava/lang/String;Ljava/util/Map;)V

    .line 50789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RY;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A02(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Y()V

    .line 50790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RY;->A00:Lcom/facebook/ads/redexgen/X/84;

    .line 50791
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A01(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0S()Ljava/lang/String;

    move-result-object v0

    .line 50792
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/26;->A00(Ljava/lang/String;)V

    .line 50793
    .end local p0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
