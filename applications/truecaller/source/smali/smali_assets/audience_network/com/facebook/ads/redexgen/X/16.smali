.class public abstract Lcom/facebook/ads/redexgen/X/16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static A0N:Lorg/json/JSONObject; = null

.field public static A0O:[B = null

.field public static A0P:[Ljava/lang/String; = null

.field public static final serialVersionUID:J = -0x4a480b6eb5993653L


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/RewardData;

.field public A04:Lcom/facebook/ads/redexgen/X/17;

.field public A05:Lcom/facebook/ads/redexgen/X/1P;

.field public A06:Lcom/facebook/ads/redexgen/X/1S;

.field public A07:Lcom/facebook/ads/redexgen/X/1Z;

.field public A08:Ljava/lang/String;

.field public A09:Ljava/lang/String;

.field public A0A:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0B:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0C:Ljava/lang/String;

.field public A0D:Ljava/lang/String;

.field public A0E:Ljava/lang/String;

.field public A0F:Ljava/lang/String;

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public final A0L:I

.field public final A0M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/19;",
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

    const-string v0, "1gqRR9im7tmNjhPy8NnQpjCX4rd8Ielc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZkOx7RNEMabKvQ7fgN15WIbWDw11JZFu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ifeh8sROmLFDdOYqa0sy0eFfj5RHH1gU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fnDzwAhU6GMUs0cCq2fTQuWEzv5lBJki"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OVtNfYqIZ80xqW4zrHdkYxbTKYgYXHc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "chIpxbYwiAOd1RIHlv8aEwW7ihQHRwI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GnSiEcQE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "uApEYGhuY9oy1RN675k2bDQ9FUD4oA7y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/16;->A0P:[Ljava/lang/String;

    .line 2738
    invoke-static {}, Lcom/facebook/ads/redexgen/X/16;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/19;",
            ">;)V"
        }
    .end annotation

    .line 2739
    .local v2, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2740
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0D:Ljava/lang/String;

    .line 2741
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/16;->A01:I

    .line 2742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0J:Z

    .line 2743
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0K:Z

    .line 2744
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A0M:Ljava/util/List;

    .line 2745
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/16;->A0O:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1L;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/facebook/ads/redexgen/X/XT;",
            "Lcom/facebook/ads/redexgen/X/1L;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/19;",
            ">;"
        }
    .end annotation

    .line 2746
    const/16 v2, 0x2b

    const/16 v1, 0x8

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 2747
    .local p0, "carouselData":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2748
    invoke-static {v1, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1H;->A01(Lorg/json/JSONArray;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1L;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2749
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2750
    .local p1, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/19;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    .line 2751
    .local p2, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    invoke-interface {p2, v0, p0}, Lcom/facebook/ads/redexgen/X/1L;->A3A(Lcom/facebook/ads/redexgen/X/19;Lorg/json/JSONObject;)V

    .line 2752
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2753
    return-object v1
.end method

.method public static A02()V
    .locals 4

    const/16 v3, 0x16f

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A0P:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A0P:[Ljava/lang/String;

    const-string v1, "bfB1pGz3pHLReaUGKuLSmGsyYLYBAtW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/16;->A0O:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x28t
        0x2dt
        0x16t
        0x2at
        0x21t
        0x26t
        0x20t
        0x2at
        0x2ct
        0x3at
        0x16t
        0x25t
        0x20t
        0x27t
        0x22t
        0x16t
        0x3ct
        0x3bt
        0x25t
        0x76t
        0x79t
        0x48t
        0x7bt
        0x78t
        0x70t
        0x78t
        0x48t
        0x63t
        0x6et
        0x67t
        0x72t
        0x53t
        0x51t
        0x53t
        0x58t
        0x55t
        0x6ft
        0x51t
        0x43t
        0x43t
        0x55t
        0x44t
        0x43t
        0x5bt
        0x59t
        0x4at
        0x57t
        0x4dt
        0x4bt
        0x5dt
        0x54t
        0x27t
        0x2bt
        0x29t
        0x6at
        0x22t
        0x25t
        0x27t
        0x21t
        0x26t
        0x2bt
        0x2bt
        0x2ft
        0x6at
        0x25t
        0x20t
        0x37t
        0x6at
        0x2dt
        0x2at
        0x30t
        0x21t
        0x36t
        0x37t
        0x30t
        0x2dt
        0x30t
        0x2dt
        0x25t
        0x28t
        0x6at
        0x27t
        0x28t
        0x2dt
        0x27t
        0x2ft
        0x21t
        0x20t
        0x0t
        0xct
        0xet
        0x4dt
        0x5t
        0x2t
        0x0t
        0x6t
        0x1t
        0xct
        0xct
        0x8t
        0x4dt
        0x2t
        0x7t
        0x10t
        0x4dt
        0xat
        0xdt
        0x17t
        0x6t
        0x11t
        0x10t
        0x17t
        0xat
        0x17t
        0xat
        0x2t
        0xft
        0x4dt
        0x5t
        0xat
        0xdt
        0xat
        0x10t
        0xbt
        0x3ct
        0x2t
        0x0t
        0x17t
        0xat
        0x15t
        0xat
        0x17t
        0x1at
        0x22t
        0x35t
        0xet
        0x19t
        0x6t
        0x35t
        0x2t
        0x3t
        0xet
        0xft
        0x35t
        0x4t
        0xbt
        0x1ct
        0x3t
        0xdt
        0xbt
        0x1et
        0x3t
        0x5t
        0x4t
        0x35t
        0xft
        0x4t
        0xbt
        0x8t
        0x6t
        0xft
        0xet
        0x61t
        0x76t
        0x69t
        0x5at
        0x6dt
        0x76t
        0x5at
        0x60t
        0x6bt
        0x64t
        0x67t
        0x69t
        0x60t
        0x61t
        0x56t
        0x41t
        0x5et
        0x6dt
        0x5at
        0x4bt
        0x50t
        0x40t
        0x5bt
        0x56t
        0x6dt
        0x57t
        0x5ct
        0x53t
        0x50t
        0x5et
        0x57t
        0x56t
        0x23t
        0x3et
        0x29t
        0x26t
        0x2at
        0x2et
        0x24t
        0x18t
        0x34t
        0x23t
        0x2ct
        0x18t
        0x2bt
        0x26t
        0x3et
        0x22t
        0x35t
        0x18t
        0x2ft
        0x33t
        0x2at
        0x2bt
        0x18t
        0x32t
        0x35t
        0x2bt
        0x51t
        0x5at
        0x57t
        0x46t
        0x4dt
        0x44t
        0x40t
        0x51t
        0x50t
        0x6bt
        0x57t
        0x44t
        0x59t
        0xat
        0x0t
        0xct
        0xdt
        0x2dt
        0x2at
        0x30t
        0x21t
        0x36t
        0x37t
        0x30t
        0x2dt
        0x30t
        0x2dt
        0x25t
        0x28t
        0x5et
        0x53t
        0x5ct
        0x56t
        0x41t
        0x51t
        0x53t
        0x42t
        0x57t
        0x4et
        0x43t
        0x5bt
        0x4dt
        0x57t
        0x56t
        0x4bt
        0x44t
        0x51t
        0x4ct
        0x53t
        0x40t
        0x6ct
        0x73t
        0x6et
        0x68t
        0x6et
        0x7dt
        0x75t
        0x68t
        0x32t
        0x25t
        0x31t
        0x35t
        0x25t
        0x33t
        0x34t
        0x1ft
        0x29t
        0x24t
        0x3at
        0x2dt
        0x3ft
        0x29t
        0x3at
        0x2ct
        0x2dt
        0x2ct
        0x17t
        0x3et
        0x21t
        0x2ct
        0x2dt
        0x27t
        0x70t
        0x6dt
        0x70t
        0x68t
        0x61t
        0x19t
        0x1et
        0x0t
        0x10t
        0xft
        0x3t
        0x11t
        0x7t
        0x4t
        0xft
        0xat
        0xft
        0x12t
        0x1ft
        0x39t
        0x5t
        0xet
        0x3t
        0x5t
        0xdt
        0x39t
        0xft
        0x8t
        0xft
        0x12t
        0xft
        0x7t
        0xat
        0x39t
        0x2t
        0x3t
        0xat
        0x7t
        0x1ft
        0x6ct
        0x73t
        0x7ft
        0x6dt
        0x7bt
        0x78t
        0x73t
        0x76t
        0x73t
        0x6et
        0x63t
        0x45t
        0x79t
        0x72t
        0x7ft
        0x79t
        0x71t
        0x45t
        0x73t
        0x74t
        0x6et
        0x7ft
        0x68t
        0x6ct
        0x7bt
        0x76t
    .end array-data
.end method

.method private A03(I)V
    .locals 0

    .line 2754
    iput p1, p0, Lcom/facebook/ads/redexgen/X/16;->A00:I

    .line 2755
    return-void
.end method

.method private A04(I)V
    .locals 0

    .line 2756
    iput p1, p0, Lcom/facebook/ads/redexgen/X/16;->A02:I

    .line 2757
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/17;)V
    .locals 0

    .line 2758
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A04:Lcom/facebook/ads/redexgen/X/17;

    .line 2759
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/1P;)V
    .locals 0

    .line 2760
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A05:Lcom/facebook/ads/redexgen/X/1P;

    .line 2761
    return-void
.end method

.method private final A07(Lcom/facebook/ads/redexgen/X/1S;)V
    .locals 0

    .line 2762
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A06:Lcom/facebook/ads/redexgen/X/1S;

    .line 2763
    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/1Z;)V
    .locals 0

    .line 2764
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A07:Lcom/facebook/ads/redexgen/X/1Z;

    .line 2765
    return-void
.end method

.method private A09(Ljava/lang/String;)V
    .locals 0

    .line 2766
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A09:Ljava/lang/String;

    .line 2767
    return-void
.end method

.method private A0A(Ljava/lang/String;)V
    .locals 0

    .line 2768
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A0E:Ljava/lang/String;

    .line 2769
    return-void
.end method

.method private final A0B(Ljava/lang/String;)V
    .locals 0

    .line 2770
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A08:Ljava/lang/String;

    .line 2771
    return-void
.end method

.method private A0C(Lorg/json/JSONObject;)V
    .locals 1

    .line 2772
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0D:Ljava/lang/String;

    .line 2773
    return-void
.end method


# virtual methods
.method public final A0D()I
    .locals 1

    .line 2774
    iget v0, p0, Lcom/facebook/ads/redexgen/X/16;->A00:I

    return v0
.end method

.method public final A0E()I
    .locals 1

    .line 2775
    iget v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:I

    return v0
.end method

.method public final A0F()I
    .locals 1

    .line 2776
    iget v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0L:I

    return v0
.end method

.method public abstract A0G()I
.end method

.method public abstract A0H()I
.end method

.method public final A0I()Lcom/facebook/ads/RewardData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A03:Lcom/facebook/ads/RewardData;

    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/17;
    .locals 1

    .line 2778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A04:Lcom/facebook/ads/redexgen/X/17;

    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/19;
    .locals 2

    .line 2779
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/16;->A0M:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/19;

    return-object v0
.end method

.method public final A0L(I)Lcom/facebook/ads/redexgen/X/19;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2780
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 2781
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 2782
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0M:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/19;

    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/1P;
    .locals 1

    .line 2783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A05:Lcom/facebook/ads/redexgen/X/1P;

    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/1S;
    .locals 1

    .line 2784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A06:Lcom/facebook/ads/redexgen/X/1S;

    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/1Z;
    .locals 1

    .line 2785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A07:Lcom/facebook/ads/redexgen/X/1Z;

    return-object v0
.end method

.method public final A0P()Ljava/lang/String;
    .locals 6

    .line 2786
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/16;->A0C:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v0, -0x514cfef6

    const/4 v5, 0x2

    const/4 v4, 0x1

    if-eq v1, v0, :cond_3

    const v0, -0x3ebdafe9

    if-eq v1, v0, :cond_2

    const v0, 0x240b672c

    if-eq v1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v5, :cond_4

    .line 2787
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2788
    :cond_1
    const/16 v2, 0xed

    const/16 v1, 0xc

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, 0x108

    const/4 v1, 0x6

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/16 v2, 0x120

    const/16 v1, 0xe

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A0P:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A0P:[Ljava/lang/String;

    const-string v1, "Jd5WF9li"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2789
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pl;->A03:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pl;->A02()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2790
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pm;->A04:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pm;->A02()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2791
    :cond_6
    const/16 v2, 0x33

    const/16 v1, 0x25

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0Q()Ljava/lang/String;
    .locals 1

    .line 2792
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A08:Ljava/lang/String;

    return-object v0
.end method

.method public final A0R()Ljava/lang/String;
    .locals 1

    .line 2793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A09:Ljava/lang/String;

    return-object v0
.end method

.method public final A0S()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0A:Ljava/lang/String;

    return-object v0
.end method

.method public final A0T()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0B:Ljava/lang/String;

    return-object v0
.end method

.method public final A0U()Ljava/lang/String;
    .locals 1

    .line 2796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0C:Ljava/lang/String;

    return-object v0
.end method

.method public final A0V()Ljava/lang/String;
    .locals 1

    .line 2797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0E:Ljava/lang/String;

    return-object v0
.end method

.method public final A0W()Ljava/lang/String;
    .locals 1

    .line 2798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0F:Ljava/lang/String;

    return-object v0
.end method

.method public final A0X()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/19;",
            ">;"
        }
    .end annotation

    .line 2799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0M:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A0Y()Lorg/json/JSONObject;
    .locals 2

    .line 2800
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/16;->A0D:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2801
    .local p0, "e":Lorg/json/JSONException;
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public final A0Z(I)V
    .locals 0

    .line 2802
    iput p1, p0, Lcom/facebook/ads/redexgen/X/16;->A01:I

    .line 2803
    return-void
.end method

.method public final A0a(Lcom/facebook/ads/RewardData;)V
    .locals 0

    .line 2804
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A03:Lcom/facebook/ads/RewardData;

    .line 2805
    return-void
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/MU;)V
    .locals 8

    .line 2806
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/16;->A0U()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v0, -0x514cfef6

    const/4 v3, 0x1

    if-eq v1, v0, :cond_4

    const v0, 0x240b672c

    if-eq v1, v0, :cond_3

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_2

    .line 2807
    :goto_1
    return-void

    .line 2808
    :cond_1
    const/16 v2, 0x58

    const/16 v1, 0x2d

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/MU;->A3q(Ljava/lang/String;)V

    .line 2809
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pm;->A08:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pm;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/MU;->A3q(Ljava/lang/String;)V

    goto :goto_1

    .line 2810
    :cond_3
    const/16 v7, 0xed

    const/16 v6, 0xc

    const/16 v5, 0x78

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A0P:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A0P:[Ljava/lang/String;

    const-string v1, "ynfghRupyY8lJ5WDqUPqAC0JO3E4ojqs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "OEwRxUcpVPGJQFz3LRrAkRkf0LWdVsmf"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v7, v6, v5}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/16 v2, 0x120

    const/16 v1, 0xe

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0c(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2811
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A0B:Ljava/lang/String;

    .line 2812
    return-void
.end method

.method public final A0d(Ljava/lang/String;)V
    .locals 0

    .line 2813
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A0C:Ljava/lang/String;

    .line 2814
    return-void
.end method

.method public final A0e(Ljava/lang/String;)V
    .locals 0

    .line 2815
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A0F:Ljava/lang/String;

    .line 2816
    return-void
.end method

.method public final A0f(Lorg/json/JSONObject;)V
    .locals 7

    .line 2817
    const/16 v2, 0x1f

    const/16 v1, 0xc

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/16;->A0N:Lorg/json/JSONObject;

    .line 2818
    new-instance v3, Lcom/facebook/ads/redexgen/X/1R;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/1R;-><init>()V

    .line 2819
    const/16 v2, 0x12e

    const/4 v1, 0x5

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/1R;->A06(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v6

    .line 2820
    const/16 v2, 0xe9

    const/4 v1, 0x4

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_0

    .line 2821
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/16 v2, 0x133

    const/4 v1, 0x3

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2822
    :goto_0
    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/1R;->A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v4

    .line 2823
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/1R;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v1

    .line 2824
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1T;->A03(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v0

    .line 2825
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1R;->A08()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    .line 2826
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A07(Lcom/facebook/ads/redexgen/X/1S;)V

    .line 2827
    const/16 v2, 0x102

    const/4 v1, 0x6

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2828
    .local p0, "layoutObject":Lorg/json/JSONObject;
    const/4 v6, 0x0

    if-eqz v5, :cond_2

    const/16 v2, 0x10e

    const/16 v1, 0x8

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/16;->A0P:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 2829
    :cond_0
    move-object v0, v3

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A0P:[Ljava/lang/String;

    const-string v1, "L9OC0yGJthGch16tOTqUcqcE9MnsMaz6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "n6CgIEssquLp46jPM2UWfBhL1rINMjIc"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_1

    .line 2830
    :cond_2
    move-object v0, v6

    .line 2831
    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1I;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v4

    .line 2832
    if-eqz v5, :cond_3

    const/16 v2, 0xf9

    const/16 v1, 0x9

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2833
    :cond_3
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/1I;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/17;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/17;-><init>(Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/1I;)V

    .line 2834
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A05(Lcom/facebook/ads/redexgen/X/17;)V

    .line 2835
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1T;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1Z;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A08(Lcom/facebook/ads/redexgen/X/1Z;)V

    .line 2836
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1T;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1P;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A06(Lcom/facebook/ads/redexgen/X/1P;)V

    .line 2837
    const/16 v2, 0x85

    const/4 v1, 0x2

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A0B(Ljava/lang/String;)V

    .line 2838
    const/16 v2, 0x116

    const/16 v1, 0xa

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A0A(Ljava/lang/String;)V

    .line 2839
    const/16 v2, 0xc2

    const/16 v1, 0x1a

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A09(Ljava/lang/String;)V

    .line 2840
    const/16 v2, 0xa2

    const/16 v1, 0xe

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0H:Z

    .line 2841
    const/16 v2, 0xb0

    const/16 v1, 0x12

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0I:Z

    .line 2842
    const/4 v3, 0x1

    .line 2843
    const/16 v2, 0x87

    const/16 v1, 0x1b

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0G:Z

    .line 2844
    const/4 v3, 0x0

    const/16 v2, 0x13

    const/16 v1, 0xc

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A03(I)V

    .line 2845
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/16;->A0C(Lorg/json/JSONObject;)V

    .line 2846
    const/16 v2, 0x136

    const/16 v1, 0x1f

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 2847
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A04(I)V

    .line 2848
    const/16 v3, 0x3e8

    .line 2849
    const/16 v2, 0x155

    const/16 v1, 0x1a

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 2850
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A0Z(I)V

    .line 2851
    const/16 v2, 0xdc

    const/16 v1, 0xd

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0A:Ljava/lang/String;

    .line 2852
    return-void
.end method

.method public final A0g(Z)V
    .locals 0

    .line 2853
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/16;->A0J:Z

    .line 2854
    return-void
.end method

.method public final A0h(Z)V
    .locals 0

    .line 2855
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/16;->A0K:Z

    .line 2856
    return-void
.end method

.method public final A0i()Z
    .locals 1

    .line 2857
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0H:Z

    return v0
.end method

.method public final A0j()Z
    .locals 1

    .line 2858
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0I:Z

    return v0
.end method

.method public final A0k()Z
    .locals 1

    .line 2859
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0G:Z

    return v0
.end method

.method public final A0l()Z
    .locals 4

    .line 2860
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_1

    .line 2861
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/16;->A0P:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x37

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A0P:[Ljava/lang/String;

    const-string v1, "Ho9CziPGzu0GN5git9gLyxI3YsNmgO7"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2862
    :goto_0
    return v0
.end method

.method public final A0m()Z
    .locals 1

    .line 2863
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0J:Z

    return v0
.end method

.method public final A0n()Z
    .locals 1

    .line 2864
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0K:Z

    return v0
.end method
