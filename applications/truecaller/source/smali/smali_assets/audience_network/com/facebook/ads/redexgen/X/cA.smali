.class public final Lcom/facebook/ads/redexgen/X/cA;
.super Lcom/facebook/ads/redexgen/X/0o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/c8;->A0A(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/c8;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7kSkrPID5YMo1WnvaMIgpKB6WIhQPZTc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kYnVnFR0h3Yv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4OZGrpocgzJPR2XOpe36kiptmUtlR1IY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AELVZqmE3v"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ezzX0t3o6v3ClFiCUOYeN27kq8G"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mBbxV2ZqaJcWXY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eL94qTtIFL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cA;->A02:[Ljava/lang/String;

    .line 71190
    invoke-static {}, Lcom/facebook/ads/redexgen/X/cA;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c8;)V
    .locals 0

    .line 71191
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0o;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/cA;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cA;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x1ct
        -0xdt
        -0x14t
        -0x35t
        -0x29t
        -0x2at
        -0x24t
        -0x26t
        -0x29t
        -0x2ct
        -0x2ct
        -0x33t
        -0x26t
        -0x78t
        -0x2ft
        -0x25t
        -0x78t
        -0x2at
        -0x23t
        -0x2ct
        -0x2ct
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .locals 1

    .line 71192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A01(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardServerFailed()V

    .line 71193
    return-void
.end method

.method public final A07()V
    .locals 1

    .line 71194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A01(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardServerSuccess()V

    .line 71195
    return-void
.end method

.method public final A08()V
    .locals 1

    .line 71196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A01(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoCompleted()V

    .line 71197
    return-void
.end method

.method public final A09()V
    .locals 1

    .line 71198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A01(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoActivityDestroyed()V

    .line 71199
    return-void
.end method

.method public final A0A()V
    .locals 1

    .line 71200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A01(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoClosed()V

    .line 71201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A05(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lz;->A05()V

    .line 71202
    return-void
.end method

.method public final A0C()V
    .locals 2

    .line 71203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A01(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A04(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/redexgen/X/21;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/21;->A00()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 71204
    return-void
.end method

.method public final A0D()V
    .locals 2

    .line 71205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A01(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A04(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/redexgen/X/21;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/21;->A00()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 71206
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/0n;)V
    .locals 6

    .line 71207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A03(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/redexgen/X/F4;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/c8;->A08:Lcom/facebook/ads/redexgen/X/XT;

    .line 71209
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A0F:I

    const/4 v2, 0x3

    const/16 v1, 0x12

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cA;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;)V

    .line 71210
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cA;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 71211
    return-void

    .line 71212
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/c8;->A03(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/redexgen/X/F4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cS;->A0E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/c8;->A07(Lcom/facebook/ads/redexgen/X/c8;Ljava/lang/String;)Ljava/lang/String;

    .line 71213
    check-cast p1, Lcom/facebook/ads/redexgen/X/co;

    .line 71214
    .local p0, "rvAdapter":Lcom/facebook/ads/redexgen/X/co;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A04(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/redexgen/X/21;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/21;->A03:Lcom/facebook/ads/RewardData;

    if-eqz v0, :cond_1

    .line 71215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A04(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/redexgen/X/21;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/21;->A03:Lcom/facebook/ads/RewardData;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/co;->A01(Lcom/facebook/ads/RewardData;)V

    .line 71216
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A04(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/redexgen/X/21;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/co;->A0D()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/cA;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/cA;->A02:[Ljava/lang/String;

    const-string v1, "61YjDYRNNN"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "vT3ubuaNP5"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput v3, v4, Lcom/facebook/ads/redexgen/X/21;->A00:I

    .line 71217
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/c8;->A0C(Lcom/facebook/ads/redexgen/X/c8;Z)Z

    .line 71218
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/c8;->A03(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/redexgen/X/F4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F4;->A0T()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/c8;->A02(Lcom/facebook/ads/redexgen/X/c8;Lcom/facebook/ads/redexgen/X/16;)Lcom/facebook/ads/redexgen/X/16;

    .line 71219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A01(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A04(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/redexgen/X/21;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/21;->A00()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 71220
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/K3;)V
    .locals 5

    .line 71221
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/c8;->A09(Lcom/facebook/ads/redexgen/X/c8;Z)V

    .line 71222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A04(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/redexgen/X/21;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/21;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    .line 71223
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    .line 71224
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A00(Lcom/facebook/ads/redexgen/X/c8;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v2

    .line 71225
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/K3;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 71226
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/K3;->A04()Ljava/lang/String;

    move-result-object v0

    .line 71227
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a(JILjava/lang/String;)V

    .line 71228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A01(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c8;

    .line 71229
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c8;->A04(Lcom/facebook/ads/redexgen/X/c8;)Lcom/facebook/ads/redexgen/X/21;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/21;->A00()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/LK;->A00(Lcom/facebook/ads/redexgen/X/K3;)Lcom/facebook/ads/AdError;

    move-result-object v0

    .line 71230
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 71231
    return-void
.end method
