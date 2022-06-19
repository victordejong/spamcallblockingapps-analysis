.class public final Lcom/facebook/ads/redexgen/X/Rz;
.super Lcom/facebook/ads/redexgen/X/QY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Rv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rv;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rv;)V
    .locals 0

    .line 51267
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/redexgen/X/Rv;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QY;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 3

    .line 51268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/redexgen/X/Rv;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rv;->A06:Lcom/facebook/ads/redexgen/X/Lz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lz;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/redexgen/X/Rv;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rv;->A06:Lcom/facebook/ads/redexgen/X/Lz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lz;->A05()V

    .line 51270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/redexgen/X/Rv;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51271
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nu;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nu;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/redexgen/X/Rv;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rv;->A0A:Lcom/facebook/ads/redexgen/X/QZ;

    .line 51272
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A03(Lcom/facebook/ads/redexgen/X/QZ;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/redexgen/X/Rv;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rv;->A06:Lcom/facebook/ads/redexgen/X/Lz;

    .line 51273
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Lcom/facebook/ads/redexgen/X/Lz;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/redexgen/X/Rv;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 51274
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v0

    .line 51275
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A05()Ljava/util/Map;

    move-result-object v2

    .line 51276
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/redexgen/X/Rv;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Rv;->A04:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/redexgen/X/Rv;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/JT;->A8v(Ljava/lang/String;Ljava/util/Map;)V

    .line 51277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/redexgen/X/Rv;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rv;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Y()V

    .line 51278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/redexgen/X/Rv;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 51279
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0S()Ljava/lang/String;

    move-result-object v0

    .line 51280
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/26;->A00(Ljava/lang/String;)V

    .line 51281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/redexgen/X/Rv;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Rv;->A08:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/redexgen/X/Rv;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rv;->A09:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A6i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->A3q(Ljava/lang/String;)V

    .line 51282
    .end local p0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
