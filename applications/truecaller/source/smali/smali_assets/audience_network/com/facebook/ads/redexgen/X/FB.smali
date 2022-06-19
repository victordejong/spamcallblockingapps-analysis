.class public final Lcom/facebook/ads/redexgen/X/FB;
.super Lcom/facebook/ads/redexgen/X/co;
.source ""


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/12;

.field public A02:Lcom/facebook/ads/redexgen/X/13;

.field public A03:Lcom/facebook/ads/redexgen/X/16;

.field public A04:Lcom/facebook/ads/redexgen/X/XT;

.field public A05:Lcom/facebook/ads/redexgen/X/Jb;

.field public A06:Lcom/facebook/ads/redexgen/X/Kd;

.field public A07:Lcom/facebook/ads/redexgen/X/On;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A08:Ljava/lang/String;

.field public A09:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0A:Ljava/lang/String;

.field public A0B:Z

.field public final A0C:Ljava/lang/String;

.field public final A0D:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YJVWhBFSVFKs7NrWmWULGh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0GvTyPfIpVaCupDTXIuhVv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vKmpQ0k2zgunQxdAFsx7Wlk6dmYtSCUc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dqRYVPDeGy45RCRFCWIUPRHRtp9NBigI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NSweCua6lZ8ChPFZ3cKnaOBscLcsrWLc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HenZyTRrHhMHTWT00jKprDJGPW9d4C4V"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lvvcgtkpn6JHhS0LrJ19j3FN0lJsZZOv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GmBDkEWrzwPugE8SLtTHysECIxUFQGpg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/FB;->A0F:[Ljava/lang/String;

    .line 33027
    invoke-static {}, Lcom/facebook/ads/redexgen/X/FB;->A08()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33028
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/co;-><init>()V

    .line 33029
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A0C:Ljava/lang/String;

    .line 33030
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33031
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A0B:Z

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/FB;)Lcom/facebook/ads/redexgen/X/12;
    .locals 0

    .line 33032
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FB;->A01:Lcom/facebook/ads/redexgen/X/12;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/FB;)Lcom/facebook/ads/redexgen/X/16;
    .locals 0

    .line 33033
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/FB;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 0

    .line 33034
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/FB;Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/On;
    .locals 0

    .line 33035
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FB;->A07:Lcom/facebook/ads/redexgen/X/On;

    return-object p1
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/FB;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/FB;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 33036
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FB;->A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A06()V
    .locals 3

    .line 33037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2M;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/2M;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FB;->A02:Lcom/facebook/ads/redexgen/X/13;

    .line 33038
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/13;->A00()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2M;->A06(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 33039
    return-void
.end method

.method private A07()V
    .locals 2

    .line 33040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A02:Lcom/facebook/ads/redexgen/X/13;

    if-eqz v0, :cond_0

    .line 33041
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2M;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/2M;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A02:Lcom/facebook/ads/redexgen/X/13;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2M;->A05(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33042
    :catch_0
    :cond_0
    return-void
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0xac

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/FB;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x38t
        0x34t
        0x36t
        0x36t
        0x30t
        0x39t
        0x30t
        0x27t
        0x3at
        0x38t
        0x30t
        0x21t
        0x30t
        0x27t
        0xat
        0x27t
        0x3at
        0x21t
        0x34t
        0x21t
        0x3ct
        0x3at
        0x3bt
        0x6et
        0x61t
        0x64t
        0x68t
        0x63t
        0x79t
        0x59t
        0x62t
        0x66t
        0x68t
        0x63t
        0x7t
        0xft
        0xet
        0x3t
        0xbt
        0x1et
        0x3t
        0x5t
        0x4t
        0x2et
        0xbt
        0x1et
        0xbt
        0x59t
        0x45t
        0x48t
        0x4at
        0x4ct
        0x44t
        0x4ct
        0x47t
        0x5dt
        0x60t
        0x4dt
        0xct
        0xet
        0x19t
        0x18t
        0x19t
        0x1at
        0x15t
        0x12t
        0x19t
        0x18t
        0x33t
        0xet
        0x15t
        0x19t
        0x12t
        0x8t
        0x1dt
        0x8t
        0x15t
        0x13t
        0x12t
        0x37t
        0x19t
        0x5t
        0x55t
        0x42t
        0x56t
        0x52t
        0x42t
        0x54t
        0x53t
        0x73t
        0x4et
        0x4at
        0x42t
        0x4t
        0x13t
        0x1t
        0x17t
        0x4t
        0x12t
        0x25t
        0x13t
        0x4t
        0x0t
        0x13t
        0x4t
        0x23t
        0x24t
        0x3at
        0x68t
        0x7ft
        0x6dt
        0x7bt
        0x68t
        0x7et
        0x7ft
        0x7et
        0x4ct
        0x73t
        0x7et
        0x7ft
        0x75t
        0x5bt
        0x7et
        0x5et
        0x7bt
        0x6et
        0x7bt
        0x58t
        0x6ft
        0x74t
        0x7et
        0x76t
        0x7ft
        0x19t
        0xet
        0x1ct
        0xat
        0x19t
        0xft
        0xet
        0xft
        0x34t
        0x1dt
        0x2t
        0xft
        0xet
        0x4t
        0x57t
        0x51t
        0x43t
        0x6at
        0x4bt
        0x56t
        0x4ct
        0x51t
        0x40t
        0x7ct
        0x67t
        0x60t
        0x78t
        0x7ct
        0x6ct
        0x40t
        0x6dt
        0x53t
        0x4ct
        0x40t
        0x52t
        0x71t
        0x5ct
        0x55t
        0x40t
    .end array-data
.end method

.method private A09(Landroid/content/Intent;)V
    .locals 8

    .line 33043
    iget v4, p0, Lcom/facebook/ads/redexgen/X/co;->A00:I

    const/16 v2, 0x3a

    const/16 v1, 0x18

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FB;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    if-eq v4, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    .line 33044
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v5, 0x0

    .line 33045
    const/4 v7, 0x1

    const/16 v4, 0x16

    sget-object v1, Lcom/facebook/ads/redexgen/X/FB;->A0F:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/FB;->A0F:[Ljava/lang/String;

    const-string v1, "ryaiaZaF8EzuUPZd67FeoIG9jUALGHZG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "XITZtpYy2wf6QHmOozCOnY6Xlkm3ca51"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v0, 0x2b

    invoke-static {v7, v4, v0}, Lcom/facebook/ads/redexgen/X/FB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    .line 33046
    iget v4, p0, Lcom/facebook/ads/redexgen/X/co;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/FB;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/FB;->A0F:[Ljava/lang/String;

    const-string v1, "mo2n49jFbf8CHvb7nubztA"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "3h0LYrxRFByrgEG7Z48zJG"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 33047
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A0e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 33048
    const/4 v0, 0x6

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33049
    :cond_3
    :goto_0
    return-void
.end method

.method private A0A(Z)V
    .locals 4

    .line 33050
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FB;->A06:Lcom/facebook/ads/redexgen/X/Kd;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A0B:Lcom/facebook/ads/redexgen/X/Kd;

    if-ne v1, v0, :cond_0

    .line 33051
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/FB;->A0C(Z)V

    .line 33052
    :goto_0
    return-void

    .line 33053
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FB;->A06:Lcom/facebook/ads/redexgen/X/Kd;

    sget-object v2, Lcom/facebook/ads/redexgen/X/FB;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/FB;->A0F:[Ljava/lang/String;

    const-string v1, "1yOiFacRiwJanRzqDJ6A5hJ77lYfziAe"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "McEelBumOV7dKb1zb6BdvUT5HG6VvrgI"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A0A:Lcom/facebook/ads/redexgen/X/Kd;

    if-ne v3, v0, :cond_2

    .line 33054
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/FB;->A0B(Z)V

    goto :goto_0

    .line 33055
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/FB;->A0C(Z)V

    goto :goto_0
.end method

.method private A0B(Z)V
    .locals 10

    .line 33056
    .local p0, "adapter":Lcom/facebook/ads/redexgen/X/co;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v4, Lcom/facebook/ads/redexgen/X/7J;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/7J;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    .line 33057
    .local p1, "cacheManager":Lcom/facebook/ads/redexgen/X/7J;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    .line 33058
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 33059
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5V;->A0A(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    .line 33060
    .local v0, "isUnifiedAssetsLoaderEnabled":Z
    :goto_0
    if-eqz v8, :cond_0

    .line 33061
    new-instance v3, Lcom/facebook/ads/redexgen/X/5V;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 33062
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 33063
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0U()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 33064
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/facebook/ads/redexgen/X/cu;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/cu;-><init>(Lcom/facebook/ads/redexgen/X/FB;)V

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/5V;-><init>(Lcom/facebook/ads/redexgen/X/7J;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5U;)V

    .line 33065
    .local v4, "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/5V;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 33066
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A08()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    .line 33067
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Jb;
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/7J;->A0b(Lcom/facebook/ads/redexgen/X/Jb;)V

    .line 33068
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/5V;->A0B()V

    .line 33069
    .end local v4    # "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/5V;
    .end local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Jb;
    :goto_1
    return-void

    .line 33070
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ct;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ct;-><init>(Lcom/facebook/ads/redexgen/X/FB;)V

    invoke-static {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/1l;->A02(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/16;ZLcom/facebook/ads/redexgen/X/1j;)V

    goto :goto_1

    .line 33071
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private A0C(Z)V
    .locals 13

    .line 33072
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v4, Lcom/facebook/ads/redexgen/X/7J;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/7J;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    .line 33073
    .local p0, "cacheManager":Lcom/facebook/ads/redexgen/X/7J;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A05:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/7J;->A0b(Lcom/facebook/ads/redexgen/X/Jb;)V

    .line 33074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    .line 33075
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 33076
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5V;->A0A(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    .line 33077
    .local v9, "isUnifiedAssetsLoaderEnabled":Z
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0l()Z

    move-result v10

    .line 33078
    .local v0, "isDSL":Z
    if-eqz v8, :cond_0

    .line 33079
    new-instance v3, Lcom/facebook/ads/redexgen/X/5V;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 33080
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 33081
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0U()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 33082
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/facebook/ads/redexgen/X/cw;

    invoke-direct {v9, p0, v10}, Lcom/facebook/ads/redexgen/X/cw;-><init>(Lcom/facebook/ads/redexgen/X/FB;Z)V

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/5V;-><init>(Lcom/facebook/ads/redexgen/X/7J;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5U;)V

    .line 33083
    .local v0, "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/5V;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/5V;->A0B()V

    .line 33084
    .end local v0    # "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/5V;
    .end local v0
    .end local v8
    :goto_1
    return-void

    .line 33085
    :cond_0
    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    check-cast v11, Lcom/facebook/ads/redexgen/X/cf;

    .line 33086
    .local v0, "adDataBundle":Lcom/facebook/ads/redexgen/X/cf;
    move-object v12, p0

    .line 33087
    .local v8, "adapter":Lcom/facebook/ads/redexgen/X/co;
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/16;->A0m()Z

    move-result v0

    if-nez v0, :cond_2

    .line 33088
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33089
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FB;->A01:Lcom/facebook/ads/redexgen/X/12;

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v12, v0}, Lcom/facebook/ads/redexgen/X/12;->AC0(Lcom/facebook/ads/redexgen/X/co;Lcom/facebook/ads/AdError;)V

    .line 33090
    return-void

    .line 33091
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0, v4, v11}, Lcom/facebook/ads/redexgen/X/1m;->A02(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/cf;)V

    .line 33092
    :cond_2
    new-instance v7, Lcom/facebook/ads/redexgen/X/FC;

    move-object v8, p0

    move v9, p1

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/FC;-><init>(Lcom/facebook/ads/redexgen/X/FB;ZZLcom/facebook/ads/redexgen/X/cf;Lcom/facebook/ads/redexgen/X/co;)V

    .line 33093
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x85

    const/16 v1, 0xe

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FB;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/7C;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33094
    invoke-virtual {v4, v7, v0}, Lcom/facebook/ads/redexgen/X/7J;->A0U(Lcom/facebook/ads/redexgen/X/7B;Lcom/facebook/ads/redexgen/X/7C;)V

    goto :goto_1

    .line 33095
    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0D()I
    .locals 4

    .line 33096
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    if-nez v0, :cond_1

    .line 33097
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/FB;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/FB;->A0F:[Ljava/lang/String;

    const-string v1, "zy8kAWNFspHhc9OUOOhBHMIK4AaCMilm"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 33098
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0H()I

    move-result v0

    return v0
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/16;
    .locals 1

    .line 33099
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    return-object v0
.end method

.method public final A0F()Z
    .locals 6

    .line 33100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33101
    const/4 v0, 0x0

    return v0

    .line 33102
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/co;->A01:Lcom/facebook/ads/RewardData;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FB;->A0C:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A08:Ljava/lang/String;

    .line 33103
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PV;->A03(Lcom/facebook/ads/RewardData;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 33104
    .local p0, "rewardUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/co;->A01:Lcom/facebook/ads/RewardData;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A0a(Lcom/facebook/ads/RewardData;)V

    .line 33105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/16;->A0e(Ljava/lang/String;)V

    .line 33106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L9;->A04(Lcom/facebook/ads/redexgen/X/XT;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v4

    .line 33107
    .local v0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FB;->A06:Lcom/facebook/ads/redexgen/X/Kd;

    const/16 v2, 0xa4

    const/16 v1, 0x8

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 33108
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    const/16 v2, 0x6c

    const/16 v1, 0x19

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 33109
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FB;->A0C:Ljava/lang/String;

    const/16 v2, 0x9c

    const/16 v1, 0x8

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33110
    if-eqz v5, :cond_1

    .line 33111
    const/16 v2, 0x5d

    const/16 v1, 0xf

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33112
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FB;->A0A:Ljava/lang/String;

    const/16 v2, 0x2f

    const/16 v1, 0xb

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33113
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/FB;->A0B:Z

    const/16 v2, 0x93

    const/16 v1, 0x9

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33114
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/FB;->A00:J

    const/16 v5, 0x52

    const/16 v3, 0xb

    const/16 v0, 0x59

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/FB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1, v2}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 33115
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FB;->A09:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 33116
    const/16 v2, 0x22

    const/16 v1, 0xd

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33117
    :cond_2
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/FB;->A09(Landroid/content/Intent;)V

    .line 33118
    invoke-virtual {v4}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->getFlags()I

    move-result v1

    const/high16 v0, 0x10000000

    or-int/2addr v1, v0

    invoke-virtual {v4, v1}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->setFlags(I)Landroid/content/Intent;

    .line 33119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0xb

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 33121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/L9;->A09(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    .line 33122
    const/4 v0, 0x1

    return v0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/12;Lcom/facebook/ads/redexgen/X/1p;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 33124
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    .line 33125
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FB;->A01:Lcom/facebook/ads/redexgen/X/12;

    .line 33126
    invoke-static {p5}, Lcom/facebook/ads/redexgen/X/1n;->A02(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A0B:Z

    .line 33127
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1p;->A02()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A0A:Ljava/lang/String;

    .line 33128
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1p;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A00:J

    .line 33129
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/FB;->A09:Ljava/lang/String;

    .line 33130
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FB;->A0A:Ljava/lang/String;

    if-eqz v3, :cond_7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A08:Ljava/lang/String;

    .line 33131
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1p;->A03()Lorg/json/JSONObject;

    move-result-object v1

    .line 33132
    .local p0, "dataObject":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/cf;->A02(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/XT;)Lcom/facebook/ads/redexgen/X/cf;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 33133
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1p;->A01()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A0F()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A0g(Z)V

    .line 33134
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0, p5}, Lcom/facebook/ads/redexgen/X/16;->A0c(Ljava/lang/String;)V

    .line 33135
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 33136
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1p;->A01()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A06()I

    move-result v0

    .line 33137
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A0Z(I)V

    .line 33138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 33139
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8J;->A08()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A05:Lcom/facebook/ads/redexgen/X/Jb;

    .line 33140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0l()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 33141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0m()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A0C:Lcom/facebook/ads/redexgen/X/Kd;

    :goto_1
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A06:Lcom/facebook/ads/redexgen/X/Kd;

    .line 33142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A04:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AEX(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 33144
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/XT;
    :goto_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FB;->A0C:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/13;

    invoke-direct {v0, v1, p0, p2}, Lcom/facebook/ads/redexgen/X/13;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/co;Lcom/facebook/ads/redexgen/X/12;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A02:Lcom/facebook/ads/redexgen/X/13;

    .line 33145
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FB;->A06()V

    .line 33146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33147
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/MO;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/MO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MO;->A06()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/16;->A0h(Z)V

    .line 33148
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    sget-object v3, Lcom/facebook/ads/redexgen/X/FB;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v3, v0

    const/4 v0, 0x5

    aget-object v3, v3, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v3, Lcom/facebook/ads/redexgen/X/FB;->A0F:[Ljava/lang/String;

    const-string v1, "Eum2kzY1KsvV3iHB7OkWnIxnMBSPWXGg"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/16;->A0n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33149
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 33150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/12;->ABx(Lcom/facebook/ads/redexgen/X/co;)V

    .line 33151
    :goto_3
    return-void

    .line 33152
    :cond_1
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/FB;->A0A(Z)V

    goto :goto_3

    .line 33153
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A06:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AEX(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_2

    .line 33154
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A04:Lcom/facebook/ads/redexgen/X/Kd;

    goto :goto_1

    .line 33155
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0G()I

    move-result v0

    .line 33156
    .local p1, "experienceType":I
    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    goto :goto_2

    .line 33157
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A0A:Lcom/facebook/ads/redexgen/X/Kd;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A06:Lcom/facebook/ads/redexgen/X/Kd;

    .line 33158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A08:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AEX(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 33159
    goto :goto_2

    .line 33160
    :cond_6
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A0B:Lcom/facebook/ads/redexgen/X/Kd;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A06:Lcom/facebook/ads/redexgen/X/Kd;

    .line 33161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A09:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AEX(Lcom/facebook/ads/redexgen/X/0c;)V

    goto/16 :goto_2

    .line 33162
    :cond_7
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FB;->A04(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A61()Ljava/lang/String;
    .locals 1

    .line 33163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .locals 0

    .line 33164
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FB;->A07()V

    .line 33165
    return-void
.end method
