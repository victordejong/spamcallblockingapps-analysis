.class public Lcom/facebook/ads/redexgen/X/Ms;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Pd;,
        Lcom/facebook/ads/redexgen/X/Pe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/Lq<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/c0;

.field public final A06:Lcom/facebook/ads/redexgen/X/XT;

.field public final A07:Lcom/facebook/ads/redexgen/X/JT;

.field public final A08:Lcom/facebook/ads/redexgen/X/Pd;

.field public final A09:Lcom/facebook/ads/redexgen/X/Pi;

.field public final A0A:Ljava/lang/Object;

.field public final A0B:Ljava/lang/String;

.field public final A0C:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    const-string v0, "nkjKj1MvUJoP2SJPYcgbaBjYPy4EsWOF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UEaFlSlVJfgDxU2HAGuUlGjRHCZL3UC5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HKOtxcgqDUvcB7Zt0rEFxuoEqCvYEtNO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rowCAjgGiKT2zEBSq3xmGSL0Kf3UrlyG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EJAz0i2eNdRPLBpGYGjYpv17GQTuD6uU"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hVbT72qq2pp8XHiEw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RwROuq5e2nKVw7hJaeybV0hHAIDx5UQQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "neuOh54FNoDLqHEFUxNtW4G7fWRiy4GW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ms;->A0E:[Ljava/lang/String;

    .line 44903
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ms;->A0O()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Pd;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XT;",
            "Lcom/facebook/ads/redexgen/X/JT;",
            "Lcom/facebook/ads/redexgen/X/Pd;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/27;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 44904
    .local v4, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v2, p2

    move v6, p6

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/Ms;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Pd;Ljava/util/List;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 44905
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Pd;Ljava/util/List;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 9
    .param p7    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XT;",
            "Lcom/facebook/ads/redexgen/X/JT;",
            "Lcom/facebook/ads/redexgen/X/Pd;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/27;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 44906
    .local v4, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v4, p4

    move v6, p6

    move-object v1, p1

    move-object/from16 v7, p7

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Ms;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Pd;Ljava/util/List;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/util/Map;)V

    .line 44907
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Pd;Ljava/util/List;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/util/Map;)V
    .locals 19
    .param p7    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XT;",
            "Lcom/facebook/ads/redexgen/X/JT;",
            "Lcom/facebook/ads/redexgen/X/Pd;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/27;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44908
    .local v8, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    .local v12, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44909
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Ms;->A0A:Ljava/lang/Object;

    .line 44910
    const/4 v1, 0x0

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Ms;->A01:I

    .line 44911
    iput v1, v0, Lcom/facebook/ads/redexgen/X/Ms;->A00:I

    .line 44912
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Ms;->A02:Ljava/lang/String;

    .line 44913
    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Ms;->A03:Ljava/lang/String;

    .line 44914
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Ms;->A06:Lcom/facebook/ads/redexgen/X/XT;

    .line 44915
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/Ms;->A07:Lcom/facebook/ads/redexgen/X/JT;

    .line 44916
    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/Ms;->A08:Lcom/facebook/ads/redexgen/X/Pd;

    .line 44917
    move-object/from16 v3, p5

    iput-object v3, v0, Lcom/facebook/ads/redexgen/X/Ms;->A0B:Ljava/lang/String;

    .line 44918
    move-object/from16 v3, p8

    iput-object v3, v0, Lcom/facebook/ads/redexgen/X/Ms;->A0C:Ljava/util/Map;

    .line 44919
    move/from16 v3, p6

    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/Ms;->A04:Z

    .line 44920
    new-instance v4, Lcom/facebook/ads/redexgen/X/N4;

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object v3, v4

    invoke-direct/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/N4;-><init>(Lcom/facebook/ads/redexgen/X/Ms;DDDZ)V

    move-object/from16 v4, p4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44921
    new-instance v10, Lcom/facebook/ads/redexgen/X/Mt;

    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide v16, 0x3f50624dd2f1a9fcL    # 0.001

    const/16 v18, 0x0

    move-object v3, v10

    move-object v11, v5

    move-wide v14, v8

    invoke-direct/range {v10 .. v18}, Lcom/facebook/ads/redexgen/X/Mt;-><init>(Lcom/facebook/ads/redexgen/X/Ms;DDDZ)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44922
    move-object/from16 v5, p7

    if-eqz v5, :cond_0

    .line 44923
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Pd;->getView()Landroid/view/View;

    move-result-object v7

    .line 44924
    const/4 v6, 0x6

    const/16 v3, 0x10

    const/16 v2, 0x1d

    invoke-static {v6, v3, v2}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/c0;

    invoke-direct {v2, v7, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/c0;-><init>(Landroid/view/View;Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/Ms;->A05:Lcom/facebook/ads/redexgen/X/c0;

    .line 44925
    const/16 v3, 0x39

    const/16 v2, 0x12

    const/4 v1, 0x2

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Ms;->A01:I

    .line 44926
    const/16 v3, 0x27

    const/16 v2, 0x12

    const/16 v1, 0x2c

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Ms;->A00:I

    .line 44927
    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/Pi;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Pi;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Ms;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Ms;->A09:Lcom/facebook/ads/redexgen/X/Pi;

    .line 44928
    return-void

    .line 44929
    :cond_0
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Pd;->getView()Landroid/view/View;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/c0;

    invoke-direct {v2, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/c0;-><init>(Landroid/view/View;Ljava/util/List;Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/Ms;->A05:Lcom/facebook/ads/redexgen/X/c0;

    goto :goto_0
.end method

.method private final A0E()F
    .locals 2

    .line 44930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A06:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M2;->A00(Landroid/content/Context;)F

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A08:Lcom/facebook/ads/redexgen/X/Pd;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Pd;->getVolume()F

    move-result v0

    mul-float/2addr v1, v0

    return v1
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/Ms;)Lcom/facebook/ads/redexgen/X/JT;
    .locals 0

    .line 44931
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A07:Lcom/facebook/ads/redexgen/X/JT;

    return-object p0
.end method

.method public static A0G(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ms;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x30

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/Ms;)Ljava/lang/String;
    .locals 0

    .line 44932
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A0B:Ljava/lang/String;

    return-object p0
.end method

.method private A0I(I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44933
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 44934
    .local p0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A08:Lcom/facebook/ads/redexgen/X/Pd;

    .line 44935
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Pd;->getVideoStartReason()Lcom/facebook/ads/redexgen/X/Pj;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pj;->A03:Lcom/facebook/ads/redexgen/X/Pj;

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A08:Lcom/facebook/ads/redexgen/X/Pd;

    .line 44936
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Pd;->A8O()Z

    move-result v0

    .line 44937
    xor-int/2addr v0, v2

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/M2;->A03(Ljava/util/Map;ZZ)V

    .line 44938
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Ms;->A0R(Ljava/util/Map;)V

    .line 44939
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Ms;->A0Q(Ljava/util/Map;)V

    .line 44940
    invoke-direct {p0, v3, p1}, Lcom/facebook/ads/redexgen/X/Ms;->A0T(Ljava/util/Map;I)V

    .line 44941
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Ms;->A0S(Ljava/util/Map;)V

    .line 44942
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Ms;->A0P(Ljava/util/HashMap;)V

    .line 44943
    return-object v3

    .line 44944
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/Pe;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Pe;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A08:Lcom/facebook/ads/redexgen/X/Pd;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Pd;->getCurrentPositionInMillis()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0K(Lcom/facebook/ads/redexgen/X/Pe;I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/Pe;I)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Pe;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44946
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Ms;->A0I(I)Ljava/util/Map;

    move-result-object v4

    .line 44947
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Pe;->A00:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44948
    return-object v4
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/Ms;Lcom/facebook/ads/redexgen/X/Pe;)Ljava/util/Map;
    .locals 0

    .line 44949
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ms;->A0J(Lcom/facebook/ads/redexgen/X/Pe;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private A0M()V
    .locals 3

    .line 44950
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ms;->A07:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ms;->A0B:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pe;->A04:Lcom/facebook/ads/redexgen/X/Pe;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0J(Lcom/facebook/ads/redexgen/X/Pe;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JT;->A9H(Ljava/lang/String;Ljava/util/Map;)V

    .line 44951
    return-void
.end method

.method private A0N()V
    .locals 3

    .line 44952
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ms;->A07:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ms;->A0B:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pe;->A0A:Lcom/facebook/ads/redexgen/X/Pe;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0J(Lcom/facebook/ads/redexgen/X/Pe;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JT;->A9H(Ljava/lang/String;Ljava/util/Map;)V

    .line 44953
    return-void
.end method

.method public static A0O()V
    .locals 1

    const/16 v0, 0xa2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ms;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0xbt
        0xdt
        0x1et
        0x13t
        0x19t
        0x18t
        -0x52t
        -0x4ft
        -0x62t
        -0x3et
        -0x52t
        -0x47t
        -0x4at
        -0x3ft
        -0x3at
        -0x66t
        -0x52t
        -0x45t
        -0x52t
        -0x4ct
        -0x4et
        -0x41t
        -0x12t
        0x1t
        -0xat
        -0x6t
        -0xet
        -0x14t
        -0x6t
        0x0t
        -0x60t
        -0x4dt
        -0x56t
        -0x55t
        -0x59t
        -0x64t
        -0x4ct
        -0x60t
        -0x53t
        -0x38t
        -0x43t
        -0x31t
        -0x30t
        -0x62t
        -0x35t
        -0x2ft
        -0x36t
        -0x40t
        -0x43t
        -0x32t
        -0x2bt
        -0x50t
        -0x3bt
        -0x37t
        -0x3ft
        -0x57t
        -0x51t
        -0x62t
        -0x6dt
        -0x5bt
        -0x5at
        -0x7et
        -0x5ct
        -0x5ft
        -0x67t
        -0x5ct
        -0x69t
        -0x5bt
        -0x5bt
        -0x7at
        -0x65t
        -0x61t
        -0x69t
        0x7ft
        -0x7bt
        -0x15t
        -0x1ft
        -0x21t
        -0xet
        -0x23t
        -0x15t
        -0xft
        -0x17t
        -0x21t
        -0xet
        -0x10t
        -0x25t
        -0x17t
        -0x11t
        0x14t
        0xct
        -0x21t
        -0x25t
        -0x2dt
        -0x2bt
        -0x38t
        -0x2dt
        0x1at
        0x1et
        0xdt
        0x11t
        0x6t
        0xat
        0x2t
        0x1bt
        0x22t
        -0x57t
        -0x62t
        -0x5et
        -0x66t
        0x25t
        0x1bt
        0x10t
        -0x10t
        -0x1at
        -0x19t
        0x13t
        0x9t
        0xat
        -0x2t
        0x15t
        -0x40t
        -0x46t
        -0x4et
        0xat
        0x4t
        0xbt
        0x5t
        0x3t
        -0x8t
        -0x4t
        -0xct
        -0x12t
        -0x4t
        0x2t
        -0x40t
        -0x3ft
        -0x57t
        -0x52t
        0x0t
        0x1t
        -0x17t
        -0x4t
        -0x3t
        -0x8t
        -0x9t
        -0x8t
        -0x1et
        0x5t
        0x6t
        -0x4t
        -0x4at
        -0x49t
        -0x53t
        -0x5ft
        -0x48t
        -0x15t
        -0x23t
        -0x1et
        -0x28t
        -0x1dt
        -0x15t
    .end array-data
.end method

.method private A0P(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44954
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A0C:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 44955
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 44956
    :cond_0
    return-void
.end method

.method private A0Q(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44957
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A05:Lcom/facebook/ads/redexgen/X/c0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c0;->A03()Lcom/facebook/ads/redexgen/X/29;

    move-result-object v7

    .line 44958
    .local p0, "stats":Lcom/facebook/ads/redexgen/X/29;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/29;->A00()Lcom/facebook/ads/redexgen/X/28;

    move-result-object v4

    .line 44959
    .local p1, "viewability":Lcom/facebook/ads/redexgen/X/28;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/28;->A00()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x91

    const/4 v1, 0x3

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44960
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/28;->A05()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x94

    const/4 v1, 0x3

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44961
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/28;->A02()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x97

    const/4 v1, 0x5

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44962
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/28;->A01()D

    move-result-wide v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x7f

    const/16 v1, 0x8

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44963
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/28;->A03()D

    move-result-wide v0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x52

    const/4 v1, 0x7

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44964
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ms;->A02:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 44965
    const/16 v2, 0x87

    const/4 v1, 0x4

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44966
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ms;->A03:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 44967
    const/16 v2, 0x8b

    const/4 v1, 0x6

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44968
    :cond_1
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/29;->A01()Lcom/facebook/ads/redexgen/X/28;

    move-result-object v4

    .line 44969
    .local v0, "volume":Lcom/facebook/ads/redexgen/X/28;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/28;->A00()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x6e

    const/4 v1, 0x3

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44970
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/28;->A05()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x71

    const/4 v1, 0x3

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44971
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/28;->A02()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x74

    const/4 v1, 0x5

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44972
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/28;->A01()D

    move-result-wide v0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x16

    const/16 v1, 0x8

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44973
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/28;->A03()D

    move-result-wide v0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x4b

    const/4 v1, 0x7

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44974
    return-void
.end method

.method private A0R(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44975
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A08:Lcom/facebook/ads/redexgen/X/Pd;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Pd;->A8L()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1e

    const/16 v1, 0x9

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A08:Lcom/facebook/ads/redexgen/X/Pd;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Pd;->getInitialBufferTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5d

    const/4 v1, 0x4

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44977
    return-void
.end method

.method private A0S(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44978
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 44979
    .local p0, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A08:Lcom/facebook/ads/redexgen/X/Pd;

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/Pd;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 44980
    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x61

    const/4 v1, 0x2

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44981
    iget v0, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5b

    const/4 v1, 0x2

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A08:Lcom/facebook/ads/redexgen/X/Pd;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Pd;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x59

    const/4 v1, 0x2

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A08:Lcom/facebook/ads/redexgen/X/Pd;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Pd;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x68

    const/4 v1, 0x2

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44984
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ms;->A06:Lcom/facebook/ads/redexgen/X/XT;

    const/16 v2, 0x9c

    const/4 v1, 0x6

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/XT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 44985
    .local p1, "wm":Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 44986
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 44987
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x79

    const/4 v1, 0x3

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44988
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x7c

    const/4 v1, 0x3

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44989
    return-void
.end method

.method private A0T(Ljava/util/Map;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 44990
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A00:I

    int-to-float v0, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x63

    const/4 v1, 0x5

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44991
    int-to-float v0, p2

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x6a

    const/4 v1, 0x4

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44992
    return-void
.end method


# virtual methods
.method public final A0U()I
    .locals 1

    .line 44993
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A01:I

    return v0
.end method

.method public final A0V()Landroid/os/Bundle;
    .locals 5

    .line 44994
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ms;->A0U()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ms;->A0U()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0e(II)V

    .line 44995
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 44996
    .local p0, "bundle":Landroid/os/Bundle;
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ms;->A01:I

    const/16 v2, 0x39

    const/16 v1, 0x12

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44997
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ms;->A00:I

    const/16 v2, 0x27

    const/16 v1, 0x12

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A05:Lcom/facebook/ads/redexgen/X/c0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c0;->A02()Landroid/os/Bundle;

    move-result-object v3

    const/4 v2, 0x6

    const/16 v1, 0x10

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 44999
    return-object v4
.end method

.method public final A0W()V
    .locals 3

    .line 45000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A05:Lcom/facebook/ads/redexgen/X/c0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c0;->A04()V

    .line 45001
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ms;->A07:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ms;->A0B:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pe;->A05:Lcom/facebook/ads/redexgen/X/Pe;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0J(Lcom/facebook/ads/redexgen/X/Pe;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JT;->A9H(Ljava/lang/String;Ljava/util/Map;)V

    .line 45002
    return-void
.end method

.method public final A0X()V
    .locals 3

    .line 45003
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ms;->A07:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ms;->A0B:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pe;->A07:Lcom/facebook/ads/redexgen/X/Pe;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0J(Lcom/facebook/ads/redexgen/X/Pe;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JT;->A9H(Ljava/lang/String;Ljava/util/Map;)V

    .line 45004
    return-void
.end method

.method public final A0Y()V
    .locals 3

    .line 45005
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ms;->A07:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ms;->A0B:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pe;->A08:Lcom/facebook/ads/redexgen/X/Pe;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0J(Lcom/facebook/ads/redexgen/X/Pe;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JT;->A9H(Ljava/lang/String;Ljava/util/Map;)V

    .line 45006
    return-void
.end method

.method public final A0Z()V
    .locals 5

    .line 45007
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ms;->A0E()F

    move-result v0

    float-to-double v3, v0

    const-wide v1, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v3, v1

    if-gez v0, :cond_1

    .line 45008
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ms;->A0A:Ljava/lang/Object;

    monitor-enter v1

    .line 45009
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A04:Z

    if-eqz v0, :cond_0

    .line 45010
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ms;->A0M()V

    .line 45011
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A04:Z

    .line 45012
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 45013
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ms;->A0A:Ljava/lang/Object;

    monitor-enter v1

    .line 45014
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A04:Z

    if-nez v0, :cond_2

    .line 45015
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ms;->A0N()V

    .line 45016
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A04:Z

    .line 45017
    :cond_2
    monitor-exit v1

    .line 45018
    :goto_0
    return-void

    .line 45019
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public final A0a()V
    .locals 4

    .line 45020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A06:Lcom/facebook/ads/redexgen/X/XT;

    .line 45021
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ms;->A09:Lcom/facebook/ads/redexgen/X/Pi;

    .line 45022
    const/4 v0, 0x1

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45023
    return-void
.end method

.method public final A0b()V
    .locals 2

    .line 45024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A06:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A09:Lcom/facebook/ads/redexgen/X/Pi;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 45025
    return-void
.end method

.method public final A0c(I)V
    .locals 1

    .line 45026
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0f(IZZ)V

    .line 45027
    return-void
.end method

.method public final A0d(I)V
    .locals 2

    .line 45028
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Ms;->A0f(IZZ)V

    .line 45029
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ms;->A00:I

    .line 45030
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ms;->A01:I

    .line 45031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A05:Lcom/facebook/ads/redexgen/X/c0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c0;->A05()V

    .line 45032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A05:Lcom/facebook/ads/redexgen/X/c0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c0;->A04()V

    .line 45033
    return-void
.end method

.method public final A0e(II)V
    .locals 2

    .line 45034
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0f(IZZ)V

    .line 45035
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ms;->A00:I

    .line 45036
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ms;->A01:I

    .line 45037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A05:Lcom/facebook/ads/redexgen/X/c0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c0;->A05()V

    .line 45038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A05:Lcom/facebook/ads/redexgen/X/c0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c0;->A04()V

    .line 45039
    return-void
.end method

.method public final A0f(IZZ)V
    .locals 6

    .line 45040
    int-to-double v1, p1

    const-wide/16 v3, 0x0

    cmpg-double v0, v1, v3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A01:I

    if-ge p1, v0, :cond_1

    .line 45041
    :cond_0
    return-void

    .line 45042
    :cond_1
    if-le p1, v0, :cond_4

    .line 45043
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ms;->A05:Lcom/facebook/ads/redexgen/X/c0;

    sub-int v0, p1, v0

    int-to-float v1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    float-to-double v2, v1

    .line 45044
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ms;->A0E()F

    move-result v0

    float-to-double v0, v0

    .line 45045
    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/c0;->A06(DD)V

    .line 45046
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ms;->A01:I

    .line 45047
    if-nez p3, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A00:I

    sub-int v1, p1, v0

    const/16 v0, 0x1388

    if-lt v1, v0, :cond_4

    .line 45048
    :cond_2
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ms;->A07:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ms;->A0B:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pe;->A09:Lcom/facebook/ads/redexgen/X/Pe;

    .line 45049
    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/Ms;->A0K(Lcom/facebook/ads/redexgen/X/Pe;I)Ljava/util/Map;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ms;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_3

    .line 45050
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ms;->A0E:[Ljava/lang/String;

    const-string v1, "IXDsMs8MiMzYVjpFmNZXbOdNx8hS7U1p"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "KaqaEYbZ8TBX2kyM8fVmd1OK78kemUif"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/JT;->A9H(Ljava/lang/String;Ljava/util/Map;)V

    .line 45051
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A00:I

    .line 45052
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ms;->A05:Lcom/facebook/ads/redexgen/X/c0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c0;->A05()V

    .line 45053
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 45054
    :cond_4
    if-eqz p2, :cond_5

    .line 45055
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ms;->A07:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ms;->A0B:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pe;->A09:Lcom/facebook/ads/redexgen/X/Pe;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/Ms;->A0K(Lcom/facebook/ads/redexgen/X/Pe;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JT;->A9H(Ljava/lang/String;Ljava/util/Map;)V

    .line 45056
    :cond_5
    return-void
.end method
