.class public final Lcom/facebook/ads/redexgen/X/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0n;
.implements Lcom/facebook/ads/redexgen/X/1a;


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/RewardData;

.field public A02:Lcom/facebook/ads/redexgen/X/0x;

.field public A03:Lcom/facebook/ads/redexgen/X/0y;

.field public A04:Lcom/facebook/ads/redexgen/X/1b;

.field public A05:Lcom/facebook/ads/redexgen/X/XT;

.field public A06:Ljava/lang/String;

.field public A07:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A08:Ljava/lang/String;

.field public A09:Z

.field public final A0A:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PgLDGrk3t3a26fQCrT3IpIrRB5PMNBKm"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "uls9HIPpriPjzjIXJVTR7HWmS4IMGzWu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "f2YRmtND2fanruA3kJYGXgN9aGwgjawI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EZdssni07U2TMPMup9RmA63S0tAhTBNo"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xilKUxawUAlWzUTJOedtCKHAHwNBDRxA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SxIuirRfQS0L7ik0LzQXw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dF8CYh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NQmOIXzIEfwTEqDrM9Z7TuMEUTKSiMNX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/d0;->A0C:[Ljava/lang/String;

    .line 72595
    invoke-static {}, Lcom/facebook/ads/redexgen/X/d0;->A05()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72597
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A0A:Ljava/lang/String;

    return-void
.end method

.method private A00()I
    .locals 4

    .line 72598
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/d0;->A05:Lcom/facebook/ads/redexgen/X/XT;

    .line 72599
    const/16 v2, 0xcd

    const/4 v1, 0x6

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/XT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 72600
    .local p0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 72601
    .local v3, "rotation":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/d0;->A02()Lcom/facebook/ads/redexgen/X/Nv;

    move-result-object v2

    .line 72602
    .local v2, "adOrientation":Lcom/facebook/ads/redexgen/X/Nv;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Nv;->A06:Lcom/facebook/ads/redexgen/X/Nv;

    if-ne v2, v0, :cond_0

    .line 72603
    const/4 v0, -0x1

    return v0

    .line 72604
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Nv;->A04:Lcom/facebook/ads/redexgen/X/Nv;

    const/4 v0, 0x2

    if-ne v2, v1, :cond_3

    .line 72605
    if-eq v3, v0, :cond_1

    const/4 v0, 0x3

    if-eq v3, v0, :cond_1

    .line 72606
    const/4 v0, 0x0

    return v0

    .line 72607
    :cond_1
    const/16 v3, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/d0;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x67

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/d0;->A0C:[Ljava/lang/String;

    const-string v1, "WCZdwi0h9oyTFk4ywD5LtkOxTOpQ29Yc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "4yy96Y2PoNFTEE84mLwUlYETryPZgGhE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 72608
    :cond_3
    if-eq v3, v0, :cond_4

    .line 72609
    const/4 v0, 0x1

    return v0

    .line 72610
    :cond_4
    const/16 v0, 0x9

    return v0
.end method

.method private final A01()Lcom/facebook/ads/redexgen/X/Kd;
    .locals 1

    .line 72611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A04:Lcom/facebook/ads/redexgen/X/1b;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1b;->A0C()Lcom/facebook/ads/redexgen/X/Kd;

    move-result-object v0

    return-object v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/Nv;
    .locals 1

    .line 72612
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A04:Lcom/facebook/ads/redexgen/X/1b;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1b;->A0D()Lcom/facebook/ads/redexgen/X/Nv;

    move-result-object v0

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/d0;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 1

    .line 72613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A09:Z

    .line 72614
    return-void
.end method

.method public static A05()V
    .locals 4

    const/16 v0, 0xd3

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/d0;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x67

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/d0;->A0C:[Ljava/lang/String;

    const-string v1, "6qgGoSyjmuhDFT94hunOHzgd3UUS7LMQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "q1PjRK7gg6WFD8n4pAFO870HLaNMi7ir"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/d0;->A0B:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x4et
        0x6ct
        0x63t
        0x2at
        0x79t
        0x2dt
        0x7et
        0x79t
        0x6ct
        0x7ft
        0x79t
        0x2dt
        0x4ct
        0x78t
        0x69t
        0x64t
        0x68t
        0x63t
        0x6et
        0x68t
        0x43t
        0x68t
        0x79t
        0x7at
        0x62t
        0x7ft
        0x66t
        0x4ct
        0x6et
        0x79t
        0x64t
        0x7bt
        0x64t
        0x79t
        0x74t
        0x23t
        0x2dt
        0x40t
        0x6ct
        0x66t
        0x68t
        0x2dt
        0x7et
        0x78t
        0x7ft
        0x68t
        0x2dt
        0x79t
        0x65t
        0x6ct
        0x79t
        0x2dt
        0x64t
        0x79t
        0x2at
        0x7et
        0x2dt
        0x64t
        0x63t
        0x2dt
        0x74t
        0x62t
        0x78t
        0x7ft
        0x2dt
        0x4ct
        0x63t
        0x69t
        0x7ft
        0x62t
        0x64t
        0x69t
        0x40t
        0x6ct
        0x63t
        0x64t
        0x6bt
        0x68t
        0x7et
        0x79t
        0x23t
        0x75t
        0x60t
        0x61t
        0x2dt
        0x6bt
        0x64t
        0x61t
        0x68t
        0x23t
        0x49t
        0x4dt
        0x4et
        0x7at
        0x6bt
        0x66t
        0x6at
        0x61t
        0x6ct
        0x6at
        0x41t
        0x6at
        0x7bt
        0x78t
        0x60t
        0x7dt
        0x64t
        0x44t
        0x25t
        0x2at
        0x1bt
        0x25t
        0x27t
        0x30t
        0x2dt
        0x32t
        0x2dt
        0x30t
        0x3dt
        0x5dt
        0x52t
        0x57t
        0x5bt
        0x50t
        0x4at
        0x6at
        0x51t
        0x55t
        0x5bt
        0x50t
        0x11t
        0x19t
        0x18t
        0x15t
        0x1dt
        0x8t
        0x15t
        0x13t
        0x12t
        0x38t
        0x1dt
        0x8t
        0x1dt
        0x34t
        0x28t
        0x25t
        0x27t
        0x21t
        0x29t
        0x21t
        0x2at
        0x30t
        0xdt
        0x20t
        0x4t
        0x6t
        0x11t
        0x10t
        0x11t
        0x12t
        0x1dt
        0x1at
        0x11t
        0x10t
        0x3bt
        0x6t
        0x1dt
        0x11t
        0x1at
        0x0t
        0x15t
        0x0t
        0x1dt
        0x1bt
        0x1at
        0x3ft
        0x11t
        0xdt
        0x75t
        0x62t
        0x76t
        0x72t
        0x62t
        0x74t
        0x73t
        0x53t
        0x6et
        0x6at
        0x62t
        0x1dt
        0x6t
        0x1t
        0x19t
        0x1dt
        0xdt
        0x21t
        0xct
        0x26t
        0x39t
        0x35t
        0x27t
        0x4t
        0x29t
        0x20t
        0x35t
        0x50t
        0x4et
        0x49t
        0x43t
        0x48t
        0x50t
    .end array-data
.end method

.method private A06(Landroid/content/Intent;)V
    .locals 4

    .line 72615
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/d0;->A04:Lcom/facebook/ads/redexgen/X/1b;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/d0;->A01:Lcom/facebook/ads/RewardData;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/d0;->A0A:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A06:Ljava/lang/String;

    .line 72616
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PV;->A03(Lcom/facebook/ads/RewardData;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72617
    invoke-virtual {v3, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/1b;->A0G(Landroid/content/Intent;Lcom/facebook/ads/RewardData;Ljava/lang/String;)V

    .line 72618
    return-void
.end method

.method private final A07(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/0x;Lcom/facebook/ads/redexgen/X/1p;Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 1
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XT;",
            "Lcom/facebook/ads/redexgen/X/0x;",
            "Lcom/facebook/ads/redexgen/X/1p;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 72619
    .local p5, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/1b;

    invoke-direct {v0, p1, p3, p0, p5}, Lcom/facebook/ads/redexgen/X/1b;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1p;Lcom/facebook/ads/redexgen/X/1a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A04:Lcom/facebook/ads/redexgen/X/1b;

    .line 72620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A04:Lcom/facebook/ads/redexgen/X/1b;

    invoke-virtual {v0, p1, p4}, Lcom/facebook/ads/redexgen/X/1b;->A0H(Lcom/facebook/ads/redexgen/X/XT;Ljava/util/EnumSet;)V

    .line 72621
    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Kd;)V
    .locals 4

    .line 72622
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A06:Lcom/facebook/ads/redexgen/X/Kd;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Kd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A05:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A03:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AEX(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 72624
    :cond_0
    :goto_0
    return-void

    .line 72625
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A07:Lcom/facebook/ads/redexgen/X/Kd;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Kd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A05:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A07:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AEX(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_0

    .line 72627
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A09:Lcom/facebook/ads/redexgen/X/Kd;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Kd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A05:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A09:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AEX(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_0

    .line 72629
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A08:Lcom/facebook/ads/redexgen/X/Kd;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Kd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A05:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A08:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AEX(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_0

    .line 72631
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A03:Lcom/facebook/ads/redexgen/X/Kd;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Kd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A04:Lcom/facebook/ads/redexgen/X/1b;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1b;->A0J()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 72633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A05:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/d0;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/d0;->A0C:[Ljava/lang/String;

    const-string v1, "SZ1DhKHJxqFOmux8c4F7iNiG5ZFRRvjL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A04:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->AEX(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_0

    .line 72634
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A04:Lcom/facebook/ads/redexgen/X/1b;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1b;->A0I()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 72635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A05:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A06:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AEX(Lcom/facebook/ads/redexgen/X/0c;)V

    goto/16 :goto_0

    .line 72636
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A05:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A05:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AEX(Lcom/facebook/ads/redexgen/X/0c;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A09()Lcom/facebook/ads/redexgen/X/16;
    .locals 1

    .line 72637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A04:Lcom/facebook/ads/redexgen/X/1b;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1b;->A0B()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    return-object v0
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/0x;Lcom/facebook/ads/redexgen/X/1p;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/RewardData;)V
    .locals 4
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/ads/RewardData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XT;",
            "Lcom/facebook/ads/redexgen/X/0x;",
            "Lcom/facebook/ads/redexgen/X/1p;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/RewardData;",
            ")V"
        }
    .end annotation

    .line 72638
    .local p6, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/d0;->A05:Lcom/facebook/ads/redexgen/X/XT;

    .line 72639
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/d0;->A02:Lcom/facebook/ads/redexgen/X/0x;

    .line 72640
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1p;->A02()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A08:Ljava/lang/String;

    .line 72641
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/d0;->A08:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/16 v2, 0x6b

    const/4 v1, 0x1

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A06:Ljava/lang/String;

    .line 72642
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1p;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A00:J

    .line 72643
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/d0;->A07:Ljava/lang/String;

    .line 72644
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/d0;->A01:Lcom/facebook/ads/RewardData;

    .line 72645
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/d0;->A07(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/0x;Lcom/facebook/ads/redexgen/X/1p;Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 72646
    return-void

    .line 72647
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d0;->A03(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final A0B()Z
    .locals 8

    .line 72648
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A09:Z

    const/4 v7, 0x0

    if-nez v0, :cond_1

    .line 72649
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/d0;->A02:Lcom/facebook/ads/redexgen/X/0x;

    if-eqz v1, :cond_0

    .line 72650
    sget-object v0, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/0x;->AAq(Lcom/facebook/ads/redexgen/X/d0;Lcom/facebook/ads/AdError;)V

    .line 72651
    :cond_0
    return v7

    .line 72652
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A05:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L9;->A04(Lcom/facebook/ads/redexgen/X/XT;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v4

    .line 72653
    .local p0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/d0;->A00()I

    move-result v3

    .line 72654
    const/16 v2, 0x9a

    const/16 v1, 0x18

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72655
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/d0;->A0A:Ljava/lang/String;

    const/16 v2, 0xbd

    const/16 v1, 0x8

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72656
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/d0;->A08:Ljava/lang/String;

    const/16 v2, 0x8f

    const/16 v1, 0xb

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72657
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/d0;->A00:J

    const/16 v5, 0xb2

    const/16 v3, 0xb

    const/16 v0, 0xf

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/d0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1, v2}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 72658
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/d0;->A01()Lcom/facebook/ads/redexgen/X/Kd;

    move-result-object v3

    .line 72659
    .local v7, "viewType":Lcom/facebook/ads/redexgen/X/Kd;
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/d0;->A08(Lcom/facebook/ads/redexgen/X/Kd;)V

    .line 72660
    const/16 v2, 0xc5

    const/16 v1, 0x8

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 72661
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/d0;->A07:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 72662
    const/16 v2, 0x82

    const/16 v1, 0xd

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72663
    :cond_2
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/d0;->A06(Landroid/content/Intent;)V

    .line 72664
    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->addFlags(I)Landroid/content/Intent;

    .line 72665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A04:Lcom/facebook/ads/redexgen/X/1b;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1b;->A0E()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x77

    const/16 v1, 0xb

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72666
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A05:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 72667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A05:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/L9;->A09(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    .line 72668
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72669
    :catch_0
    move-exception v5

    .line 72670
    .local v1, "anfe":Landroid/content/ActivityNotFoundException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A05:Lcom/facebook/ads/redexgen/X/XT;

    .line 72671
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v6

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A05:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 72672
    const/16 v2, 0x6c

    const/16 v1, 0xb

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 72673
    const/16 v2, 0x5a

    const/16 v1, 0x11

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d0;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x5a

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72674
    return v7
.end method

.method public final A61()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 72675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A04:Lcom/facebook/ads/redexgen/X/1b;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1b;->A0E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A75()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 72676
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final A9i(Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 72677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A02:Lcom/facebook/ads/redexgen/X/0x;

    if-eqz v0, :cond_0

    .line 72678
    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/0x;->AAq(Lcom/facebook/ads/redexgen/X/d0;Lcom/facebook/ads/AdError;)V

    .line 72679
    :cond_0
    return-void
.end method

.method public final A9j()V
    .locals 1

    .line 72680
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/d0;->A04()V

    .line 72681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A02:Lcom/facebook/ads/redexgen/X/0x;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/0x;->AAp(Lcom/facebook/ads/redexgen/X/d0;)V

    .line 72682
    return-void
.end method

.method public final ADP()V
    .locals 4

    .line 72683
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/d0;->A05:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/d0;->A0A:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/d0;->A02:Lcom/facebook/ads/redexgen/X/0x;

    new-instance v0, Lcom/facebook/ads/redexgen/X/0y;

    invoke-direct {v0, v3, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/0y;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/d0;Lcom/facebook/ads/redexgen/X/0x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A03:Lcom/facebook/ads/redexgen/X/0y;

    .line 72684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A03:Lcom/facebook/ads/redexgen/X/0y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0y;->A02()V

    .line 72685
    return-void
.end method

.method public final AF5()V
    .locals 1

    .line 72686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A03:Lcom/facebook/ads/redexgen/X/0y;

    if-eqz v0, :cond_0

    .line 72687
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0y;->A03()V

    .line 72688
    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 72689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d0;->A04:Lcom/facebook/ads/redexgen/X/1b;

    if-eqz v0, :cond_0

    .line 72690
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1b;->A0F()V

    .line 72691
    :cond_0
    return-void
.end method
