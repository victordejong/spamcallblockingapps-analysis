.class public final Lcom/facebook/ads/redexgen/X/Rg;
.super Lcom/facebook/ads/redexgen/X/4A;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/4A<",
        "Lcom/facebook/ads/redexgen/X/Ra;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/MU;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Ljava/lang/String;

.field public A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/PE;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Landroid/util/SparseBooleanArray;

.field public final A07:Lcom/facebook/ads/redexgen/X/16;

.field public final A08:Lcom/facebook/ads/redexgen/X/7J;

.field public final A09:Lcom/facebook/ads/redexgen/X/XT;

.field public final A0A:Lcom/facebook/ads/redexgen/X/JT;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Lz;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Rh;

.field public final A0D:Lcom/facebook/ads/redexgen/X/IS;

.field public final A0E:Lcom/facebook/ads/redexgen/X/QZ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/util/List;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;Lcom/facebook/ads/redexgen/X/MU;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Rh;Lcom/facebook/ads/redexgen/X/IS;)V
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
            "Lcom/facebook/ads/redexgen/X/Rh;",
            "Lcom/facebook/ads/redexgen/X/IS;",
            ")V"
        }
    .end annotation

    .line 50913
    .local p3, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4A;-><init>()V

    .line 50914
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A06:Landroid/util/SparseBooleanArray;

    .line 50915
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rg;->A09:Lcom/facebook/ads/redexgen/X/XT;

    .line 50916
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Rg;->A0A:Lcom/facebook/ads/redexgen/X/JT;

    .line 50917
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Rg;->A08:Lcom/facebook/ads/redexgen/X/7J;

    .line 50918
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Rg;->A0E:Lcom/facebook/ads/redexgen/X/QZ;

    .line 50919
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Rg;->A0B:Lcom/facebook/ads/redexgen/X/Lz;

    .line 50920
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/Rg;->A03:Lcom/facebook/ads/redexgen/X/MU;

    .line 50921
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Rg;->A07:Lcom/facebook/ads/redexgen/X/16;

    .line 50922
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rg;->A05:Ljava/util/List;

    .line 50923
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/Rg;->A04:Ljava/lang/String;

    .line 50924
    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/Rg;->A0C:Lcom/facebook/ads/redexgen/X/Rh;

    .line 50925
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/Rg;->A0D:Lcom/facebook/ads/redexgen/X/IS;

    .line 50926
    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Ra;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 50927
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rg;->A03:Lcom/facebook/ads/redexgen/X/MU;

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:I

    if-nez v0, :cond_1

    .line 50928
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Rg;
    .end local p1    # null:Landroid/view/ViewGroup;
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 50929
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/OM;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rg;->A09:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rg;->A0A:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Rg;->A07:Lcom/facebook/ads/redexgen/X/16;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Rg;->A0E:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Rg;->A0B:Lcom/facebook/ads/redexgen/X/Lz;

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/OM;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/16;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A0D:Lcom/facebook/ads/redexgen/X/IS;

    .line 50930
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OM;->A0I(Lcom/facebook/ads/redexgen/X/IS;)Lcom/facebook/ads/redexgen/X/OM;

    move-result-object v0

    .line 50931
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0J()Lcom/facebook/ads/redexgen/X/ON;

    move-result-object v2

    .line 50932
    .local p0, "params":Lcom/facebook/ads/redexgen/X/ON;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rg;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A0C:Lcom/facebook/ads/redexgen/X/Rh;

    .line 50933
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/O2;->A01(Lcom/facebook/ads/redexgen/X/ON;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Rh;)Lcom/facebook/ads/redexgen/X/9v;

    move-result-object v2

    .line 50934
    .local p1, "cardLayout":Lcom/facebook/ads/redexgen/X/9v;
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ra;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rg;->A06:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rg;->A0E:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A05:Ljava/util/List;

    .line 50935
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Rg;->A09:Lcom/facebook/ads/redexgen/X/XT;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Ra;-><init>(Lcom/facebook/ads/redexgen/X/9v;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/QZ;ILcom/facebook/ads/redexgen/X/XT;)V

    .line 50936
    return-object v1
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/Ra;I)V
    .locals 9

    .line 50937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A05:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/PE;

    .line 50938
    .local p0, "cardInfo":Lcom/facebook/ads/redexgen/X/PE;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rg;->A0A:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rg;->A08:Lcom/facebook/ads/redexgen/X/7J;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rg;->A0B:Lcom/facebook/ads/redexgen/X/Lz;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Rg;->A04:Ljava/lang/String;

    iget v6, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/Rg;->A02:I

    iget v8, p0, Lcom/facebook/ads/redexgen/X/Rg;->A01:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Ra;->A0l(Lcom/facebook/ads/redexgen/X/PE;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/Lz;Ljava/lang/String;III)V

    .line 50939
    return-void
.end method


# virtual methods
.method public final bridge synthetic A0C(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 50940
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rg;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Ra;

    move-result-object v0

    return-object v0
.end method

.method public final A0D()I
    .locals 1

    .line 50941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0E(Lcom/facebook/ads/redexgen/X/4e;I)V
    .locals 0

    .line 50942
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ra;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rg;->A02(Lcom/facebook/ads/redexgen/X/Ra;I)V

    return-void
.end method

.method public final A0F(III)V
    .locals 0

    .line 50943
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:I

    .line 50944
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Rg;->A02:I

    .line 50945
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Rg;->A01:I

    .line 50946
    return-void
.end method
