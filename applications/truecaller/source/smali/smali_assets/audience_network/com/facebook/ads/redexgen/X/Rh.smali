.class public Lcom/facebook/ads/redexgen/X/Rh;
.super Lcom/facebook/ads/redexgen/X/4R;
.source ""


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/OV;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/OX;

.field public A04:Lcom/facebook/ads/redexgen/X/QZ;

.field public A05:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/PE;",
            ">;"
        }
    .end annotation
.end field

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:I

.field public final A0B:Landroid/content/Context;

.field public final A0C:Lcom/facebook/ads/redexgen/X/be;

.field public final A0D:Lcom/facebook/ads/redexgen/X/4Z;

.field public final A0E:Lcom/facebook/ads/redexgen/X/OY;

.field public final A0F:Lcom/facebook/ads/redexgen/X/OZ;

.field public final A0G:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vVts3290hN8iYOphvTtUHsw8p"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "g"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QXZRYfiopoOIgyOb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uRY3EBcOhcPzIFCW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1yhQGC5wOot73mjsntHrCCOy6H7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ngPHprqJPXgJBcmGEhNrmzVf2B4dA5Oh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DCeBbFrEMIUsiq6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "addqTveDrmk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rh;->A0I:[Ljava/lang/String;

    .line 50947
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rh;->A08()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2F;ILjava/util/List;Lcom/facebook/ads/redexgen/X/QZ;Landroid/os/Bundle;)V
    .locals 2
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/redexgen/X/QZ;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/2F;",
            "I",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/PE;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/QZ;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 50948
    .local p5, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4R;-><init>()V

    .line 50949
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0G:Ljava/util/Set;

    .line 50950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A08:Z

    .line 50951
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A06:Z

    .line 50952
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A07:Z

    .line 50953
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A01:I

    .line 50954
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A00:F

    .line 50955
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rk;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rk;-><init>(Lcom/facebook/ads/redexgen/X/Rh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0F:Lcom/facebook/ads/redexgen/X/OZ;

    .line 50956
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rj;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rj;-><init>(Lcom/facebook/ads/redexgen/X/Rh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A03:Lcom/facebook/ads/redexgen/X/OX;

    .line 50957
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ri;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ri;-><init>(Lcom/facebook/ads/redexgen/X/Rh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0E:Lcom/facebook/ads/redexgen/X/OY;

    .line 50958
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2F;->getLayoutManager()Lcom/facebook/ads/redexgen/X/be;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0C:Lcom/facebook/ads/redexgen/X/be;

    .line 50959
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0A:I

    .line 50960
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Rh;->A05:Ljava/util/List;

    .line 50961
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Rh;->A04:Lcom/facebook/ads/redexgen/X/QZ;

    .line 50962
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2F;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bd;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/bd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0D:Lcom/facebook/ads/redexgen/X/4Z;

    .line 50963
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2F;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0B:Landroid/content/Context;

    .line 50964
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/Eq;->A1j(Lcom/facebook/ads/redexgen/X/4R;)V

    .line 50965
    invoke-direct {p0, p5}, Lcom/facebook/ads/redexgen/X/Rh;->A0D(Landroid/os/Bundle;)V

    .line 50966
    return-void
.end method

.method private A03(II)Lcom/facebook/ads/redexgen/X/SJ;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 50967
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A04(IIZ)Lcom/facebook/ads/redexgen/X/SJ;

    move-result-object v0

    return-object v0
.end method

.method private A04(IIZ)Lcom/facebook/ads/redexgen/X/SJ;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 50968
    const/4 v5, 0x0

    .line 50969
    .local p0, "foundVideo":Lcom/facebook/ads/redexgen/X/SJ;
    .local p1, "i":I
    :goto_0
    if-gt p1, p2, :cond_6

    .line 50970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0C:Lcom/facebook/ads/redexgen/X/be;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/be;->A1q(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/SJ;

    .line 50971
    .local p2, "curCard":Lcom/facebook/ads/redexgen/X/SJ;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/SJ;->A0h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50972
    .restart local p2    # "curCard":Lcom/facebook/ads/redexgen/X/SJ;
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 50973
    :cond_1
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Rh;->A0b(Landroid/view/View;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rh;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 50974
    .local p3, "isCompletelyVisible":Z
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rh;->A0I:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v5, :cond_4

    .line 50975
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/SJ;->A0i()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0G:Ljava/util/Set;

    .line 50976
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_3

    .line 50977
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Rh;->A0I(Lcom/facebook/ads/redexgen/X/OJ;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50978
    :cond_3
    move-object v5, v3

    .line 50979
    :cond_4
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/SJ;->A0i()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v4, :cond_5

    .line 50980
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0C(IZ)V

    .line 50981
    .end local p2    # "curCard":Lcom/facebook/ads/redexgen/X/SJ;
    .end local p3    # "isCompletelyVisible":Z
    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 50982
    .end local p1    # "i":I
    .end local p2
    :cond_6
    return-object v5
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rh;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A06()V
    .locals 2

    .line 50983
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A07:Z

    if-nez v0, :cond_0

    .line 50984
    return-void

    .line 50985
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0C:Lcom/facebook/ads/redexgen/X/be;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/be;->A28()I

    move-result v1

    .line 50986
    .local p0, "firstVisibleItem":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0C:Lcom/facebook/ads/redexgen/X/be;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/be;->A29()I

    move-result v0

    .line 50987
    .local v0, "lastVisibleItem":I
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A03(II)Lcom/facebook/ads/redexgen/X/SJ;

    move-result-object v0

    .line 50988
    .local v0, "firstAutoplayableVideo":Lcom/facebook/ads/redexgen/X/SJ;
    if-eqz v0, :cond_1

    .line 50989
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0f()V

    .line 50990
    :cond_1
    return-void
.end method

.method private A07()V
    .locals 2

    .line 50991
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0C:Lcom/facebook/ads/redexgen/X/be;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/be;->A27()I

    move-result v1

    .line 50992
    .local p0, "curPos":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 50993
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0V(I)V

    .line 50994
    :cond_0
    return-void
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x3d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rh;->A0H:[B

    return-void

    :array_0
    .array-data 1
        -0x1at
        -0x6t
        -0x7t
        -0xct
        0x4t
        -0xbt
        -0xft
        -0x1at
        -0x2t
        0x4t
        -0x16t
        -0xdt
        -0x1at
        -0x19t
        -0xft
        -0x16t
        -0x17t
        0x4t
        -0xbt
        -0x1at
        -0x9t
        -0x1at
        -0xet
        0x7t
        0x11t
        0x1dt
        0x4t
        0x7t
        0x10t
        0x11t
        0x12t
        0x1dt
        0x14t
        0x7t
        0x2t
        0x3t
        0xdt
        0x1dt
        0xet
        -0x1t
        0x10t
        -0x1t
        0xbt
        -0x5t
        -0xct
        -0xft
        -0x6t
        -0xet
        -0x16t
        0x4t
        -0xft
        -0x16t
        -0x5t
        -0x16t
        -0xft
        0x4t
        -0xbt
        -0x1at
        -0x9t
        -0x1at
        -0xet
    .end array-data
.end method

.method private A09(I)V
    .locals 3

    .line 50995
    add-int/lit8 v2, p1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0C:Lcom/facebook/ads/redexgen/X/be;

    .line 50996
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/be;->A29()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A04(IIZ)Lcom/facebook/ads/redexgen/X/SJ;

    move-result-object v1

    .line 50997
    .local p0, "firstAutoplayableVideo":Lcom/facebook/ads/redexgen/X/SJ;
    if-eqz v1, :cond_0

    .line 50998
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SJ;->A0f()V

    .line 50999
    const v0, -0x5f000010

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0V(I)V

    .line 51000
    :cond_0
    return-void
.end method

.method private A0A(II)V
    .locals 0

    .line 51001
    .local p0, "i":I
    :goto_0
    if-gt p1, p2, :cond_0

    .line 51002
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Rh;->A0T(I)V

    .line 51003
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 51004
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method private final A0B(II)V
    .locals 0

    .line 51005
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Rh;->A0S(I)V

    .line 51006
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/Rh;->A0S(I)V

    .line 51007
    return-void
.end method

.method private A0C(IZ)V
    .locals 2

    .line 51008
    if-eqz p2, :cond_0

    .line 51009
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0G:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51010
    :goto_0
    return-void

    .line 51011
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0G:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private A0D(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51012
    if-nez p1, :cond_0

    .line 51013
    return-void

    .line 51014
    :cond_0
    const/4 v3, 0x0

    const/16 v2, 0x2b

    const/16 v1, 0x12

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A00:F

    .line 51015
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A07:Z

    .line 51016
    const/16 v2, 0x17

    const/16 v1, 0x14

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A08:Z

    .line 51017
    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/Rh;)V
    .locals 0

    .line 51018
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rh;->A07()V

    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/Rh;I)V
    .locals 0

    .line 51019
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Rh;->A09(I)V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/Rh;IZ)V
    .locals 0

    .line 51020
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rh;->A0C(IZ)V

    return-void
.end method

.method private A0H()Z
    .locals 2

    .line 51021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0B:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1s(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0A:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static A0I(Lcom/facebook/ads/redexgen/X/OJ;)Z
    .locals 4

    .line 51022
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getWidth()I

    move-result v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LY;->A01:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    const v0, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v3, v1

    .line 51023
    .local p0, "allowedAreaMaxX":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/LY;->A01:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 51024
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getWidth()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v1, v1

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr v1, v0

    div-float/2addr v1, v2

    float-to-int v2, v1

    .line 51025
    .local v1, "allowedAreaMinX":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 51026
    .local v0, "furthestX":I
    if-gt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getX()F

    move-result v1

    int-to-float v0, v2

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/SJ;)Z
    .locals 2

    .line 51027
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A08:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SJ;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51028
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Rh;->A08:Z

    .line 51029
    const/4 v0, 0x1

    return v0

    .line 51030
    :cond_0
    return v1
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/Rh;)Z
    .locals 0

    .line 51031
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rh;->A0H()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public A0L(Lcom/facebook/ads/redexgen/X/Eq;I)V
    .locals 1

    .line 51032
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4R;->A0L(Lcom/facebook/ads/redexgen/X/Eq;I)V

    .line 51033
    if-nez p2, :cond_0

    .line 51034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A09:Z

    .line 51035
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rh;->A06()V

    .line 51036
    :cond_0
    return-void
.end method

.method public A0M(Lcom/facebook/ads/redexgen/X/Eq;II)V
    .locals 2

    .line 51037
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4R;->A0M(Lcom/facebook/ads/redexgen/X/Eq;II)V

    .line 51038
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Rh;->A09:Z

    .line 51039
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A06:Z

    if-eqz v0, :cond_0

    .line 51040
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A09:Z

    .line 51041
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rh;->A06()V

    .line 51042
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Rh;->A06:Z

    .line 51043
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0C:Lcom/facebook/ads/redexgen/X/be;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/be;->A28()I

    move-result v1

    .line 51044
    .local p0, "firstVisibleItem":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0C:Lcom/facebook/ads/redexgen/X/be;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/be;->A29()I

    move-result v0

    .line 51045
    .local p1, "lastVisibleItem":I
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0B(II)V

    .line 51046
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0A(II)V

    .line 51047
    invoke-virtual {p0, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/Rh;->A0W(III)V

    .line 51048
    return-void
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/OX;
    .locals 1

    .line 51049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A03:Lcom/facebook/ads/redexgen/X/OX;

    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/OY;
    .locals 1

    .line 51050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0E:Lcom/facebook/ads/redexgen/X/OY;

    return-object v0
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/OZ;
    .locals 1

    .line 51051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0F:Lcom/facebook/ads/redexgen/X/OZ;

    return-object v0
.end method

.method public final A0Q()V
    .locals 4

    .line 51052
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A01:I

    .line 51053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0C:Lcom/facebook/ads/redexgen/X/be;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/be;->A28()I

    move-result v3

    .line 51054
    .local p0, "firstPos":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0C:Lcom/facebook/ads/redexgen/X/be;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/be;->A29()I

    move-result v2

    .line 51055
    .local v0, "lastPos":I
    .local v0, "i":I
    :goto_0
    if-gt v3, v2, :cond_0

    if-ltz v3, :cond_0

    .line 51056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0C:Lcom/facebook/ads/redexgen/X/be;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/be;->A1q(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/SJ;

    .line 51057
    .local v3, "card":Lcom/facebook/ads/redexgen/X/SJ;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SJ;->A0h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51058
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Rh;->A01:I

    .line 51059
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SJ;->A0e()V

    .line 51060
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 51061
    .end local v3    # "card":Lcom/facebook/ads/redexgen/X/SJ;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final A0R()V
    .locals 2

    .line 51062
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0C:Lcom/facebook/ads/redexgen/X/be;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A01:I

    .line 51063
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/be;->A1q(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/SJ;

    .line 51064
    .local p0, "card":Lcom/facebook/ads/redexgen/X/SJ;
    if-eqz v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A01:I

    if-ltz v0, :cond_0

    .line 51065
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SJ;->A0f()V

    .line 51066
    :cond_0
    return-void
.end method

.method public final A0S(I)V
    .locals 5

    .line 51067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0C:Lcom/facebook/ads/redexgen/X/be;

    .line 51068
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/be;->A1q(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/SJ;

    .line 51069
    .local p0, "cardLayout":Lcom/facebook/ads/redexgen/X/SJ;
    if-eqz v4, :cond_0

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Rh;->A0b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51070
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rh;->A0I:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rh;->A0I:[Ljava/lang/String;

    const-string v1, "Vxamqv9qm4zlsVVB8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/Rh;->A0a(Lcom/facebook/ads/redexgen/X/SJ;Z)V

    .line 51071
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0T(I)V
    .locals 3

    .line 51072
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0C:Lcom/facebook/ads/redexgen/X/be;

    .line 51073
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/be;->A1q(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/SJ;

    .line 51074
    .local p0, "cardLayout":Lcom/facebook/ads/redexgen/X/SJ;
    if-nez v2, :cond_0

    .line 51075
    return-void

    .line 51076
    :cond_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Rh;->A0b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51077
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0a(Lcom/facebook/ads/redexgen/X/SJ;Z)V

    .line 51078
    :cond_1
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Rh;->A0J(Lcom/facebook/ads/redexgen/X/SJ;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rh;->A05:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 51079
    const v0, -0x5f000010

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/SJ;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/PE;

    .line 51080
    .local p1, "cardInfo":Lcom/facebook/ads/redexgen/X/PE;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0F:Lcom/facebook/ads/redexgen/X/OZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PE;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A09()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OZ;->setVolume(F)V

    .line 51081
    .end local p1    # "cardInfo":Lcom/facebook/ads/redexgen/X/PE;
    :cond_2
    return-void

    .line 51082
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public final A0U(I)V
    .locals 0

    .line 51083
    invoke-direct {p0, p1, p1}, Lcom/facebook/ads/redexgen/X/Rh;->A0A(II)V

    .line 51084
    return-void
.end method

.method public final A0V(I)V
    .locals 2

    .line 51085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0D:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0A(I)V

    .line 51086
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0C:Lcom/facebook/ads/redexgen/X/be;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0D:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A1L(Lcom/facebook/ads/redexgen/X/4Z;)V

    .line 51087
    return-void
.end method

.method public final A0W(III)V
    .locals 2

    .line 51088
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rh;->A0H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A02:Lcom/facebook/ads/redexgen/X/OV;

    if-nez v0, :cond_1

    .line 51089
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Rh;
    .end local p1    # null:I
    :cond_0
    return-void

    .line 51090
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A0C:Lcom/facebook/ads/redexgen/X/be;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/be;->A27()I

    move-result v1

    .line 51091
    .local p0, "firstCompletelyVisible":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 51092
    .local p1, "recomputeFrom":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rh;->A02:Lcom/facebook/ads/redexgen/X/OV;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/OV;->AF8(I)V

    .line 51093
    return-void

    .line 51094
    :cond_2
    if-gez p3, :cond_3

    move v1, p1

    goto :goto_0

    :cond_3
    move v1, p2

    goto :goto_0
.end method

.method public final A0X(Landroid/os/Bundle;)V
    .locals 4

    .line 51095
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Rh;->A00:F

    const/16 v2, 0x2b

    const/16 v1, 0x12

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 51096
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Rh;->A07:Z

    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51097
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Rh;->A08:Z

    const/16 v2, 0x17

    const/16 v1, 0x14

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51098
    return-void
.end method

.method public A0Y(Landroid/view/View;Z)V
    .locals 1

    .line 51099
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 51100
    return-void

    .line 51101
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/OV;)V
    .locals 0

    .line 51102
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rh;->A02:Lcom/facebook/ads/redexgen/X/OV;

    .line 51103
    return-void
.end method

.method public A0a(Lcom/facebook/ads/redexgen/X/SJ;Z)V
    .locals 4

    .line 51104
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rh;->A0H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51105
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rh;->A0Y(Landroid/view/View;Z)V

    .line 51106
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SJ;->A0h()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rh;->A0I:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rh;->A0I:[Ljava/lang/String;

    const-string v1, "slnyAJQBNPORwedJ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 51107
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SJ;->A0e()V

    .line 51108
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A0b(Landroid/view/View;)Z
    .locals 2

    .line 51109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 51110
    .local p0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 51111
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const v0, 0x3e19999a    # 0.15f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
