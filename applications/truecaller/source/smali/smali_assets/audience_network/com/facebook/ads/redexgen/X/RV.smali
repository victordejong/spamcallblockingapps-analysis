.class public final Lcom/facebook/ads/redexgen/X/RV;
.super Lcom/facebook/ads/redexgen/X/QY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/RT;->A08(Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Lz;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/PE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JT;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Lz;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/PE;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/RT;

.field public final synthetic A04:Ljava/lang/String;

.field public final synthetic A05:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/PE;Lcom/facebook/ads/redexgen/X/JT;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Lz;)V
    .locals 0

    .line 50757
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RV;->A03:Lcom/facebook/ads/redexgen/X/RT;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RV;->A04:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/RV;->A02:Lcom/facebook/ads/redexgen/X/PE;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/RV;->A00:Lcom/facebook/ads/redexgen/X/JT;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/RV;->A05:Ljava/util/Map;

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/RV;->A01:Lcom/facebook/ads/redexgen/X/Lz;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QY;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 4

    .line 50758
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A03:Lcom/facebook/ads/redexgen/X/RT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RT;->A04(Lcom/facebook/ads/redexgen/X/RT;)Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0Z()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A04:Ljava/lang/String;

    .line 50759
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A03:Lcom/facebook/ads/redexgen/X/RT;

    .line 50760
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RT;->A03(Lcom/facebook/ads/redexgen/X/RT;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A02:Lcom/facebook/ads/redexgen/X/PE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PE;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50761
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RV;->A00:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RV;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A05:Ljava/util/Map;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nu;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A03:Lcom/facebook/ads/redexgen/X/RT;

    .line 50762
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RT;->A07(Lcom/facebook/ads/redexgen/X/RT;)Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A03(Lcom/facebook/ads/redexgen/X/QZ;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A01:Lcom/facebook/ads/redexgen/X/Lz;

    .line 50763
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Lcom/facebook/ads/redexgen/X/Lz;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v0

    .line 50764
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A05()Ljava/util/Map;

    move-result-object v0

    .line 50765
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JT;->A8v(Ljava/lang/String;Ljava/util/Map;)V

    .line 50766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A03:Lcom/facebook/ads/redexgen/X/RT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RT;->A03(Lcom/facebook/ads/redexgen/X/RT;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A02:Lcom/facebook/ads/redexgen/X/PE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PE;->A02()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 50767
    :cond_0
    return-void
.end method
