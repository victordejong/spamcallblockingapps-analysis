.class public final Lcom/facebook/ads/redexgen/X/2u;
.super Lcom/facebook/ads/redexgen/X/BQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/GS;,
        Lcom/facebook/ads/redexgen/X/GT;
    }
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/GS;

.field public A02:Lcom/facebook/ads/redexgen/X/GT;

.field public A03:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GK;",
            ">;"
        }
    .end annotation
.end field

.field public A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GK;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:I

.field public final A06:Lcom/facebook/ads/redexgen/X/IU;

.field public final A07:Lcom/facebook/ads/redexgen/X/IV;

.field public final A08:[Lcom/facebook/ads/redexgen/X/GS;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "L1xpy5cp85DZhci17XuVPwuBI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YkTNFPOzwzkJtYlViXkR23NQqoCQppA0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SGim0bOTaYlclFO3csKadT6H6g9xYkcM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jQ8PzV3P"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QC0kpNF7RiOrPOmNNHkvJn0tMmNRSOb3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "UpfI1Vr3VxozUqaf4r1nY355XZgGFNi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "PidsADYQpUdS401V"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6iBltx3Oq3HhhZI1vDwKIUw2PCH0pZTk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    .line 6801
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2u;->A09()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 6802
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BQ;-><init>()V

    .line 6803
    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IV;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A07:Lcom/facebook/ads/redexgen/X/IV;

    .line 6804
    new-instance v0, Lcom/facebook/ads/redexgen/X/IU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IU;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    .line 6805
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2u;->A05:I

    .line 6806
    const/16 v3, 0x8

    new-array v0, v3, [Lcom/facebook/ads/redexgen/X/GS;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A08:[Lcom/facebook/ads/redexgen/X/GS;

    .line 6807
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 6808
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A08:[Lcom/facebook/ads/redexgen/X/GS;

    new-instance v0, Lcom/facebook/ads/redexgen/X/GS;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/GS;-><init>()V

    aput-object v0, v1, v2

    .line 6809
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6810
    .end local p1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A08:[Lcom/facebook/ads/redexgen/X/GS;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    .line 6811
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2u;->A08()V

    .line 6812
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2u;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xe

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GK;",
            ">;"
        }
    .end annotation

    .line 6813
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6814
    .local p0, "displayCues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/cea/Cea708Cue;>;"
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v0, 0x8

    if-ge v1, v0, :cond_1

    .line 6815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A08:[Lcom/facebook/ads/redexgen/X/GS;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GS;->A0H()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A08:[Lcom/facebook/ads/redexgen/X/GS;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GS;->A0I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A08:[Lcom/facebook/ads/redexgen/X/GS;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GS;->A05()Lcom/facebook/ads/redexgen/X/Ux;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6817
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6818
    .end local v2    # "i":I
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 6819
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private A02()V
    .locals 1

    .line 6820
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    if-nez v0, :cond_0

    .line 6821
    return-void

    .line 6822
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2u;->A07()V

    .line 6823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    .line 6824
    return-void
.end method

.method private A03()V
    .locals 9

    .line 6825
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v2

    .line 6826
    .local p0, "textTag":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v3

    .line 6827
    .local v1, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v4

    .line 6828
    .local v5, "penSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IU;->A0F()Z

    move-result v5

    .line 6829
    .local v0, "italicsToggle":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IU;->A0F()Z

    move-result v6

    .line 6830
    .local v6, "underlineToggle":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v7

    .line 6831
    .local v0, "edgeType":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v8

    .line 6832
    .local v1, "fontStyle":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/GS;->A0C(IIIZZII)V

    .line 6833
    return-void
.end method

.method private A04()V
    .locals 6

    .line 6834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v3

    .line 6835
    .local p0, "foregroundO":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v2

    .line 6836
    .local v5, "foregroundR":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v1

    .line 6837
    .local v3, "foregroundG":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    .line 6838
    .local v0, "foregroundB":I
    invoke-static {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/GS;->A01(IIII)I

    move-result v4

    .line 6839
    .local v2, "foregroundColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v3

    .line 6840
    .local v0, "backgroundO":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v2

    .line 6841
    .local v1, "backgroundR":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v1

    .line 6842
    .local v0, "backgroundG":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    .line 6843
    .local v0, "backgroundB":I
    invoke-static {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/GS;->A01(IIII)I

    move-result v3

    .line 6844
    .local v4, "backgroundColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 6845
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v2

    .line 6846
    .local v0, "edgeR":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v1

    .line 6847
    .local v3, "edgeG":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    .line 6848
    .local v0, "edgeB":I
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A00(III)I

    move-result v1

    .line 6849
    .local v0, "edgeColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/GS;->A0B(III)V

    .line 6850
    return-void
.end method

.method private A05()V
    .locals 3

    .line 6851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 6852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v2

    .line 6853
    .local p0, "row":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 6854
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v1

    .line 6855
    .local v0, "column":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/GS;->A0A(II)V

    .line 6856
    return-void
.end method

.method private A06()V
    .locals 12

    .line 6857
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v5

    .line 6858
    .local v2, "fillO":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v4

    .line 6859
    .local v1, "fillR":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v3

    .line 6860
    .local v5, "fillG":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    .line 6861
    .local v0, "fillB":I
    invoke-static {v4, v3, v0, v5}, Lcom/facebook/ads/redexgen/X/GS;->A01(IIII)I

    move-result v5

    .line 6862
    .local v0, "fillColor":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v8

    .line 6863
    .local v4, "borderType":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v4

    .line 6864
    .local v4, "borderR":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v3

    .line 6865
    .local v8, "borderG":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    .line 6866
    .local v0, "borderB":I
    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/GS;->A00(III)I

    move-result v6

    .line 6867
    .local v0, "borderColor":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IU;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6868
    or-int/lit8 v8, v8, 0x4

    .line 6869
    .end local v4    # "borderR":I
    .local v3, "borderType":I
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IU;->A0F()Z

    move-result v7

    .line 6870
    .local v0, "wordWrapToggle":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v9

    .line 6871
    .local v0, "printDirection":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v10

    .line 6872
    .local v6, "scrollDirection":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v11

    .line 6873
    .local v0, "justification":I
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 6874
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    .end local v0    # "justification":I
    .local v0, "borderB":I
    .end local v8    # "borderG":I
    .local v0, "borderG":I
    invoke-virtual/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/GS;->A0D(IIZIIII)V

    .line 6875
    return-void
.end method

.method private A07()V
    .locals 11

    .line 6876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/GT;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GT;->A01:I

    const/4 v3, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, -0x1

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v5

    if-eq v6, v4, :cond_0

    .line 6877
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb4

    const/16 v1, 0x27

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GT;->A01:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x39

    const/16 v1, 0x17

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GT;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GT;->A02:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    const/16 v1, 0x12

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6878
    return-void

    .line 6879
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GT;->A03:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GT;->A00:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A0C([BI)V

    .line 6880
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v4

    .line 6881
    .local p0, "serviceNumber":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v2

    .line 6882
    .local v0, "blockSize":I
    const/4 v0, 0x7

    if-ne v4, v0, :cond_1

    .line 6883
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 6884
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    add-int/2addr v4, v0

    .line 6885
    :cond_1
    if-nez v2, :cond_3

    .line 6886
    if-eqz v4, :cond_2

    .line 6887
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x196

    const/16 v1, 0x1b

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    const/16 v1, 0x15

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6888
    :cond_2
    return-void

    .line 6889
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A05:I

    if-eq v4, v0, :cond_4

    .line 6890
    return-void

    .line 6891
    :cond_4
    const/4 v10, 0x0

    .line 6892
    .local v6, "cuesNeedUpdate":Z
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IU;->A01()I

    move-result v0

    if-lez v0, :cond_f

    .line 6893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v4

    .line 6894
    .local v0, "command":I
    const/16 v9, 0x10

    const/16 v7, 0xff

    const/16 v6, 0x9f

    const/16 v3, 0x7f

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const-string v1, "ms0OGa625FAXtw1h35os66EQGefGqsb0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "y0WyytXakCt9dcKCWCePMiqFSD1TGdmN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v1, 0x1f

    if-eq v4, v9, :cond_a

    .line 6895
    if-gt v4, v1, :cond_6

    .line 6896
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/2u;->A0A(I)V

    goto :goto_0

    .line 6897
    :cond_6
    if-gt v4, v3, :cond_7

    .line 6898
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/2u;->A0F(I)V

    .line 6899
    const/4 v10, 0x1

    goto :goto_0

    .line 6900
    :cond_7
    if-gt v4, v6, :cond_8

    .line 6901
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/2u;->A0B(I)V

    .line 6902
    const/4 v10, 0x1

    goto :goto_0

    .line 6903
    :cond_8
    if-gt v4, v7, :cond_9

    .line 6904
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/2u;->A0G(I)V

    .line 6905
    const/4 v10, 0x1

    goto :goto_0

    .line 6906
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x166

    const/16 v1, 0x16

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6907
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v4

    .line 6908
    if-gt v4, v1, :cond_b

    .line 6909
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/2u;->A0C(I)V

    goto/16 :goto_0

    .line 6910
    :cond_b
    if-gt v4, v3, :cond_c

    .line 6911
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/2u;->A0H(I)V

    .line 6912
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 6913
    :cond_c
    if-gt v4, v6, :cond_d

    .line 6914
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/2u;->A0D(I)V

    goto/16 :goto_0

    .line 6915
    :cond_d
    if-gt v4, v7, :cond_e

    .line 6916
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/2u;->A0I(I)V

    .line 6917
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 6918
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17c

    const/16 v1, 0x1a

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6919
    :cond_f
    if-eqz v10, :cond_10

    .line 6920
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2u;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A03:Ljava/util/List;

    .line 6921
    :cond_10
    return-void
.end method

.method private A08()V
    .locals 5

    .line 6922
    const/4 v4, 0x0

    .local p0, "i":I
    :goto_0
    const/16 v0, 0x8

    if-ge v4, v0, :cond_1

    .line 6923
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2u;->A08:[Lcom/facebook/ads/redexgen/X/GS;

    sget-object v1, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const-string v1, "s2U2A8"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    aget-object v0, v3, v4

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GS;->A08()V

    .line 6924
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6925
    .end local p0    # "i":I
    :cond_1
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x1b1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2u;->A09:[B

    return-void

    :array_0
    .array-data 1
        -0x66t
        -0x5et
        -0x13t
        -0x21t
        -0x15t
        -0x11t
        -0x21t
        -0x18t
        -0x23t
        -0x21t
        -0x66t
        -0x18t
        -0x11t
        -0x19t
        -0x24t
        -0x21t
        -0x14t
        -0x66t
        0x6ct
        0x63t
        -0x46t
        -0x55t
        -0x58t
        -0x4ft
        0x63t
        -0x5bt
        -0x51t
        -0x4et
        -0x5at
        -0x52t
        -0x6at
        -0x54t
        -0x43t
        -0x58t
        0x63t
        -0x54t
        -0x4at
        0x63t
        0x73t
        0x70t
        -0x7et
        0x67t
        -0x50t
        -0x52t
        -0x4bt
        -0x4at
        -0x47t
        -0x50t
        -0x4bt
        -0x52t
        0x67t
        -0x49t
        -0x58t
        -0x56t
        -0x4et
        -0x54t
        -0x45t
        0x65t
        0x59t
        -0x65t
        -0x52t
        -0x53t
        0x59t
        -0x64t
        -0x52t
        -0x55t
        -0x55t
        -0x62t
        -0x59t
        -0x53t
        0x59t
        -0x5et
        -0x59t
        -0x63t
        -0x62t
        -0x4ft
        0x59t
        -0x5et
        -0x54t
        0x59t
        0x74t
        -0x6at
        -0x6et
        0x68t
        0x61t
        0x69t
        0x75t
        -0x6at
        -0x6ct
        -0x60t
        -0x6bt
        -0x6at
        -0x5dt
        -0x7ft
        -0x4dt
        -0x50t
        -0x50t
        -0x5dt
        -0x54t
        -0x4et
        -0x56t
        -0x49t
        0x5et
        -0x4dt
        -0x54t
        -0x4ft
        -0x4dt
        -0x52t
        -0x52t
        -0x53t
        -0x50t
        -0x4et
        -0x5dt
        -0x5et
        0x5et
        -0x7ft
        -0x73t
        -0x75t
        -0x75t
        0x7ft
        -0x74t
        -0x7et
        -0x63t
        -0x7dt
        -0x6at
        -0x6et
        0x6ft
        0x5et
        -0x7ft
        -0x53t
        -0x55t
        -0x55t
        -0x61t
        -0x54t
        -0x5et
        0x78t
        0x5et
        -0x3bt
        -0x9t
        -0xct
        -0xct
        -0x19t
        -0x10t
        -0xat
        -0x12t
        -0x5t
        -0x5et
        -0x9t
        -0x10t
        -0xbt
        -0x9t
        -0xet
        -0xet
        -0xft
        -0xct
        -0xat
        -0x19t
        -0x1at
        -0x5et
        -0x3bt
        -0x2ft
        -0x31t
        -0x31t
        -0x3dt
        -0x30t
        -0x3at
        -0x1ft
        -0x2et
        -0x4dt
        -0x48t
        -0x5et
        -0x3bt
        -0xft
        -0x11t
        -0x11t
        -0x1dt
        -0x10t
        -0x1at
        -0x44t
        -0x5et
        -0x67t
        -0x37t
        -0x35t
        -0x68t
        -0x48t
        -0x5bt
        -0x4at
        -0x48t
        -0x40t
        -0x46t
        -0x37t
        0x75t
        -0x46t
        -0x3dt
        -0x47t
        -0x46t
        -0x47t
        0x75t
        -0x3bt
        -0x39t
        -0x46t
        -0x3et
        -0x4at
        -0x37t
        -0x36t
        -0x39t
        -0x46t
        -0x3ft
        -0x32t
        -0x70t
        0x75t
        -0x38t
        -0x42t
        -0x31t
        -0x46t
        0x75t
        -0x42t
        -0x38t
        0x75t
        0x6dt
        -0x6at
        -0x75t
        -0x69t
        -0x63t
        -0x6at
        -0x64t
        -0x73t
        -0x66t
        -0x73t
        -0x74t
        0x48t
        0x6ct
        0x7ct
        0x7et
        0x6bt
        0x6bt
        -0x79t
        0x78t
        0x69t
        0x6bt
        0x73t
        0x6dt
        0x7ct
        -0x79t
        0x6ct
        0x69t
        0x7ct
        0x69t
        0x48t
        -0x76t
        -0x73t
        -0x72t
        -0x69t
        -0x66t
        -0x73t
        0x48t
        0x6ct
        0x7ct
        0x7et
        0x6bt
        0x6bt
        -0x79t
        0x78t
        0x69t
        0x6bt
        0x73t
        0x6dt
        0x7ct
        -0x79t
        0x7bt
        0x7ct
        0x69t
        0x7at
        0x7ct
        -0x77t
        -0x52t
        -0x4at
        -0x5ft
        -0x54t
        -0x57t
        -0x5ct
        0x60t
        -0x7dt
        0x70t
        0x60t
        -0x5dt
        -0x51t
        -0x53t
        -0x53t
        -0x5ft
        -0x52t
        -0x5ct
        0x7at
        0x60t
        -0x2at
        -0x5t
        0x3t
        -0x12t
        -0x7t
        -0xat
        -0xft
        -0x53t
        -0x30t
        -0x42t
        -0x53t
        -0x10t
        -0x4t
        -0x6t
        -0x6t
        -0x12t
        -0x5t
        -0xft
        -0x39t
        -0x53t
        -0x6et
        -0x49t
        -0x41t
        -0x56t
        -0x4bt
        -0x4et
        -0x53t
        0x69t
        -0x70t
        0x7bt
        0x69t
        -0x54t
        -0x4ft
        -0x56t
        -0x45t
        -0x56t
        -0x54t
        -0x43t
        -0x52t
        -0x45t
        -0x7dt
        0x69t
        0x76t
        -0x65t
        -0x5dt
        -0x72t
        -0x67t
        -0x6at
        -0x6ft
        0x4dt
        0x74t
        0x60t
        0x4dt
        -0x70t
        -0x6bt
        -0x72t
        -0x61t
        -0x72t
        -0x70t
        -0x5ft
        -0x6et
        -0x61t
        0x67t
        0x4dt
        -0x68t
        -0x43t
        -0x3bt
        -0x50t
        -0x45t
        -0x48t
        -0x4dt
        0x6ft
        -0x4ft
        -0x50t
        -0x3et
        -0x4ct
        0x6ft
        -0x4et
        -0x42t
        -0x44t
        -0x44t
        -0x50t
        -0x43t
        -0x4dt
        -0x77t
        0x6ft
        -0x37t
        -0x12t
        -0xat
        -0x1ft
        -0x14t
        -0x17t
        -0x1ct
        -0x60t
        -0x1bt
        -0x8t
        -0xct
        -0x1bt
        -0x12t
        -0x1ct
        -0x1bt
        -0x1ct
        -0x60t
        -0x1dt
        -0x11t
        -0x13t
        -0x13t
        -0x1ft
        -0x12t
        -0x1ct
        -0x46t
        -0x60t
        -0x6t
        -0x14t
        -0x7t
        -0x3t
        -0x10t
        -0x16t
        -0x14t
        -0x2bt
        -0x4t
        -0xct
        -0x17t
        -0x14t
        -0x7t
        -0x59t
        -0x10t
        -0x6t
        -0x59t
        -0xbt
        -0xat
        -0xbt
        -0x4ct
        0x1t
        -0x14t
        -0x7t
        -0xat
        -0x59t
        -0x51t
    .end array-data
.end method

.method private A0A(I)V
    .locals 6

    .line 6926
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/16 v5, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const-string v1, "H8dS7ULq"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "47YXPe6ck7E4ACrn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq p1, v5, :cond_5

    packed-switch p1, :pswitch_data_0

    .line 6927
    const/16 v3, 0x11

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v4

    if-lt p1, v3, :cond_2

    const/16 v3, 0x17

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const-string v1, "Kfp0xyGlj"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-gt p1, v3, :cond_2

    .line 6928
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5d

    const/16 v1, 0x2c

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 6930
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    :cond_1
    if-gt p1, v3, :cond_2

    goto :goto_0

    .line 6931
    :cond_2
    const/16 v0, 0x18

    if-lt p1, v0, :cond_3

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    .line 6932
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x89

    const/16 v1, 0x2b

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6933
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    goto :goto_1

    .line 6934
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x112

    const/16 v1, 0x14

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6935
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2u;->A08()V

    .line 6936
    goto :goto_1

    .line 6937
    :pswitch_2
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v3, 0xa

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 6938
    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const-string v1, "LxOVysLH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "PbXDcGLFNpdTKJ0c"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    goto :goto_1

    .line 6939
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GS;->A06()V

    .line 6940
    goto/16 :goto_1

    .line 6941
    :cond_6
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2u;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A03:Ljava/util/List;

    .line 6942
    goto/16 :goto_1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private A0B(I)V
    .locals 7

    .line 6943
    const/16 v1, 0x10

    const/4 v4, 0x1

    const/16 v3, 0x8

    packed-switch p1, :pswitch_data_0

    .line 6944
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x126

    const/16 v1, 0x14

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6945
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/2u;
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 6946
    :pswitch_2
    add-int/lit8 v1, p1, -0x80

    .line 6947
    .local p0, "window":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    if-eq v0, v1, :cond_0

    .line 6948
    iput v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    .line 6949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A08:[Lcom/facebook/ads/redexgen/X/GS;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    goto :goto_0

    .line 6950
    :pswitch_3
    const/4 v2, 0x1

    .restart local p0    # "window":I
    :goto_1
    if-gt v2, v3, :cond_0

    .line 6951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IU;->A0F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6952
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A08:[Lcom/facebook/ads/redexgen/X/GS;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GS;->A07()V

    .line 6953
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6954
    :pswitch_4
    const/4 v5, 0x1

    .restart local p0    # "window":I
    :goto_2
    if-gt v5, v3, :cond_0

    .line 6955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IU;->A0F()Z

    move-result v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const-string v1, "EEpd"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v6, :cond_2

    .line 6956
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A08:[Lcom/facebook/ads/redexgen/X/GS;

    rsub-int/lit8 v0, v5, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/GS;->A0E(Z)V

    .line 6957
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 6958
    :pswitch_5
    const/4 v2, 0x1

    .restart local p0    # "window":I
    :goto_3
    if-gt v2, v3, :cond_0

    .line 6959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IU;->A0F()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6960
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A08:[Lcom/facebook/ads/redexgen/X/GS;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A0E(Z)V

    .line 6961
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 6962
    :pswitch_6
    const/4 v2, 0x1

    .restart local p0    # "window":I
    :goto_4
    if-gt v2, v3, :cond_0

    .line 6963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IU;->A0F()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6964
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A08:[Lcom/facebook/ads/redexgen/X/GS;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v1, v1, v0

    .line 6965
    .local v4, "cueBuilder":Lcom/facebook/ads/redexgen/X/GS;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/GS;->A0I()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A0E(Z)V

    .line 6966
    .end local v4    # "cueBuilder":Lcom/facebook/ads/redexgen/X/GS;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 6967
    :pswitch_7
    const/4 v2, 0x1

    .local p0, "i":I
    :goto_5
    if-gt v2, v3, :cond_0

    .line 6968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IU;->A0F()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6969
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A08:[Lcom/facebook/ads/redexgen/X/GS;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GS;->A08()V

    .line 6970
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 6971
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 6972
    goto/16 :goto_0

    .line 6973
    :pswitch_9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2u;->A08()V

    .line 6974
    goto/16 :goto_0

    .line 6975
    :pswitch_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GS;->A0G()Z

    move-result v0

    if-nez v0, :cond_6

    .line 6976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    goto/16 :goto_0

    .line 6977
    :cond_6
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2u;->A03()V

    .line 6978
    goto/16 :goto_0

    .line 6979
    :pswitch_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GS;->A0G()Z

    move-result v0

    if-nez v0, :cond_7

    .line 6980
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    goto/16 :goto_0

    .line 6981
    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2u;->A04()V

    .line 6982
    goto/16 :goto_0

    .line 6983
    :pswitch_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GS;->A0G()Z

    move-result v0

    if-nez v0, :cond_8

    .line 6984
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    goto/16 :goto_0

    .line 6985
    :cond_8
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2u;->A05()V

    .line 6986
    goto/16 :goto_0

    .line 6987
    .end local p0    # "i":I
    :pswitch_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GS;->A0G()Z

    move-result v0

    if-nez v0, :cond_9

    .line 6988
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    goto/16 :goto_0

    .line 6989
    :cond_9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2u;->A06()V

    .line 6990
    goto/16 :goto_0

    .line 6991
    :pswitch_e
    add-int/lit16 v1, p1, -0x98

    .line 6992
    .local p0, "window":I
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/2u;->A0E(I)V

    .line 6993
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    if-eq v0, v1, :cond_0

    .line 6994
    iput v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    .line 6995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A08:[Lcom/facebook/ads/redexgen/X/GS;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private A0C(I)V
    .locals 2

    .line 6996
    const/4 v0, 0x7

    if-gt p1, v0, :cond_1

    .line 6997
    :cond_0
    :goto_0
    return-void

    .line 6998
    :cond_1
    const/16 v0, 0xf

    if-gt p1, v0, :cond_2

    .line 6999
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    goto :goto_0

    .line 7000
    :cond_2
    const/16 v0, 0x17

    if-gt p1, v0, :cond_3

    .line 7001
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    goto :goto_0

    .line 7002
    :cond_3
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 7003
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    goto :goto_0
.end method

.method private A0D(I)V
    .locals 4

    .line 7004
    const/16 v0, 0x87

    if-gt p1, v0, :cond_1

    .line 7005
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 7006
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/2u;
    :cond_0
    :goto_0
    return-void

    .line 7007
    :cond_1
    const/16 v3, 0x8f

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const-string v1, "CkyZUSwm"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "y0ZSf6RqH8VvK6A8"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-gt p1, v3, :cond_2

    .line 7008
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    goto :goto_0

    .line 7009
    :cond_2
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_0

    .line 7010
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 7011
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    .line 7012
    .local p0, "length":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0E(I)V
    .locals 18

    .line 7013
    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A08:[Lcom/facebook/ads/redexgen/X/GS;

    aget-object v5, v0, p1

    .line 7014
    .local p1, "cueBuilder":Lcom/facebook/ads/redexgen/X/GS;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 7015
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IU;->A0F()Z

    move-result v6

    .line 7016
    .local v9, "visible":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IU;->A0F()Z

    move-result v7

    .line 7017
    .local v0, "rowLock":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IU;->A0F()Z

    move-result v8

    .line 7018
    .local v10, "columnLock":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v9

    .line 7019
    .local v4, "priority":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IU;->A0F()Z

    move-result v10

    .line 7020
    .local v0, "relativePositioning":Z
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v0, 0x7

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v11

    .line 7021
    .local v11, "verticalAnchor":I
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v12

    .line 7022
    .local v4, "horizontalAnchor":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v15

    .line 7023
    .local v0, "anchorId":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v13

    .line 7024
    .local v12, "rowCount":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 7025
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v14

    .line 7026
    .local v0, "columnCount":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 7027
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v16

    .line 7028
    .local v4, "windowStyle":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/2u;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v17

    .line 7029
    .local v15, "penStyle":I
    invoke-virtual/range {v5 .. v17}, Lcom/facebook/ads/redexgen/X/GS;->A0F(ZZZIZIIIIIII)V

    .line 7030
    return-void
.end method

.method private A0F(I)V
    .locals 2

    .line 7031
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 7032
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x266b

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7033
    :goto_0
    return-void

    .line 7034
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    and-int/lit16 v0, p1, 0xff

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    goto :goto_0
.end method

.method private A0G(I)V
    .locals 2

    .line 7035
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    and-int/lit16 v0, p1, 0xff

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7036
    return-void
.end method

.method private A0H(I)V
    .locals 5

    .line 7037
    const/16 v1, 0x20

    if-eq p1, v1, :cond_c

    const/16 v0, 0x21

    if-eq p1, v0, :cond_b

    const/16 v0, 0x25

    if-eq p1, v0, :cond_a

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_9

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_8

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_d

    const/16 v3, 0x39

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const-string v1, "VBgxEtCZM8hUXU02q62ejO2N"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq p1, v3, :cond_7

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_6

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_5

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 7038
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13a

    const/16 v1, 0x16

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7039
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    sget-object v1, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const-string v1, "Hn1frjObrkKWee9bQkUvSoGsCyNbx6K5"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "5jLxiAOonCPZsccE4Rlf5xBOSnJI2Mxj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x161

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7040
    goto/16 :goto_0

    .line 7041
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x215b

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7042
    goto/16 :goto_0

    .line 7043
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x215c

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7044
    goto/16 :goto_0

    .line 7045
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x215d

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7046
    goto/16 :goto_0

    .line 7047
    :pswitch_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x215e

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7048
    goto/16 :goto_0

    .line 7049
    :pswitch_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x2502

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7050
    goto/16 :goto_0

    .line 7051
    :pswitch_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x2510

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7052
    goto/16 :goto_0

    .line 7053
    :pswitch_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x2514

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7054
    goto/16 :goto_0

    .line 7055
    :pswitch_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x2500

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7056
    goto/16 :goto_0

    .line 7057
    :pswitch_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x2518

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7058
    goto/16 :goto_0

    .line 7059
    :pswitch_9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x250c

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7060
    goto/16 :goto_0

    .line 7061
    :pswitch_a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x2588

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7062
    goto/16 :goto_0

    .line 7063
    :pswitch_b
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x2018

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7064
    goto/16 :goto_0

    .line 7065
    :pswitch_c
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const-string v1, "pntPsILDFVvSJsAkqe"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v0, 0x2019

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7066
    goto/16 :goto_0

    .line 7067
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7068
    :pswitch_d
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x201c

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7069
    goto :goto_0

    .line 7070
    :pswitch_e
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v3, 0x201d

    sget-object v1, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const-string v1, "pjkXXm09rSmpulg3ZnQvc2tVnRpvsPhy"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "1ZIH3c3lD2nrVh46isF21y1NEU8S3DGz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7071
    goto :goto_0

    .line 7072
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7073
    :pswitch_f
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x2022

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7074
    goto :goto_0

    .line 7075
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x2120

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7076
    goto :goto_0

    .line 7077
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x153

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7078
    goto :goto_0

    .line 7079
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x2122

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7080
    goto :goto_0

    .line 7081
    :cond_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x152

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7082
    goto :goto_0

    .line 7083
    :cond_9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x160

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7084
    goto :goto_0

    .line 7085
    :cond_a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x2026

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7086
    goto :goto_0

    .line 7087
    :cond_b
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0xa0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7088
    goto :goto_0

    .line 7089
    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7090
    goto :goto_0

    .line 7091
    :cond_d
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x178

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7092
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x76
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private A0I(I)V
    .locals 4

    .line 7093
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 7094
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x33c4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    .line 7095
    :goto_0
    return-void

    .line 7096
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x150

    const/16 v1, 0x16

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7097
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    const/16 v0, 0x5f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A09(C)V

    goto :goto_0
.end method


# virtual methods
.method public final A0L()Lcom/facebook/ads/redexgen/X/GL;
    .locals 2

    .line 7098
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A03:Ljava/util/List;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A04:Ljava/util/List;

    .line 7099
    new-instance v0, Lcom/facebook/ads/redexgen/X/Uw;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Uw;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final bridge synthetic A0M()Lcom/facebook/ads/redexgen/X/Ba;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GM;
        }
    .end annotation

    .line 7100
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BQ;->A0M()Lcom/facebook/ads/redexgen/X/Ba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0N()Lcom/facebook/ads/redexgen/X/BX;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GM;
        }
    .end annotation

    .line 7101
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BQ;->A0N()Lcom/facebook/ads/redexgen/X/BX;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0O(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GM;
        }
    .end annotation

    .line 7102
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/BQ;->A0O(Lcom/facebook/ads/redexgen/X/Ba;)V

    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 10

    .line 7103
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/WZ;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 7104
    .local p0, "inputBufferData":[B
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A07:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/WZ;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0b([BI)V

    .line 7105
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A07:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v0

    const/4 v6, 0x3

    if-lt v0, v6, :cond_a

    .line 7106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A07:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 7107
    .local p1, "ccTypeAndValid":I
    and-int/lit8 v3, v0, 0x3

    .line 7108
    .local v2, "ccType":I
    and-int/lit8 v1, v0, 0x4

    const/4 v9, 0x0

    const/4 v0, 0x4

    const/4 v8, 0x1

    if-ne v1, v0, :cond_8

    const/4 v7, 0x1

    .line 7109
    .local v1, "ccValid":Z
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A07:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const-string v1, "mPNkJPPaAQUsGFTknTy0QJ3qIgBWTNxI"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "fItgrykYfXnNqjhR9xK6GfD4mEN43S7J"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    int-to-byte v5, v4

    .line 7110
    .local v0, "ccData1":B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A07:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    int-to-byte v4, v0

    .line 7111
    .local v0, "ccData2":B
    const/4 v0, 0x2

    if-eq v3, v0, :cond_1

    if-eq v3, v6, :cond_1

    goto :goto_0

    .line 7112
    :cond_1
    if-nez v7, :cond_2

    goto :goto_0

    .line 7113
    :cond_2
    if-ne v3, v6, :cond_4

    .line 7114
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2u;->A02()V

    .line 7115
    and-int/lit16 v0, v5, 0xc0

    shr-int/lit8 v2, v0, 0x6

    .line 7116
    .local v0, "sequenceNumber":I
    and-int/lit8 v1, v5, 0x3f

    .line 7117
    .local v0, "packetSize":I
    if-nez v1, :cond_3

    .line 7118
    const/16 v1, 0x40

    .line 7119
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/GT;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/GT;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    .line 7120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/GT;->A03:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/GT;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/GT;->A00:I

    aput-byte v4, v3, v1

    .line 7121
    .end local v0    # "packetSize":I
    .end local v0
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/GT;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GT;->A01:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v8

    if-ne v1, v0, :cond_0

    .line 7122
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2u;->A02()V

    goto :goto_0

    .line 7123
    :cond_4
    if-ne v3, v0, :cond_5

    const/4 v9, 0x1

    :cond_5
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/I6;->A03(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_6

    .line 7124
    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const-string v1, "0p2cTlko"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "0zmBBYWCDQbGLnH6"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    if-nez v0, :cond_7

    .line 7125
    :goto_3
    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xdb

    const/16 v1, 0x37

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7126
    goto/16 :goto_0

    .line 7127
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0A:[Ljava/lang/String;

    const-string v1, "AnSv654l"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "VDMP1o28JZezz2Cr"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    if-nez v0, :cond_7

    goto :goto_3

    .line 7128
    :cond_7
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/GT;->A03:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/GT;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/GT;->A00:I

    aput-byte v5, v3, v1

    .line 7129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/GT;->A03:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/GT;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/GT;->A00:I

    aput-byte v4, v3, v1

    goto :goto_2

    .line 7130
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7131
    :cond_a
    return-void
.end method

.method public final A0R()Z
    .locals 2

    .line 7132
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A03:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A04:Ljava/util/List;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic ADS()V
    .locals 0

    .line 7133
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BQ;->ADS()V

    return-void
.end method

.method public final bridge synthetic AEU(J)V
    .locals 0

    .line 7134
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/BQ;->AEU(J)V

    return-void
.end method

.method public final flush()V
    .locals 3

    .line 7135
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BQ;->flush()V

    .line 7136
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/2u;->A03:Ljava/util/List;

    .line 7137
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/2u;->A04:Ljava/util/List;

    .line 7138
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    .line 7139
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A08:[Lcom/facebook/ads/redexgen/X/GS;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/GS;

    .line 7140
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2u;->A08()V

    .line 7141
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/GT;

    .line 7142
    return-void
.end method
