.class public final Lcom/facebook/ads/redexgen/X/Sk;
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


# static fields
.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/MU;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/QZ;

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

.field public final A0C:Lcom/facebook/ads/redexgen/X/Tj;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Lz;

.field public final A0E:Lcom/facebook/ads/redexgen/X/A1;

.field public final A0F:Lcom/facebook/ads/redexgen/X/IS;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "V9PMqjfJwvT67ZYY54"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KoZhm2HVOxwdWjftAINQcNHkYZyOyrrP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1oETx6NwESVuh0koANzr27EeUl20v2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JzBcWsy5jAKTLTxYYehZ60pyLdP8SU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yKgplvdSiwxmZlK2YFEMAzZYc4XxSzpb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "X0kbEjSxeWmcBGftN2ECOwyfDlZVnKJa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Tg1eBciSulZI8G7Ss5ny454cnfyvXG1B"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XTdAnKcq2fXupzVpmV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sk;->A0G:[Ljava/lang/String;

    .line 52474
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/util/List;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Tj;Lcom/facebook/ads/redexgen/X/MU;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/A1;Lcom/facebook/ads/redexgen/X/IS;)V
    .locals 1
    .param p9    # Lcom/facebook/ads/redexgen/X/IS;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XT;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/PE;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/16;",
            "Lcom/facebook/ads/redexgen/X/JT;",
            "Lcom/facebook/ads/redexgen/X/Tj;",
            "Lcom/facebook/ads/redexgen/X/MU;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/A1;",
            "Lcom/facebook/ads/redexgen/X/IS;",
            ")V"
        }
    .end annotation

    .line 52475
    .local p3, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4A;-><init>()V

    .line 52476
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A07:Landroid/util/SparseBooleanArray;

    .line 52477
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sk;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    .line 52478
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Sk;->A0B:Lcom/facebook/ads/redexgen/X/JT;

    .line 52479
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Sk;->A0C:Lcom/facebook/ads/redexgen/X/Tj;

    .line 52480
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/Tj;->A0z()Lcom/facebook/ads/redexgen/X/7J;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A09:Lcom/facebook/ads/redexgen/X/7J;

    .line 52481
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/Tj;->A18()Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A04:Lcom/facebook/ads/redexgen/X/QZ;

    .line 52482
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/Tj;->A17()Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A0D:Lcom/facebook/ads/redexgen/X/Lz;

    .line 52483
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Sk;->A03:Lcom/facebook/ads/redexgen/X/MU;

    .line 52484
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Sk;->A08:Lcom/facebook/ads/redexgen/X/16;

    .line 52485
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sk;->A06:Ljava/util/List;

    .line 52486
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Sk;->A05:Ljava/lang/String;

    .line 52487
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/Sk;->A0E:Lcom/facebook/ads/redexgen/X/A1;

    .line 52488
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/Sk;->A0F:Lcom/facebook/ads/redexgen/X/IS;

    .line 52489
    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Ra;
    .locals 9

    .line 52490
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sk;->A03:Lcom/facebook/ads/redexgen/X/MU;

    if-eqz v4, :cond_1

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Sk;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sk;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sk;->A0G:[Ljava/lang/String;

    const-string v1, "HBGrR4E5Ou8lGOrZM15HBBDd4CDBRH"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Dws66no3otUyrKWRXf01RsEai20ZIn"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 52491
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Sk;
    .end local p1    # null:Landroid/view/ViewGroup;
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 52492
    :cond_2
    new-instance v1, Lcom/facebook/ads/redexgen/X/OM;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sk;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sk;->A0B:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Sk;->A08:Lcom/facebook/ads/redexgen/X/16;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Sk;->A04:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Sk;->A0D:Lcom/facebook/ads/redexgen/X/Lz;

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/OM;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/16;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A0F:Lcom/facebook/ads/redexgen/X/IS;

    .line 52493
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OM;->A0I(Lcom/facebook/ads/redexgen/X/IS;)Lcom/facebook/ads/redexgen/X/OM;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A0C:Lcom/facebook/ads/redexgen/X/Tj;

    .line 52494
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OM;->A0G(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/OM;

    move-result-object v0

    .line 52495
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0J()Lcom/facebook/ads/redexgen/X/ON;

    move-result-object v3

    .line 52496
    .local p0, "params":Lcom/facebook/ads/redexgen/X/ON;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sk;->A0C:Lcom/facebook/ads/redexgen/X/Tj;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sk;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A0E:Lcom/facebook/ads/redexgen/X/A1;

    .line 52497
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/O2;->A00(Lcom/facebook/ads/redexgen/X/ON;Lcom/facebook/ads/redexgen/X/Tj;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/A1;)Lcom/facebook/ads/redexgen/X/2E;

    move-result-object v2

    .line 52498
    .local p1, "cardLayout":Lcom/facebook/ads/redexgen/X/2E;
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ra;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sk;->A07:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sk;->A04:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A06:Ljava/util/List;

    .line 52499
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Sk;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Ra;-><init>(Lcom/facebook/ads/redexgen/X/9v;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/QZ;ILcom/facebook/ads/redexgen/X/XT;)V

    .line 52500
    return-object v1
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/Ra;I)V
    .locals 10

    .line 52501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A06:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/PE;

    .line 52502
    .local p0, "cardInfo":Lcom/facebook/ads/redexgen/X/PE;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A04:Lcom/facebook/ads/redexgen/X/QZ;

    move-object v1, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ra;->A0m(Lcom/facebook/ads/redexgen/X/QZ;)V

    .line 52503
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sk;->A0B:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sk;->A09:Lcom/facebook/ads/redexgen/X/7J;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Sk;->A0D:Lcom/facebook/ads/redexgen/X/Lz;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Sk;->A05:Ljava/lang/String;

    iget v7, p0, Lcom/facebook/ads/redexgen/X/Sk;->A00:I

    iget v8, p0, Lcom/facebook/ads/redexgen/X/Sk;->A02:I

    iget v9, p0, Lcom/facebook/ads/redexgen/X/Sk;->A01:I

    invoke-virtual/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/Ra;->A0l(Lcom/facebook/ads/redexgen/X/PE;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/Lz;Ljava/lang/String;III)V

    .line 52504
    return-void
.end method


# virtual methods
.method public final bridge synthetic A0C(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4e;
    .locals 1

    .line 52505
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Sk;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Ra;

    move-result-object v0

    return-object v0
.end method

.method public final A0D()I
    .locals 1

    .line 52506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0E(Lcom/facebook/ads/redexgen/X/4e;I)V
    .locals 0

    .line 52507
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ra;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Sk;->A02(Lcom/facebook/ads/redexgen/X/Ra;I)V

    return-void
.end method

.method public final A0F(III)V
    .locals 0

    .line 52508
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Sk;->A00:I

    .line 52509
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Sk;->A02:I

    .line 52510
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Sk;->A01:I

    .line 52511
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/QZ;)V
    .locals 0

    .line 52512
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sk;->A04:Lcom/facebook/ads/redexgen/X/QZ;

    .line 52513
    return-void
.end method
