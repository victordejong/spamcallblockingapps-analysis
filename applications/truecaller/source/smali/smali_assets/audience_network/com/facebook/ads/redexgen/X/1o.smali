.class public final Lcom/facebook/ads/redexgen/X/1o;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/RewardData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Jl;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/K8;

.field public final A07:Lcom/facebook/ads/redexgen/X/K9;

.field public final A08:Ljava/lang/String;

.field public final A09:Ljava/util/EnumSet;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field public final A0A:I

.field public final A0B:Lcom/facebook/ads/internal/protocol/AdPlacementType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "erlsxJKV5RGKo0fyhsjft4C8myFkBTFD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xxCOSS58nTJL4g358MAx2boWparhVsnt"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "50HA7KO7TX73z1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kwTSvTyvqMkAeNvnsZNufhK8xoNKpC5A"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CvvJJ5wn5WoPjh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PJeUG8MSArG13FCqdbuWaTyquTMQa3YW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KbVXHt7uQSAfPtAdYM2eE220TAgmiqZ3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QWgxf2msfb1fWKXeTjGnwNJbVHOPLzwf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1o;->A0C:[Ljava/lang/String;

    .line 4562
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K9;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/K8;I)V
    .locals 7

    .line 4563
    sget-object v0, Lcom/facebook/ads/CacheFlag;->NONE:Lcom/facebook/ads/CacheFlag;

    .line 4564
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 4565
    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    move-object v3, p3

    move v5, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/1o;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K9;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/K8;ILjava/util/EnumSet;)V

    .line 4566
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K9;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/K8;ILjava/util/EnumSet;)V
    .locals 1
    .param p6    # Ljava/util/EnumSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/K9;",
            "Lcom/facebook/ads/internal/protocol/AdPlacementType;",
            "Lcom/facebook/ads/redexgen/X/K8;",
            "I",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .line 4567
    .local v0, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4568
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1o;->A08:Ljava/lang/String;

    .line 4569
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/1o;->A0B:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 4570
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/1o;->A06:Lcom/facebook/ads/redexgen/X/K8;

    .line 4571
    iput p5, p0, Lcom/facebook/ads/redexgen/X/1o;->A0A:I

    .line 4572
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/1o;->A09:Ljava/util/EnumSet;

    .line 4573
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1o;->A07:Lcom/facebook/ads/redexgen/X/K9;

    .line 4574
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1o;->A00:I

    .line 4575
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 2

    .line 4576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1o;->A0B:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-eqz v0, :cond_0

    .line 4577
    return-object v0

    .line 4578
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1o;->A06:Lcom/facebook/ads/redexgen/X/K8;

    if-nez v1, :cond_1

    .line 4579
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0

    .line 4580
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/K8;->A07:Lcom/facebook/ads/redexgen/X/K8;

    if-ne v1, v0, :cond_2

    .line 4581
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0

    .line 4582
    :cond_2
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/KE;Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/redexgen/X/KU;
    .locals 16
    .param p3    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4583
    move-object/from16 v2, p0

    new-instance v3, Lcom/facebook/ads/redexgen/X/KU;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/1o;->A08:Ljava/lang/String;

    .line 4584
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1o;->A06:Lcom/facebook/ads/redexgen/X/K8;

    const/4 v15, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/K8;->A02()I

    move-result v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1o;->A06:Lcom/facebook/ads/redexgen/X/K8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/K8;->A03()I

    move-result v0

    new-instance v6, Lcom/facebook/ads/redexgen/X/Lj;

    invoke-direct {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;-><init>(II)V

    :goto_0
    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/1o;->A07:Lcom/facebook/ads/redexgen/X/K9;

    .line 4585
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    if-eq v1, v0, :cond_1

    .line 4586
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdSettings$TestAdType;->getAdTypeString()Ljava/lang/String;

    move-result-object v8

    .line 4587
    :goto_1
    iget v9, v2, Lcom/facebook/ads/redexgen/X/1o;->A0A:I

    .line 4588
    move-object/from16 v4, p1

    invoke-static {v4}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v10

    .line 4589
    invoke-static {}, Lcom/facebook/ads/AdSettings;->isMixedAudience()Z

    move-result v11

    .line 4590
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/JD;->A0H(Landroid/content/Context;)I

    move-result v0

    .line 4591
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lp;->A01(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v2, Lcom/facebook/ads/redexgen/X/1o;->A03:Ljava/lang/String;

    .line 4592
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/AdExperienceType;->getAdExperienceType()Ljava/lang/String;

    move-result-object v15

    :cond_0
    move-object/from16 v12, p2

    invoke-direct/range {v3 .. v15}, Lcom/facebook/ads/redexgen/X/KU;-><init>(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/K9;Ljava/lang/String;IZZLcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/1o;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4593
    :cond_1
    move-object v8, v15

    goto :goto_1

    .line 4594
    :cond_2
    move-object v6, v15

    goto :goto_0

    .line 4595
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/1o;->A0C:[Ljava/lang/String;

    const-string v1, "1YKhexqCB6oyofjWexJTrFb8PReFz0lW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "PDYLpd11u8hpbIrKg4rw9QV8MRNrtAlX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3
.end method

.method public final A02(I)V
    .locals 0

    .line 4596
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1o;->A00:I

    .line 4597
    return-void
.end method

.method public final A03(Lcom/facebook/ads/RewardData;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/RewardData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4598
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1o;->A01:Lcom/facebook/ads/RewardData;

    .line 4599
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/Jl;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Jl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4600
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1o;->A02:Lcom/facebook/ads/redexgen/X/Jl;

    .line 4601
    return-void
.end method

.method public final A05(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4602
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1o;->A03:Ljava/lang/String;

    .line 4603
    return-void
.end method

.method public final A06(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4604
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1o;->A04:Ljava/lang/String;

    .line 4605
    return-void
.end method

.method public final A07(Z)V
    .locals 0

    .line 4606
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/1o;->A05:Z

    .line 4607
    return-void
.end method
