.class public final Lcom/facebook/ads/redexgen/X/cB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1w;


# static fields
.field public static A0A:[B

.field public static final A0B:Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/16;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/F7;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/bN;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/Lz;

.field public A05:Z

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/XT;

.field public final A08:Lcom/facebook/ads/InterstitialAdExtendedListener;

.field public final A09:Lcom/facebook/ads/redexgen/X/1x;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 71232
    invoke-static {}, Lcom/facebook/ads/redexgen/X/cB;->A08()V

    const-class v0, Lcom/facebook/ads/redexgen/X/cB;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cB;->A0B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1x;Lcom/facebook/ads/redexgen/X/24;Ljava/lang/String;)V
    .locals 2

    .line 71233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71234
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A00:J

    .line 71235
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cB;->A09:Lcom/facebook/ads/redexgen/X/1x;

    .line 71236
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1x;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A07:Lcom/facebook/ads/redexgen/X/XT;

    .line 71237
    new-instance v0, Lcom/facebook/ads/redexgen/X/c2;

    invoke-direct {v0, p3, p2, p0}, Lcom/facebook/ads/redexgen/X/c2;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/24;Lcom/facebook/ads/redexgen/X/cB;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A08:Lcom/facebook/ads/InterstitialAdExtendedListener;

    .line 71238
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lz;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A04:Lcom/facebook/ads/redexgen/X/Lz;

    .line 71239
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/cB;)J
    .locals 1

    .line 71240
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/cB;)Lcom/facebook/ads/InterstitialAdExtendedListener;
    .locals 0

    .line 71241
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cB;->A08:Lcom/facebook/ads/InterstitialAdExtendedListener;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/cB;Lcom/facebook/ads/redexgen/X/16;)Lcom/facebook/ads/redexgen/X/16;
    .locals 0

    .line 71242
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/16;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/cB;)Lcom/facebook/ads/redexgen/X/F7;
    .locals 0

    .line 71243
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/F7;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/cB;Lcom/facebook/ads/redexgen/X/F7;)Lcom/facebook/ads/redexgen/X/F7;
    .locals 0

    .line 71244
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/F7;

    return-object p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/cB;)Lcom/facebook/ads/redexgen/X/1x;
    .locals 0

    .line 71245
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cB;->A09:Lcom/facebook/ads/redexgen/X/1x;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/cB;)Lcom/facebook/ads/redexgen/X/Lz;
    .locals 0

    .line 71246
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cB;->A04:Lcom/facebook/ads/redexgen/X/Lz;

    return-object p0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/cB;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x85

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cB;->A0A:[B

    return-void

    :array_0
    .array-data 1
        -0x3bt
        -0xet
        -0x5ct
        -0x1bt
        -0x18t
        -0x5ct
        -0x10t
        -0xdt
        -0x1bt
        -0x18t
        -0x5ct
        -0x13t
        -0x9t
        -0x5ct
        -0x1bt
        -0x10t
        -0xat
        -0x17t
        -0x1bt
        -0x18t
        -0x3t
        -0x5ct
        -0x13t
        -0xet
        -0x5ct
        -0xct
        -0xat
        -0xdt
        -0x15t
        -0xat
        -0x17t
        -0x9t
        -0x9t
        -0x4et
        -0x5ct
        -0x23t
        -0xdt
        -0x7t
        -0x5ct
        -0x9t
        -0x14t
        -0xdt
        -0x7t
        -0x10t
        -0x18t
        -0x5ct
        -0x5t
        -0x1bt
        -0x13t
        -0x8t
        -0x5ct
        -0x16t
        -0xdt
        -0xat
        -0x5ct
        -0x1bt
        -0x18t
        -0x30t
        -0xdt
        -0x1bt
        -0x18t
        -0x17t
        -0x18t
        -0x54t
        -0x53t
        -0x5ct
        -0x8t
        -0xdt
        -0x5ct
        -0x1at
        -0x17t
        -0x5ct
        -0x19t
        -0x1bt
        -0x10t
        -0x10t
        -0x17t
        -0x18t
        -0x4t
        0x21t
        0x27t
        0x18t
        0x25t
        0x26t
        0x27t
        0x1ct
        0x27t
        0x1ct
        0x14t
        0x1ft
        -0x2dt
        0x1ft
        0x22t
        0x14t
        0x17t
        -0x2dt
        0x16t
        0x14t
        0x1ft
        0x1ft
        0x18t
        0x17t
        -0x2dt
        0x2at
        0x1bt
        0x1ct
        0x1ft
        0x18t
        -0x2dt
        0x26t
        0x1bt
        0x22t
        0x2at
        0x1ct
        0x21t
        0x1at
        -0x2dt
        0x1ct
        0x21t
        0x27t
        0x18t
        0x25t
        0x26t
        0x27t
        0x1ct
        0x27t
        0x1ct
        0x14t
        0x1ft
        -0x1ft
        0xdt
        0x1ct
        0x15t
    .end array-data
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/cB;Z)Z
    .locals 0

    .line 71247
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/cB;->A06:Z

    return p1
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/cB;Z)Z
    .locals 0

    .line 71248
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/cB;->A05:Z

    return p1
.end method


# virtual methods
.method public final A0B()J
    .locals 2

    .line 71249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/F7;

    if-eqz v0, :cond_0

    .line 71250
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cS;->A0B()J

    move-result-wide v0

    return-wide v0

    .line 71251
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A0C()V
    .locals 2

    .line 71252
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/F7;

    if-eqz v1, :cond_0

    .line 71253
    new-instance v0, Lcom/facebook/ads/redexgen/X/cC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cC;-><init>(Lcom/facebook/ads/redexgen/X/cB;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A0M(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 71254
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/F7;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A0R(Z)V

    .line 71255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/F7;

    .line 71256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A06:Z

    .line 71257
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A05:Z

    .line 71258
    :cond_0
    return-void
.end method

.method public final A0D()V
    .locals 1

    .line 71259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A03:Lcom/facebook/ads/redexgen/X/bN;

    if-eqz v0, :cond_0

    .line 71260
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bN;->A02()V

    .line 71261
    :cond_0
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/internal/api/AdCompanionView;)V
    .locals 3

    .line 71262
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdCompanionView;->getAdCompanionViewApi()Lcom/facebook/ads/internal/api/AdCompanionViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/bN;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A03:Lcom/facebook/ads/redexgen/X/bN;

    .line 71263
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cB;->A07:Lcom/facebook/ads/redexgen/X/XT;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/16;

    if-eqz v1, :cond_0

    .line 71264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A03:Lcom/facebook/ads/redexgen/X/bN;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/bN;->A03(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/16;)V

    .line 71265
    :cond_0
    return-void
.end method

.method public final A0F(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 71266
    .local v0, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A00:J

    .line 71267
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A06:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/F7;

    if-eqz v0, :cond_0

    .line 71268
    sget-object v3, Lcom/facebook/ads/redexgen/X/cB;->A0B:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x4e

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71269
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A06:Z

    .line 71270
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A05:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A07:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A0f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A07:Lcom/facebook/ads/redexgen/X/XT;

    .line 71272
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A0D:I

    const/16 v2, 0x4e

    const/16 v1, 0x34

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A07(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;)V

    .line 71273
    const/16 v2, 0x82

    const/4 v1, 0x3

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 71274
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_CALLED_WHILE_SHOWING_AD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 71275
    .local p0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A07:Lcom/facebook/ads/redexgen/X/XT;

    .line 71276
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A00:J

    .line 71277
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v2

    .line 71278
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 71279
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 71280
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a(JILjava/lang/String;)V

    .line 71281
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/cB;->A08:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A09:Lcom/facebook/ads/redexgen/X/1x;

    .line 71282
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1x;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v3

    .line 71283
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v2

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 71284
    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 71285
    return-void

    .line 71286
    .end local p0    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/F7;

    if-eqz v1, :cond_2

    .line 71287
    new-instance v0, Lcom/facebook/ads/redexgen/X/cF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cF;-><init>(Lcom/facebook/ads/redexgen/X/cB;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A0M(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 71288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/F7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cS;->A0H()V

    .line 71289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/F7;

    .line 71290
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A07:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 71291
    .local p0, "metrics":Landroid/util/DisplayMetrics;
    new-instance v2, Lcom/facebook/ads/redexgen/X/1o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A09:Lcom/facebook/ads/redexgen/X/1x;

    .line 71292
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1x;->A09()Ljava/lang/String;

    move-result-object v3

    .line 71293
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/KB;->A00(Landroid/util/DisplayMetrics;)Lcom/facebook/ads/redexgen/X/K9;

    move-result-object v4

    sget-object v5, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v6, Lcom/facebook/ads/redexgen/X/K8;->A07:Lcom/facebook/ads/redexgen/X/K8;

    const/4 v7, 0x1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/1o;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K9;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/K8;ILjava/util/EnumSet;)V

    .line 71294
    .local v8, "adControllerConfig":Lcom/facebook/ads/redexgen/X/1o;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A09:Lcom/facebook/ads/redexgen/X/1x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1x;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1o;->A05(Ljava/lang/String;)V

    .line 71295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A09:Lcom/facebook/ads/redexgen/X/1x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1x;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1o;->A06(Ljava/lang/String;)V

    .line 71296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A09:Lcom/facebook/ads/redexgen/X/1x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1x;->A03()Lcom/facebook/ads/RewardData;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1o;->A03(Lcom/facebook/ads/RewardData;)V

    .line 71297
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cB;->A07:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/F7;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/F7;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1o;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/F7;

    .line 71298
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/F7;

    new-instance v0, Lcom/facebook/ads/redexgen/X/cD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cD;-><init>(Lcom/facebook/ads/redexgen/X/cB;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A0M(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 71299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/F7;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/cS;->A0P(Ljava/lang/String;)V

    .line 71300
    return-void
.end method

.method public final A0G()Z
    .locals 1

    .line 71301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/F7;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cS;->A0S()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0H()Z
    .locals 1

    .line 71302
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A06:Z

    return v0
.end method

.method public final A0I()Z
    .locals 8

    .line 71303
    sget-object v6, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    .line 71304
    .local p0, "showError":Lcom/facebook/ads/AdError;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A06:Z

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 71305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A07:Lcom/facebook/ads/redexgen/X/XT;

    .line 71306
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A00:J

    .line 71307
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v1

    .line 71308
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v3

    .line 71309
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 71310
    invoke-interface {v4, v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a(JILjava/lang/String;)V

    .line 71311
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cB;->A08:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A09:Lcom/facebook/ads/redexgen/X/1x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1x;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 71312
    return v5

    .line 71313
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/F7;

    if-nez v0, :cond_1

    .line 71314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A07:Lcom/facebook/ads/redexgen/X/XT;

    .line 71315
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v7

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A0K:I

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_CONTROLLER_IS_NULL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 71316
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;)V

    .line 71317
    const/16 v2, 0x82

    const/4 v1, 0x3

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 71318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A07:Lcom/facebook/ads/redexgen/X/XT;

    .line 71319
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A00:J

    .line 71320
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v2

    .line 71321
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    .line 71322
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 71323
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a(JILjava/lang/String;)V

    .line 71324
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cB;->A08:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A09:Lcom/facebook/ads/redexgen/X/1x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1x;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 71325
    return v5

    .line 71326
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cS;->A0G()V

    .line 71327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A05:Z

    .line 71328
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/cB;->A06:Z

    .line 71329
    return v0
.end method
