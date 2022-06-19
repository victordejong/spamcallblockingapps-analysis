.class public final Lcom/facebook/ads/redexgen/X/RZ;
.super Lcom/facebook/ads/redexgen/X/4A;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/4A<",
        "Lcom/facebook/ads/redexgen/X/RT;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/MU;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Ljava/lang/String;

.field public A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/PE;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Landroid/util/SparseBooleanArray;

.field public final A08:Lcom/facebook/ads/redexgen/X/16;

.field public final A09:Lcom/facebook/ads/redexgen/X/7J;

.field public final A0A:Lcom/facebook/ads/redexgen/X/XT;

.field public final A0B:Lcom/facebook/ads/redexgen/X/JT;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Lz;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Rh;

.field public final A0E:Lcom/facebook/ads/redexgen/X/QZ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/util/List;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;Lcom/facebook/ads/redexgen/X/MU;Ljava/lang/String;IIIILcom/facebook/ads/redexgen/X/Rh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XT;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/PE;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/16;",
            "Lcom/facebook/ads/redexgen/X/JT;",
            "Lcom/facebook/ads/redexgen/X/7J;",
            "Lcom/facebook/ads/redexgen/X/QZ;",
            "Lcom/facebook/ads/redexgen/X/Lz;",
            "Lcom/facebook/ads/redexgen/X/MU;",
            "Ljava/lang/String;",
            "IIII",
            "Lcom/facebook/ads/redexgen/X/Rh;",
            ")V"
        }
    .end annotation

    .line 50794
    .local p3, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4A;-><init>()V

    .line 50795
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RZ;->A07:Landroid/util/SparseBooleanArray;

    .line 50796
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RZ;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    .line 50797
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/RZ;->A0B:Lcom/facebook/ads/redexgen/X/JT;

    .line 50798
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/RZ;->A09:Lcom/facebook/ads/redexgen/X/7J;

    .line 50799
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/RZ;->A0E:Lcom/facebook/ads/redexgen/X/QZ;

    .line 50800
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/RZ;->A0C:Lcom/facebook/ads/redexgen/X/Lz;

    .line 50801
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/RZ;->A04:Lcom/facebook/ads/redexgen/X/MU;

    .line 50802
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/RZ;->A08:Lcom/facebook/ads/redexgen/X/16;

    .line 50803
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RZ;->A06:Ljava/util/List;

    .line 50804
    iput p10, p0, Lcom/facebook/ads/redexgen/X/RZ;->A00:I

    .line 50805
    iput p13, p0, Lcom/facebook/ads/redexgen/X/RZ;->A03:I

    .line 50806
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/RZ;->A05:Ljava/lang/String;

    .line 50807
    iput p12, p0, Lcom/facebook/ads/redexgen/X/RZ;->A01:I

    .line 50808
    iput p11, p0, Lcom/facebook/ads/redexgen/X/RZ;->A02:I

    .line 50809
    iput-object p14, p0, Lcom/facebook/ads/redexgen/X/RZ;->A0D:Lcom/facebook/ads/redexgen/X/Rh;

    .line 50810
    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/RT;
    .locals 10

    .line 50811
    new-instance v0, Lcom/facebook/ads/redexgen/X/OM;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RZ;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RZ;->A0B:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RZ;->A04:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RZ;->A08:Lcom/facebook/ads/redexgen/X/16;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/RZ;->A0E:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/RZ;->A0C:Lcom/facebook/ads/redexgen/X/Lz;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/OM;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/16;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;)V

    .line 50812
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0J()Lcom/facebook/ads/redexgen/X/ON;

    move-result-object v3

    .line 50813
    .local p0, "params":Lcom/facebook/ads/redexgen/X/ON;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/RZ;->A03:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RZ;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RZ;->A0D:Lcom/facebook/ads/redexgen/X/Rh;

    .line 50814
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A00(Lcom/facebook/ads/redexgen/X/ON;ILjava/lang/String;Lcom/facebook/ads/redexgen/X/Rh;)Lcom/facebook/ads/redexgen/X/9m;

    move-result-object v2

    .line 50815
    .local p1, "cardLayout":Lcom/facebook/ads/redexgen/X/9m;
    new-instance v1, Lcom/facebook/ads/redexgen/X/RT;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RZ;->A07:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RZ;->A0E:Lcom/facebook/ads/redexgen/X/QZ;

    iget v5, p0, Lcom/facebook/ads/redexgen/X/RZ;->A00:I

    iget v6, p0, Lcom/facebook/ads/redexgen/X/RZ;->A01:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/RZ;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RZ;->A06:Ljava/util/List;

    .line 50816
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/RZ;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/RT;-><init>(Lcom/facebook/ads/redexgen/X/9m;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/QZ;IIIILcom/facebook/ads/redexgen/X/XT;)V

    .line 50817
    return-object v1
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/RT;I)V
    .locals 6

    .line 50818
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RZ;->A06:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/PE;

    .line 50819
    .local p0, "cardInfo":Lcom/facebook/ads/redexgen/X/PE;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RZ;->A0B:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RZ;->A09:Lcom/facebook/ads/redexgen/X/7J;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RZ;->A0C:Lcom/facebook/ads/redexgen/X/Lz;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/RZ;->A05:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/RT;->A0l(Lcom/facebook/ads/redexgen/X/PE;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/Lz;Ljava/lang/String;)V

    .line 50820
    return-void
.end method


# virtual methods
.method public final bridge synthetic A0C(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4e;
    .locals 1

    .line 50821
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RZ;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/RT;

    move-result-object v0

    return-object v0
.end method

.method public final A0D()I
    .locals 1

    .line 50822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RZ;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0E(Lcom/facebook/ads/redexgen/X/4e;I)V
    .locals 0

    .line 50823
    check-cast p1, Lcom/facebook/ads/redexgen/X/RT;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RZ;->A02(Lcom/facebook/ads/redexgen/X/RT;I)V

    return-void
.end method
