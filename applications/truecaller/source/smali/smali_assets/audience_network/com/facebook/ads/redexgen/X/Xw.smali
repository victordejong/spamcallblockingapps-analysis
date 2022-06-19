.class public final Lcom/facebook/ads/redexgen/X/Xw;
.super Lcom/facebook/ads/redexgen/X/6b;
.source ""


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Landroid/telephony/TelephonyManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xw;->A05()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V
    .locals 3

    .line 66538
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6b;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V

    .line 66539
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xw;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A00:Landroid/telephony/TelephonyManager;

    .line 66540
    return-void
.end method

.method public static A01(Landroid/telephony/CellInfo;)I
    .locals 2

    .line 66541
    if-eqz p0, :cond_5

    .line 66542
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_4

    .line 66543
    instance-of v0, p0, Landroid/telephony/CellInfoCdma;

    if-eqz v0, :cond_0

    .line 66544
    check-cast p0, Landroid/telephony/CellInfoCdma;

    invoke-virtual {p0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result v0

    return v0

    .line 66545
    :cond_0
    instance-of v0, p0, Landroid/telephony/CellInfoGsm;

    if-eqz v0, :cond_1

    .line 66546
    check-cast p0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result v0

    return v0

    .line 66547
    :cond_1
    instance-of v0, p0, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_2

    .line 66548
    check-cast p0, Landroid/telephony/CellInfoLte;

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v0

    return v0

    .line 66549
    :cond_2
    instance-of v0, p0, Landroid/telephony/CellInfoWcdma;

    if-eqz v0, :cond_3

    .line 66550
    check-cast p0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result v0

    return v0

    .line 66551
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66552
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 66553
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static synthetic A02(Landroid/telephony/CellInfo;)I
    .locals 0

    .line 66554
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Xw;->A01(Landroid/telephony/CellInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Xw;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 66555
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A00:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xw;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xw;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xft
        0x7t
        0xet
        0xdt
        0x4t
    .end array-data
.end method


# virtual methods
.method public final A0G()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66556
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Y6;-><init>(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 66557
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "CatchGeneralException"
        }
    .end annotation

    .line 66558
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Y5;-><init>(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 66559
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66560
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Y1;-><init>(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 66561
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66562
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y0;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Y0;-><init>(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 66563
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66564
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Y2;-><init>(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 66565
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66566
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Y3;-><init>(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 66567
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66568
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xx;-><init>(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 66569
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66570
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Y9;-><init>(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 66571
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66572
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xz;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xz;-><init>(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 66573
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66574
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xy;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xy;-><init>(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 66575
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0Q()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66576
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Y8;-><init>(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 66577
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0R()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66578
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Y7;-><init>(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 66579
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0S()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "CatchGeneralException"
        }
    .end annotation

    .line 66580
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Y4;-><init>(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 66581
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method
