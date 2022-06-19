.class public final Lcom/facebook/ads/redexgen/X/cK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/12;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F4;->A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/F4;

.field public final synthetic A01:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gOGPE1XGqnroAJihU7XGAfTAdWa21jWC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Kcs30m2Uc1eFMAQARd2pOhOOSRswugkg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xkwB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vFLx4ryI8nKhSFQKGVnAMH5qObxMihWN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NnwKyO2XMzRH0BXfVduboZ9DAJ5a5svW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "U3uRLxNZuwH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "U9y6Wp3Jad2LD1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "sOAhAPVwmiqriGnbgM61Uai8lTIQh97W"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cK;->A03:[Ljava/lang/String;

    .line 71490
    invoke-static {}, Lcom/facebook/ads/redexgen/X/cK;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F4;Ljava/lang/Runnable;)V
    .locals 0

    .line 71491
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/F4;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cK;->A01:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/cK;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x61

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

    const/16 v0, 0x48

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cK;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x57t
        0x52t
        0x3t
        0x52t
        0x2t
        0x53t
        0x53t
        0x70t
        0x47t
        0x55t
        0x43t
        0x50t
        0x46t
        0x47t
        0x46t
        0x2t
        0x74t
        0x4bt
        0x46t
        0x47t
        0x4dt
        0x2t
        0x4bt
        0x4ft
        0x52t
        0x50t
        0x47t
        0x51t
        0x51t
        0x4bt
        0x4dt
        0x4ct
        0x2t
        0x44t
        0x4bt
        0x50t
        0x47t
        0x46t
        0x46t
        0x47t
        0x7bt
        0x4ct
        0x5et
        0x48t
        0x5bt
        0x4dt
        0x4ct
        0x4dt
        0x7ft
        0x40t
        0x4dt
        0x4ct
        0x46t
        0x68t
        0x4dt
        0x65t
        0x46t
        0x4et
        0x4et
        0x40t
        0x47t
        0x4et
        0x60t
        0x44t
        0x59t
        0x5bt
        0x4ct
        0x5at
        0x5at
        0x40t
        0x46t
        0x47t
    .end array-data
.end method


# virtual methods
.method public final ABu(Lcom/facebook/ads/redexgen/X/co;)V
    .locals 1

    .line 71492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/F4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A06()V

    .line 71493
    return-void
.end method

.method public final ABv(Lcom/facebook/ads/redexgen/X/co;)V
    .locals 1

    .line 71494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/F4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A07()V

    .line 71495
    return-void
.end method

.method public final ABw(Lcom/facebook/ads/redexgen/X/co;)V
    .locals 1

    .line 71496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/F4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A0C()V

    .line 71497
    return-void
.end method

.method public final ABx(Lcom/facebook/ads/redexgen/X/co;)V
    .locals 2

    .line 71498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/F4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cS;->A0C()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A01:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/F4;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/cS;->A01:Lcom/facebook/ads/redexgen/X/0n;

    .line 71500
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F4;->A03(Lcom/facebook/ads/redexgen/X/F4;)V

    .line 71501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/F4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/0o;->A0F(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 71502
    return-void
.end method

.method public final ABy(Lcom/facebook/ads/redexgen/X/co;)V
    .locals 5

    const/16 v2, 0x26

    const/16 v1, 0x22

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cK;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x7

    const/16 v1, 0x1f

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cK;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/F4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A0D()V

    .line 71504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/F4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cS;->A0I()V

    .line 71505
    return-void
.end method

.method public final ABz(Lcom/facebook/ads/redexgen/X/co;)V
    .locals 1

    .line 71506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/F4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A08()V

    .line 71507
    return-void
.end method

.method public final AC0(Lcom/facebook/ads/redexgen/X/co;Lcom/facebook/ads/AdError;)V
    .locals 4

    .line 71508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/F4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cS;->A0C()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A01:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/F4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4X(ILjava/lang/String;)V

    .line 71510
    sget-object v0, Lcom/facebook/ads/AdError;->AD_PRESENTATION_ERROR:Lcom/facebook/ads/AdError;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/F4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    .line 71511
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/F4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_PRESENTATION_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/K3;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71513
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/F4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/cS;->A0K(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 71514
    return-void

    .line 71515
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/F4;

    sget-object v1, Lcom/facebook/ads/redexgen/X/cK;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/cK;->A03:[Ljava/lang/String;

    const-string v1, "s57s"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/K3;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/K3;)V

    goto :goto_0
.end method

.method public final onRewardedVideoActivityDestroyed()V
    .locals 1

    .line 71516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/F4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A09()V

    .line 71517
    return-void
.end method

.method public final onRewardedVideoClosed()V
    .locals 1

    .line 71518
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/F4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A0A()V

    .line 71519
    return-void
.end method
