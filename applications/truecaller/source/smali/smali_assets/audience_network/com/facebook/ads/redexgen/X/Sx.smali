.class public final Lcom/facebook/ads/redexgen/X/Sx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PN;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Sw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayableAdsViewListenerImpl"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sw;)V
    .locals 0

    .line 53452
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Sw;Lcom/facebook/ads/redexgen/X/T3;)V
    .locals 0

    .line 53453
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/Sw;)V

    return-void
.end method


# virtual methods
.method public final AAE()V
    .locals 2

    .line 53454
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0W(Lcom/facebook/ads/redexgen/X/Sw;Z)V

    .line 53455
    return-void
.end method

.method public final AAk()V
    .locals 4

    .line 53456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A00(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A03(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    .line 53458
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A00(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nu;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nu;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    .line 53459
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0D(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/PP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PP;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A03(Lcom/facebook/ads/redexgen/X/QZ;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    .line 53460
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0D(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/PP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PP;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Lcom/facebook/ads/redexgen/X/Lz;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v0

    .line 53461
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A05()Ljava/util/Map;

    move-result-object v0

    .line 53462
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JT;->A8v(Ljava/lang/String;Ljava/util/Map;)V

    .line 53463
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A00(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/26;->A00(Ljava/lang/String;)V

    .line 53464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A02(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Y()V

    .line 53465
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A07(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A08(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A6i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->A3q(Ljava/lang/String;)V

    .line 53466
    return-void
.end method

.method public final AB5()V
    .locals 2

    .line 53467
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A07(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A08(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A6V()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->A3q(Ljava/lang/String;)V

    .line 53468
    return-void
.end method

.method public final ACd()V
    .locals 2

    .line 53469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A07(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v1

    const/16 v0, 0xf

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->AA3(I)V

    .line 53470
    return-void
.end method
