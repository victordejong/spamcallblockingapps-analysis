.class public final Lcom/facebook/ads/redexgen/X/d1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0n;


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;

.field public static final A0C:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/0v;

.field public A01:Lcom/facebook/ads/redexgen/X/cq;

.field public A02:Lcom/facebook/ads/redexgen/X/Dr;

.field public A03:Lcom/facebook/ads/redexgen/X/JT;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/Nn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/Sd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Ljava/lang/String;

.field public A07:Z

.field public A08:Z

.field public A09:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1VlIdrj3fRAASVh0IRQbA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AKXoeI10d8PJONEXEmQHjWIEkAB2E"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HfXt1ktTFXNYFvURT1ePpe"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VNbNAjzqH3UXN3t9RrTP5z6I5Qa6gPQJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DeawL9PzUIlDumNdtXISYTaSpfy6P3Cj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KNbO6MhxkLbBAZAqlm1H7U8Ouut8mEhI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "i536pd2CEb7n0lc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TelURl5RBqiFivFSJRRvco6RCKborqoX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/d1;->A0B:[Ljava/lang/String;

    .line 72692
    invoke-static {}, Lcom/facebook/ads/redexgen/X/d1;->A07()V

    const-class v0, Lcom/facebook/ads/redexgen/X/d1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/d1;->A0C:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A07:Z

    .line 72695
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A08:Z

    .line 72696
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A09:Z

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/0v;
    .locals 0

    .line 72697
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/d1;->A00:Lcom/facebook/ads/redexgen/X/0v;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/cq;
    .locals 0

    .line 72698
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/d1;->A01:Lcom/facebook/ads/redexgen/X/cq;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/Dr;
    .locals 0

    .line 72699
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/d1;->A02:Lcom/facebook/ads/redexgen/X/Dr;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/JT;
    .locals 0

    .line 72700
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/d1;->A03:Lcom/facebook/ads/redexgen/X/JT;

    return-object p0
.end method

.method public static synthetic A04()Ljava/lang/String;
    .locals 1

    .line 72701
    sget-object v0, Lcom/facebook/ads/redexgen/X/d1;->A0C:Ljava/lang/String;

    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/d1;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x13

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/d1;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/d1;->A0B:[Ljava/lang/String;

    const-string v1, "viF0h1063r6cbXDqGfnWrC6qPBVBGzAv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "3ywSXssJKLxMazlfVUMLvW6ymO505mlb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A06()V
    .locals 3

    .line 72702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A00:Lcom/facebook/ads/redexgen/X/0v;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A07:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A08:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A09:Z

    if-nez v0, :cond_1

    .line 72703
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/d1;->A00:Lcom/facebook/ads/redexgen/X/0v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A05:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/0v;->AA1(Lcom/facebook/ads/redexgen/X/d1;Landroid/view/View;)V

    .line 72704
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A02:Lcom/facebook/ads/redexgen/X/Dr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A00:Lcom/facebook/ads/redexgen/X/0v;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/dF;->A3V(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/d1;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_3

    .line 72705
    sget-object v2, Lcom/facebook/ads/redexgen/X/d1;->A0B:[Ljava/lang/String;

    const-string v1, "DQYu3GBVfiN4Ml"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void

    .line 72706
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/d1;->A0A:[B

    return-void

    :array_0
    .array-data 1
        -0xbt
        -0x1at
        -0x7t
        -0xbt
        -0x50t
        -0x17t
        -0xbt
        -0x12t
        -0x13t
        -0x17t
        -0x18t
        -0x26t
        -0x5ft
        -0x54t
    .end array-data
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/d1;)V
    .locals 0

    .line 72707
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/d1;->A06()V

    return-void
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/95;Lcom/facebook/ads/redexgen/X/1p;)V
    .locals 10

    .line 72708
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/1p;->A03()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cs;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/cs;

    move-result-object v3

    .line 72709
    .local p0, "dataModel":Lcom/facebook/ads/redexgen/X/cs;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/cs;->A61()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A06:Ljava/lang/String;

    .line 72710
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/d1;->A02:Lcom/facebook/ads/redexgen/X/Dr;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A03:Lcom/facebook/ads/redexgen/X/JT;

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/0j;->A03(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/0i;Lcom/facebook/ads/redexgen/X/JT;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72711
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A02:Lcom/facebook/ads/redexgen/X/Dr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A3z()V

    .line 72712
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/d1;->A00:Lcom/facebook/ads/redexgen/X/0v;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/K3;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/0v;->AAx(Lcom/facebook/ads/redexgen/X/d1;Lcom/facebook/ads/redexgen/X/K3;)V

    .line 72713
    return-void

    .line 72714
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/FE;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/FE;-><init>(Lcom/facebook/ads/redexgen/X/d1;Lcom/facebook/ads/redexgen/X/cs;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A04:Lcom/facebook/ads/redexgen/X/Nn;

    .line 72715
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/d1;->A02:Lcom/facebook/ads/redexgen/X/Dr;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A04:Lcom/facebook/ads/redexgen/X/Nn;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 72716
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/95;->A04()I

    move-result v2

    .line 72717
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/d1;->A61()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sd;

    invoke-direct {v0, v5, v4, v2, v1}, Lcom/facebook/ads/redexgen/X/Sd;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/ref/WeakReference;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A05:Lcom/facebook/ads/redexgen/X/Sd;

    .line 72718
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/d1;->A05:Lcom/facebook/ads/redexgen/X/Sd;

    .line 72719
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/95;->A07()I

    move-result v1

    .line 72720
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/95;->A08()I

    move-result v0

    .line 72721
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sd;->A0G(II)V

    .line 72722
    new-instance v9, Lcom/facebook/ads/redexgen/X/d2;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/d2;-><init>(Lcom/facebook/ads/redexgen/X/d1;)V

    .line 72723
    .local v0, "impressionHelper":Lcom/facebook/ads/redexgen/X/0q;
    new-instance v4, Lcom/facebook/ads/redexgen/X/cq;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/d1;->A02:Lcom/facebook/ads/redexgen/X/Dr;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/d1;->A03:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/d1;->A05:Lcom/facebook/ads/redexgen/X/Sd;

    .line 72724
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Sd;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v8

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/cq;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Nk;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/0q;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/d1;->A01:Lcom/facebook/ads/redexgen/X/cq;

    .line 72725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A01:Lcom/facebook/ads/redexgen/X/cq;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/cq;->A08(Lcom/facebook/ads/redexgen/X/cs;)V

    .line 72726
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/d1;->A05:Lcom/facebook/ads/redexgen/X/Sd;

    .line 72727
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nq;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72728
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/cs;->A04()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    .line 72729
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d1;->A05(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x9

    const/4 v1, 0x5

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d1;->A05(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Sd;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A07:Z

    .line 72731
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/d1;->A06()V

    .line 72732
    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/d1;)Z
    .locals 0

    .line 72733
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/d1;->A09:Z

    return p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/d1;Z)Z
    .locals 0

    .line 72734
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/d1;->A08:Z

    return p1
.end method


# virtual methods
.method public final A0C(Lcom/facebook/ads/redexgen/X/Dr;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/K8;Lcom/facebook/ads/redexgen/X/0v;Lcom/facebook/ads/redexgen/X/1p;)V
    .locals 1

    .line 72735
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dF;->A3U()V

    .line 72736
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/d1;->A02:Lcom/facebook/ads/redexgen/X/Dr;

    .line 72737
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/d1;->A03:Lcom/facebook/ads/redexgen/X/JT;

    .line 72738
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/d1;->A00:Lcom/facebook/ads/redexgen/X/0v;

    .line 72739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A02:Lcom/facebook/ads/redexgen/X/Dr;

    .line 72740
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 72741
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A15(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A09:Z

    .line 72742
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/1p;->A01()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    .line 72743
    .local p0, "placementDefinition":Lcom/facebook/ads/redexgen/X/95;
    invoke-direct {p0, v0, p5}, Lcom/facebook/ads/redexgen/X/d1;->A09(Lcom/facebook/ads/redexgen/X/95;Lcom/facebook/ads/redexgen/X/1p;)V

    .line 72744
    return-void
.end method

.method public final A61()Ljava/lang/String;
    .locals 1

    .line 72745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A06:Ljava/lang/String;

    return-object v0
.end method

.method public final A75()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 72746
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    .line 72747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A02:Lcom/facebook/ads/redexgen/X/Dr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A05:Lcom/facebook/ads/redexgen/X/Sd;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/dF;->A3S(Z)V

    .line 72748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A05:Lcom/facebook/ads/redexgen/X/Sd;

    if-eqz v0, :cond_0

    .line 72749
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sd;->destroy()V

    .line 72750
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A05:Lcom/facebook/ads/redexgen/X/Sd;

    .line 72751
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/d1;->A04:Lcom/facebook/ads/redexgen/X/Nn;

    .line 72752
    :cond_0
    return-void

    .line 72753
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
