.class public final Lcom/facebook/ads/redexgen/X/Ni;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static A05:Lcom/facebook/ads/redexgen/X/MU;

.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final A08:I

.field public static final A09:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/bO;

.field public A01:Lcom/facebook/ads/redexgen/X/XT;

.field public A02:Lcom/facebook/ads/redexgen/X/0w;

.field public A03:Lcom/facebook/ads/redexgen/X/Sk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/O9;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CT308ms2RTF49ixw7iITcI5DvAIGWMXZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UVauKq3DlAHpB1vMyeeSD4Us6AaVXCYd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "G3Ivv2DNtSsvdOlvNnw6jHI40eb4uyYL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qur6nZLrhU9XJET37yOODnXWYcrj37IJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OCLfHPrXkMpm02uq88EYR3Uw1JpI2kE3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KopKmjllEHptdGx3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mL4xXMXopKoNgp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1VwEGJcTQNgN7iTbFc9O"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ni;->A07:[Ljava/lang/String;

    .line 45977
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ni;->A02()V

    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ni;->A08:I

    .line 45978
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41700000    # 15.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ni;->A09:I

    .line 45979
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sj;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Sj;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ni;->A05:Lcom/facebook/ads/redexgen/X/MU;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 2

    .line 45980
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45981
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 45982
    new-instance v0, Lcom/facebook/ads/redexgen/X/0w;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/0w;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:Lcom/facebook/ads/redexgen/X/0w;

    .line 45983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:Lcom/facebook/ads/redexgen/X/0w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 45984
    new-instance v0, Lcom/facebook/ads/redexgen/X/Et;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Et;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A00:Lcom/facebook/ads/redexgen/X/bO;

    .line 45985
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A00:Lcom/facebook/ads/redexgen/X/bO;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:Lcom/facebook/ads/redexgen/X/0w;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bO;->A0G(Lcom/facebook/ads/redexgen/X/Eq;)V

    .line 45986
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45987
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:Lcom/facebook/ads/redexgen/X/0w;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Ni;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45989
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ni;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ni;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ni;->A07:[Ljava/lang/String;

    const-string v1, "hwjeWCnyrgrPOyFOaJyYR4Ki88uO9bQs"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "4m7NTkn57B9pIqsgccGzW0RoTzQfESBy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x77

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/16;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/16;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/PE;",
            ">;"
        }
    .end annotation

    .line 45990
    if-nez p1, :cond_0

    .line 45991
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 45992
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/16;->A0X()Ljava/util/List;

    move-result-object v5

    .line 45993
    .local p0, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 45994
    .local p1, "mCarouselCardInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 45995
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/19;

    .line 45996
    .local v5, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/PE;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/PE;-><init>(IILcom/facebook/ads/redexgen/X/19;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45997
    .end local v5    # "adInfo":Lcom/facebook/ads/redexgen/X/19;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45998
    .end local v0    # "i":I
    :cond_1
    return-object v4
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ni;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x19t
        0x5t
        0x16t
        0x13t
        0x19t
        0x17t
        0x9t
        0x10t
        -0x3ct
        -0xet
        0x5t
        0x18t
        0xdt
        0x1at
        0x9t
        -0x3ct
        0x1at
        0xdt
        0x9t
        0x1bt
        -0x3ct
        0x5t
        0x8t
        0x9t
        0x14t
        0x18t
        0x9t
        0x16t
        -0x3ct
        0xdt
        0x17t
        0x12t
        -0x35t
        0x18t
        -0x3ct
        0x7t
        0x16t
        0x9t
        0x5t
        0x18t
        0x9t
        0x8t
        -0x3ct
        0x14t
        0x16t
        0x13t
        0x14t
        0x9t
        0x16t
        0x10t
        0x1dt
        -0x5t
        -0x7t
        0x2t
        -0x7t
        0x6t
        -0x3t
        -0x9t
    .end array-data
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Ni;I)V
    .locals 0

    .line 45999
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ni;->setUpLayoutForCardAtIndex(I)V

    return-void
.end method

.method public static getDummyListener()Lcom/facebook/ads/redexgen/X/MU;
    .locals 1

    .line 46023
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ni;->A05:Lcom/facebook/ads/redexgen/X/MU;

    return-object v0
.end method

.method private setUpLayoutForCardAtIndex(I)V
    .locals 1

    .line 46024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A04:Lcom/facebook/ads/redexgen/X/O9;

    if-eqz v0, :cond_0

    .line 46025
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/O9;->A00(I)V

    .line 46026
    :cond_0
    return-void
.end method

.method private setupDotsLayout(Lcom/facebook/ads/redexgen/X/Tj;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Tj;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/PE;",
            ">;)V"
        }
    .end annotation

    .line 46027
    .local v3, "carouselCardInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:Lcom/facebook/ads/redexgen/X/0w;

    .line 46028
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0w;->getCarouselCardBehaviorHelper()Lcom/facebook/ads/redexgen/X/A1;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Si;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Si;-><init>(Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 46029
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0Z(Lcom/facebook/ads/redexgen/X/OV;)V

    .line 46030
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ni;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 46031
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tj;->A0y()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v2

    .line 46032
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/O9;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/O9;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1I;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A04:Lcom/facebook/ads/redexgen/X/O9;

    .line 46033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A04:Lcom/facebook/ads/redexgen/X/O9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 46034
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46035
    .local p0, "positionDotsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:Lcom/facebook/ads/redexgen/X/0w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0w;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 46036
    sget v1, Lcom/facebook/ads/redexgen/X/Ni;->A09:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 46037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A04:Lcom/facebook/ads/redexgen/X/O9;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Ni;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46038
    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 2

    .line 46000
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:Lcom/facebook/ads/redexgen/X/0w;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/4A;)V

    .line 46001
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Tj;I)V
    .locals 11

    .line 46002
    move-object v6, p1

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tj;->A0y()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ni;->A01(Lcom/facebook/ads/redexgen/X/16;)Ljava/util/ArrayList;

    move-result-object v3

    .line 46003
    .local p0, "carouselCardInfo":Ljava/util/ArrayList;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:Lcom/facebook/ads/redexgen/X/0w;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/0w;->setCardsInfo(Ljava/util/ArrayList;)V

    .line 46004
    new-instance v1, Lcom/facebook/ads/redexgen/X/Sk;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ni;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 46005
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tj;->A0y()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 46006
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A08()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v5

    sget-object v7, Lcom/facebook/ads/redexgen/X/Ni;->A05:Lcom/facebook/ads/redexgen/X/MU;

    .line 46007
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tj;->A0y()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:Lcom/facebook/ads/redexgen/X/0w;

    .line 46008
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0w;->getCarouselCardBehaviorHelper()Lcom/facebook/ads/redexgen/X/A1;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/Sk;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/util/List;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Tj;Lcom/facebook/ads/redexgen/X/MU;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/A1;Lcom/facebook/ads/redexgen/X/IS;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A03:Lcom/facebook/ads/redexgen/X/Sk;

    .line 46009
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:Lcom/facebook/ads/redexgen/X/0w;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A03:Lcom/facebook/ads/redexgen/X/Sk;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/4A;)V

    .line 46010
    sget v0, Lcom/facebook/ads/redexgen/X/Ni;->A08:I

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr p2, v0

    .line 46011
    .local v6, "childWidth":I
    const/16 v2, 0x10

    .line 46012
    .local p2, "childSpacing":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A03:Lcom/facebook/ads/redexgen/X/Sk;

    const/4 v0, 0x0

    invoke-virtual {v1, p2, v2, v0}, Lcom/facebook/ads/redexgen/X/Sk;->A0F(III)V

    .line 46013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A03:Lcom/facebook/ads/redexgen/X/Sk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4A;->A06()V

    .line 46014
    invoke-direct {p0, v6, v3}, Lcom/facebook/ads/redexgen/X/Ni;->setupDotsLayout(Lcom/facebook/ads/redexgen/X/Tj;Ljava/util/ArrayList;)V

    .line 46015
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/QZ;)V
    .locals 6

    .line 46016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A03:Lcom/facebook/ads/redexgen/X/Sk;

    if-eqz v0, :cond_0

    .line 46017
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sk;->A0G(Lcom/facebook/ads/redexgen/X/QZ;)V

    .line 46018
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:Lcom/facebook/ads/redexgen/X/0w;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/0w;->A22(Lcom/facebook/ads/redexgen/X/QZ;)V

    .line 46019
    return-void

    .line 46020
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 46021
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A1i:I

    const/4 v2, 0x0

    const/16 v1, 0x33

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ni;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;)V

    .line 46022
    const/16 v2, 0x33

    const/4 v1, 0x7

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ni;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    goto :goto_0
.end method
