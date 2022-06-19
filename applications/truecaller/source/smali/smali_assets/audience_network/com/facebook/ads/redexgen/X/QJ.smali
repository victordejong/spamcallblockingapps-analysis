.class public final Lcom/facebook/ads/redexgen/X/QJ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/QI;,
        Lcom/facebook/ads/redexgen/X/QG;,
        Lcom/facebook/ads/redexgen/X/QH;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/DA;

.field public final A01:Lcom/facebook/ads/redexgen/X/Uf;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WzijvlAd9RP1HJzMxCKzeYHnMs2QP54v"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kfrqpsiELz0FvZTPYg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hAwPDz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OryCsPOoCbEZ1Kjw18"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JoqBI6chV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rfkFyJ13DXugB3RLj6H"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rQvj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kthZXjW83"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/QJ;->A03:[Ljava/lang/String;

    .line 49719
    invoke-static {}, Lcom/facebook/ads/redexgen/X/QJ;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 3

    .line 49720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49721
    new-instance v0, Lcom/facebook/ads/redexgen/X/Uf;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Uf;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A01:Lcom/facebook/ads/redexgen/X/Uf;

    .line 49722
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QJ;->A01:Lcom/facebook/ads/redexgen/X/Uf;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Um;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Um;-><init>(Lcom/facebook/ads/redexgen/X/HM;)V

    .line 49723
    .local p0, "trackSelectionFactory":Lcom/facebook/ads/redexgen/X/HC;
    new-instance v2, Lcom/facebook/ads/redexgen/X/B6;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/B6;-><init>(Lcom/facebook/ads/redexgen/X/HC;)V

    .line 49724
    .local p1, "trackSelector":Lcom/facebook/ads/redexgen/X/HG;
    new-instance v1, Lcom/facebook/ads/redexgen/X/Wr;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Wr;-><init>()V

    .line 49725
    .local v0, "loadControl":Lcom/facebook/ads/redexgen/X/AO;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wp;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Wp;-><init>(Landroid/content/Context;)V

    .line 49726
    .local v1, "renderersFactory":Lcom/facebook/ads/redexgen/X/Aj;
    invoke-static {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/AB;->A00(Lcom/facebook/ads/redexgen/X/Aj;Lcom/facebook/ads/redexgen/X/HG;Lcom/facebook/ads/redexgen/X/AO;)Lcom/facebook/ads/redexgen/X/DA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    .line 49727
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/QJ;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xa

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/A9;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 49728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x29

    const/16 v1, 0xb

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/A9;->A01:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/16 v1, 0x16

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/A9;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49729
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/A9;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    const/4 v1, 0x2

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49730
    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/QJ;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x72t
        -0x68t
        -0x74t
        -0x72t
        -0x31t
        -0x33t
        -0x1ft
        -0x21t
        -0x2ft
        -0x72t
        -0x74t
        -0x5at
        -0x74t
        -0x72t
        -0x60t
        -0x56t
        -0x62t
        -0x60t
        -0x10t
        -0x1dt
        -0x14t
        -0x1et
        -0x1dt
        -0x10t
        -0x1dt
        -0x10t
        -0x39t
        -0x14t
        -0x1et
        -0x1dt
        -0xat
        -0x60t
        -0x62t
        -0x48t
        -0x62t
        -0x60t
        -0x72t
        -0x17t
        0x6ft
        0x72t
        -0x7ft
        -0x44t
        0x63t
        -0x4bt
        -0x46t
        -0x4ft
        -0x5at
        0x63t
        0x61t
        0x7bt
        0x61t
        0x63t
    .end array-data
.end method

.method public static A03()Z
    .locals 4

    .line 49731
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/QJ;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/QJ;->A03:[Ljava/lang/String;

    const-string v1, "p35x"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A04()I
    .locals 1

    .line 49732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0J()I

    move-result v0

    return v0
.end method

.method public final A05()I
    .locals 1

    .line 49733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DA;->A5o()I

    move-result v0

    return v0
.end method

.method public final A06()J
    .locals 2

    .line 49734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DA;->A6B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A07()J
    .locals 2

    .line 49735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DA;->A6N()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/QH;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 49736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0L()Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 49737
    .local p0, "vf":Lcom/facebook/ads/internal/exoplayer2/Format;
    if-nez v0, :cond_0

    .line 49738
    const/4 v0, 0x0

    return-object v0

    .line 49739
    :cond_0
    iget v2, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    iget v1, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/QH;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/QH;-><init>(II)V

    return-object v0
.end method

.method public final A09()V
    .locals 1

    .line 49740
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DA;->ADS()V

    .line 49741
    return-void
.end method

.method public final A0A()V
    .locals 1

    .line 49742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DA;->AEC()V

    .line 49743
    return-void
.end method

.method public final A0B()V
    .locals 1

    .line 49744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0M()V

    .line 49745
    return-void
.end method

.method public final A0C(F)V
    .locals 1

    .line 49746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/DA;->A0N(F)V

    .line 49747
    return-void
.end method

.method public final A0D(J)V
    .locals 1

    .line 49748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DA;->AEB(J)V

    .line 49749
    return-void
.end method

.method public final A0E(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .line 49750
    invoke-static {}, Lcom/facebook/ads/redexgen/X/QJ;->A03()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JD;->A1w(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49751
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/QN;->A05(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/QN;

    move-result-object v0

    .line 49752
    .local p0, "cacheManager":Lcom/facebook/ads/redexgen/X/QN;
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QN;->A0E(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/HQ;

    move-result-object v1

    .line 49753
    .local p1, "cachedDataSourceFactory":Lcom/facebook/ads/redexgen/X/HQ;
    new-instance v0, Lcom/facebook/ads/redexgen/X/V5;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/V5;-><init>(Lcom/facebook/ads/redexgen/X/HQ;)V

    .line 49754
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/V5;->A00(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/Bc;

    move-result-object v1

    .line 49755
    .local p2, "mediaSource":Lcom/facebook/ads/redexgen/X/FN;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/DA;->A0P(Lcom/facebook/ads/redexgen/X/FN;)V

    .line 49756
    .end local p0    # "cacheManager":Lcom/facebook/ads/redexgen/X/QN;
    .end local p1    # "cachedDataSourceFactory":Lcom/facebook/ads/redexgen/X/HQ;
    .end local p2    # "mediaSource":Lcom/facebook/ads/redexgen/X/FN;
    .end local p0
    .end local p1
    :goto_0
    return-void

    .line 49757
    :cond_0
    const/16 v2, 0x26

    const/4 v1, 0x3

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Il;->A0K(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A01:Lcom/facebook/ads/redexgen/X/Uf;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ud;

    invoke-direct {v1, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/Ud;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Hm;)V

    .line 49758
    .local p0, "dataSourceFactory":Lcom/facebook/ads/redexgen/X/HQ;
    new-instance v0, Lcom/facebook/ads/redexgen/X/V5;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/V5;-><init>(Lcom/facebook/ads/redexgen/X/HQ;)V

    .line 49759
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/V5;->A00(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/Bc;

    move-result-object v1

    .line 49760
    .local p1, "mediaSource":Lcom/facebook/ads/redexgen/X/FN;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/DA;->A0P(Lcom/facebook/ads/redexgen/X/FN;)V

    goto :goto_0
.end method

.method public final A0F(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/DA;->A0O(Landroid/view/Surface;)V

    .line 49762
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/QG;)V
    .locals 2

    .line 49763
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hn;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hn;-><init>(Lcom/facebook/ads/redexgen/X/QJ;Lcom/facebook/ads/redexgen/X/QG;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/DA;->A3D(Lcom/facebook/ads/redexgen/X/AX;)V

    .line 49764
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/QI;)V
    .locals 2

    .line 49765
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hr;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hr;-><init>(Lcom/facebook/ads/redexgen/X/QJ;Lcom/facebook/ads/redexgen/X/QI;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/DA;->A0Q(Lcom/facebook/ads/redexgen/X/J0;)V

    .line 49766
    return-void
.end method

.method public final A0I(Z)V
    .locals 1

    .line 49767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/DA;->AES(Z)V

    .line 49768
    return-void
.end method

.method public final A0J()Z
    .locals 1

    .line 49769
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DA;->A77()Z

    move-result v0

    return v0
.end method

.method public final A0K()Z
    .locals 1

    .line 49770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0K()Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
