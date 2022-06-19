.class public final Lcom/facebook/ads/redexgen/X/AA;
.super Lcom/facebook/ads/redexgen/X/Po;
.source ""


# static fields
.field public static A0E:[B

.field public static final A0F:Ljava/lang/String;


# instance fields
.field public A00:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/NativeAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/JT;

.field public A03:Lcom/facebook/ads/redexgen/X/Mc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/7x;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A08:Lcom/facebook/ads/redexgen/X/14;

.field public final A09:Lcom/facebook/ads/redexgen/X/XT;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Mi;

.field public final A0B:Lcom/facebook/ads/redexgen/X/L3;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Kq;

.field public final A0D:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 21490
    invoke-static {}, Lcom/facebook/ads/redexgen/X/AA;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AA;->A0F:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 1

    .line 21491
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Po;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 21492
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0D:Ljava/lang/String;

    .line 21493
    new-instance v0, Lcom/facebook/ads/redexgen/X/AY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AY;-><init>(Lcom/facebook/ads/redexgen/X/AA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0C:Lcom/facebook/ads/redexgen/X/Kq;

    .line 21494
    new-instance v0, Lcom/facebook/ads/redexgen/X/AW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AW;-><init>(Lcom/facebook/ads/redexgen/X/AA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0B:Lcom/facebook/ads/redexgen/X/L3;

    .line 21495
    new-instance v0, Lcom/facebook/ads/redexgen/X/AV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AV;-><init>(Lcom/facebook/ads/redexgen/X/AA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0A:Lcom/facebook/ads/redexgen/X/Mi;

    .line 21496
    new-instance v0, Lcom/facebook/ads/redexgen/X/14;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/14;-><init>(Lcom/facebook/ads/redexgen/X/AA;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A08:Lcom/facebook/ads/redexgen/X/14;

    .line 21497
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AA;->A09:Lcom/facebook/ads/redexgen/X/XT;

    .line 21498
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AA;->A02()V

    .line 21499
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;)V
    .locals 1

    .line 21500
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Po;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;)V

    .line 21501
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0D:Ljava/lang/String;

    .line 21502
    new-instance v0, Lcom/facebook/ads/redexgen/X/AY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AY;-><init>(Lcom/facebook/ads/redexgen/X/AA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0C:Lcom/facebook/ads/redexgen/X/Kq;

    .line 21503
    new-instance v0, Lcom/facebook/ads/redexgen/X/AW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AW;-><init>(Lcom/facebook/ads/redexgen/X/AA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0B:Lcom/facebook/ads/redexgen/X/L3;

    .line 21504
    new-instance v0, Lcom/facebook/ads/redexgen/X/AV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AV;-><init>(Lcom/facebook/ads/redexgen/X/AA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0A:Lcom/facebook/ads/redexgen/X/Mi;

    .line 21505
    new-instance v0, Lcom/facebook/ads/redexgen/X/14;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/14;-><init>(Lcom/facebook/ads/redexgen/X/AA;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A08:Lcom/facebook/ads/redexgen/X/14;

    .line 21506
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AA;->A09:Lcom/facebook/ads/redexgen/X/XT;

    .line 21507
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AA;->A02()V

    .line 21508
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 21509
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Po;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;I)V

    .line 21510
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0D:Ljava/lang/String;

    .line 21511
    new-instance v0, Lcom/facebook/ads/redexgen/X/AY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AY;-><init>(Lcom/facebook/ads/redexgen/X/AA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0C:Lcom/facebook/ads/redexgen/X/Kq;

    .line 21512
    new-instance v0, Lcom/facebook/ads/redexgen/X/AW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AW;-><init>(Lcom/facebook/ads/redexgen/X/AA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0B:Lcom/facebook/ads/redexgen/X/L3;

    .line 21513
    new-instance v0, Lcom/facebook/ads/redexgen/X/AV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AV;-><init>(Lcom/facebook/ads/redexgen/X/AA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0A:Lcom/facebook/ads/redexgen/X/Mi;

    .line 21514
    new-instance v0, Lcom/facebook/ads/redexgen/X/14;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/14;-><init>(Lcom/facebook/ads/redexgen/X/AA;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A08:Lcom/facebook/ads/redexgen/X/14;

    .line 21515
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AA;->A09:Lcom/facebook/ads/redexgen/X/XT;

    .line 21516
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AA;->A02()V

    .line 21517
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/AA;)Lcom/facebook/ads/redexgen/X/Mc;
    .locals 0

    .line 21518
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/AA;->A03:Lcom/facebook/ads/redexgen/X/Mc;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/AA;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 4

    .line 21519
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9P;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AA;->A0C:Lcom/facebook/ads/redexgen/X/Kq;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AA;->A0B:Lcom/facebook/ads/redexgen/X/L3;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AA;->A0A:Lcom/facebook/ads/redexgen/X/Mi;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9O;->A03([Lcom/facebook/ads/redexgen/X/9P;)V

    .line 21520
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x14a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AA;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x7at
        -0x68t
        -0x5bt
        0x5et
        -0x55t
        0x57t
        -0x56t
        -0x55t
        -0x68t
        -0x57t
        -0x55t
        0x57t
        0x78t
        -0x54t
        -0x65t
        -0x60t
        -0x64t
        -0x5bt
        -0x66t
        -0x64t
        -0x7bt
        -0x64t
        -0x55t
        -0x52t
        -0x5at
        -0x57t
        -0x5et
        0x78t
        -0x66t
        -0x55t
        -0x60t
        -0x53t
        -0x60t
        -0x55t
        -0x50t
        0x65t
        0x57t
        -0x7ct
        -0x68t
        -0x5et
        -0x64t
        0x57t
        -0x56t
        -0x54t
        -0x57t
        -0x64t
        0x57t
        -0x55t
        -0x61t
        -0x68t
        -0x55t
        0x57t
        -0x60t
        -0x55t
        0x5et
        -0x56t
        0x57t
        -0x60t
        -0x5bt
        0x57t
        -0x50t
        -0x5at
        -0x54t
        -0x57t
        0x57t
        0x78t
        -0x5bt
        -0x65t
        -0x57t
        -0x5at
        -0x60t
        -0x65t
        -0x7ct
        -0x68t
        -0x5bt
        -0x60t
        -0x63t
        -0x64t
        -0x56t
        -0x55t
        0x65t
        -0x51t
        -0x5ct
        -0x5dt
        0x57t
        -0x63t
        -0x60t
        -0x5dt
        -0x64t
        0x65t
        -0x4dt
        -0x20t
        -0x20t
        -0x23t
        -0x20t
        -0x58t
        -0x72t
        0x6dt
        0x69t
        0x68t
        -0x64t
        -0x75t
        -0x70t
        -0x74t
        -0x6bt
        -0x76t
        -0x74t
        0x75t
        -0x74t
        -0x65t
        -0x62t
        -0x6at
        -0x67t
        -0x6et
        0x71t
        -0x67t
        -0x69t
        -0x68t
        0x44t
        -0x69t
        -0x77t
        -0x68t
        0x67t
        -0x70t
        -0x73t
        -0x77t
        -0x6et
        -0x68t
        0x78t
        -0x6dt
        -0x71t
        -0x77t
        -0x6et
        0x44t
        -0x76t
        -0x73t
        -0x6at
        -0x69t
        -0x68t
        0x71t
        -0x67t
        -0x69t
        -0x68t
        0x44t
        -0x69t
        -0x77t
        -0x68t
        0x7at
        -0x73t
        -0x78t
        -0x77t
        -0x6dt
        0x79t
        0x76t
        0x6dt
        0x44t
        -0x6dt
        -0x6at
        0x44t
        -0x69t
        -0x77t
        -0x68t
        0x7at
        -0x73t
        -0x78t
        -0x77t
        -0x6dt
        0x71t
        0x74t
        0x68t
        0x44t
        -0x76t
        -0x73t
        -0x6at
        -0x69t
        -0x68t
        -0x10t
        -0x3t
        -0x12t
        -0x10t
        -0xet
        0x3t
        -0x8t
        0x5t
        -0x8t
        0x3t
        0x8t
        -0x50t
        -0x47t
        -0x4at
        -0x4et
        -0x45t
        -0x3ft
        -0x5ft
        -0x44t
        -0x48t
        -0x4et
        -0x45t
        -0x7t
        -0x16t
        -0x5t
        -0x4t
        -0xet
        -0x9t
        -0x10t
        -0x6bt
        -0x69t
        -0x76t
        -0x77t
        -0x76t
        -0x75t
        -0x72t
        -0x6dt
        -0x76t
        -0x77t
        0x74t
        -0x69t
        -0x72t
        -0x76t
        -0x6dt
        -0x67t
        -0x7at
        -0x67t
        -0x72t
        -0x6ct
        -0x6dt
        0x70t
        -0x76t
        -0x62t
        -0x30t
        -0x37t
        -0x3ct
        -0x34t
        -0x30t
        -0x40t
        -0x5ct
        -0x41t
        -0x27t
        -0x29t
        -0x37t
        -0x4et
        -0x3bt
        -0x28t
        -0x33t
        -0x26t
        -0x37t
        -0x59t
        -0x28t
        -0x3bt
        -0x5at
        -0x27t
        -0x28t
        -0x28t
        -0x2dt
        -0x2et
        -0x29t
        -0x36t
        -0x3bt
        -0x3at
        -0x30t
        -0x53t
        -0x30t
        -0x38t
        -0x38t
        -0x3at
        -0x2dt
        -0x16t
        -0x23t
        -0x28t
        -0x27t
        -0x1dt
        -0x3ft
        -0x3ct
        -0x48t
        -0x78t
        0x7bt
        0x76t
        0x77t
        -0x7ft
        0x65t
        0x77t
        0x77t
        0x7dt
        0x66t
        0x7bt
        0x7ft
        0x77t
        -0x28t
        -0x35t
        -0x3at
        -0x39t
        -0x2ft
        -0x49t
        -0x4ct
        -0x52t
        -0x3t
        -0x10t
        -0x15t
        -0x14t
        -0xat
        -0x1at
        -0x5t
        -0x10t
        -0xct
        -0x14t
        -0x1at
        -0x9t
        -0xat
        -0xdt
        -0xdt
        -0x10t
        -0xbt
        -0x12t
        -0x1at
        -0x10t
        -0xbt
        -0x5t
        -0x14t
        -0x7t
        -0x3t
        -0x18t
        -0xdt
        -0x57t
        -0x64t
        -0x68t
        -0x56t
        -0x79t
        -0x54t
        -0x5dt
        -0x68t
    .end array-data
.end method

.method private A04(Landroid/content/Intent;)V
    .locals 4

    .line 21521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A04:Lcom/facebook/ads/redexgen/X/7x;

    if-nez v0, :cond_0

    .line 21522
    const/16 v2, 0x72

    const/16 v1, 0x19

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AA;->A05(Ljava/lang/String;)V

    .line 21523
    return-void

    .line 21524
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A00:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A07:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 21525
    const/16 v2, 0x8b

    const/16 v1, 0x25

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AA;->A05(Ljava/lang/String;)V

    .line 21526
    return-void

    .line 21527
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AA;->A06:Ljava/lang/String;

    const/16 v2, 0xed

    const/16 v1, 0x12

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21528
    sget-object v3, Lcom/facebook/ads/redexgen/X/Kd;->A05:Lcom/facebook/ads/redexgen/X/Kd;

    const/16 v2, 0x142

    const/16 v1, 0x8

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 21529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A00:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x11f

    const/16 v1, 0x8

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21530
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AA;->A05:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v3

    .line 21531
    :cond_2
    const/16 v2, 0xbb

    const/16 v1, 0xb

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21532
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AA;->A07:Ljava/lang/String;

    const/16 v2, 0x10a

    const/16 v1, 0x8

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21533
    const/16 v3, 0xd

    const/16 v2, 0xcd

    const/16 v1, 0x18

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21534
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Po;->getCurrentPositionInMillis()I

    move-result v3

    const/16 v2, 0x112

    const/16 v1, 0xd

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21535
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AA;->A0D:Ljava/lang/String;

    const/16 v2, 0xe5

    const/16 v1, 0x8

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A04:Lcom/facebook/ads/redexgen/X/7x;

    .line 21537
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0V()Landroid/os/Bundle;

    move-result-object v3

    .line 21538
    const/16 v2, 0xff

    const/16 v1, 0xb

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 21539
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Po;->getVideoProgressReportIntervalMs()I

    move-result v3

    .line 21540
    const/16 v2, 0x127

    const/16 v1, 0x1b

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21541
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21542
    return-void
.end method

.method private A05(Ljava/lang/String;)V
    .locals 7

    .line 21543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A09:Lcom/facebook/ads/redexgen/X/XT;

    .line 21544
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v6

    sget v5, Lcom/facebook/ads/redexgen/X/8m;->A1v:I

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 21545
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5a

    const/4 v1, 0x7

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21546
    const/16 v2, 0xc6

    const/4 v1, 0x7

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v5, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 21547
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21548
    sget-object v0, Lcom/facebook/ads/redexgen/X/AA;->A0F:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21549
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0l()V
    .locals 1

    .line 21550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A01:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 21551
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->onCtaBroadcast()V

    .line 21552
    :cond_0
    return-void
.end method

.method public final A0m()V
    .locals 7

    .line 21553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A09:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L9;->A04(Lcom/facebook/ads/redexgen/X/XT;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v2

    .line 21554
    .local p0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/AA;->A04(Landroid/content/Intent;)V

    .line 21555
    const/4 v1, 0x0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0e(ZI)V

    .line 21556
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/AA;->setVisibility(I)V

    .line 21557
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A09:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/L9;->A09(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21558
    :catch_0
    move-exception v5

    .line 21559
    .local v0, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A09:Lcom/facebook/ads/redexgen/X/XT;

    .line 21560
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v6

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A05:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 21561
    const/16 v2, 0xb0

    const/16 v1, 0xb

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 21562
    const/16 v2, 0x61

    const/16 v1, 0x11

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x5a

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21563
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getListener()Lcom/facebook/ads/redexgen/X/Mc;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A03:Lcom/facebook/ads/redexgen/X/Mc;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 21565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0D:Ljava/lang/String;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 21566
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Po;->onAttachedToWindow()V

    .line 21567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A08:Lcom/facebook/ads/redexgen/X/14;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/14;->A02()V

    .line 21568
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 21569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A08:Lcom/facebook/ads/redexgen/X/14;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/14;->A03()V

    .line 21570
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Po;->onDetachedFromWindow()V

    .line 21571
    return-void
.end method

.method public setAdEventManager(Lcom/facebook/ads/redexgen/X/JT;)V
    .locals 0

    .line 21572
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AA;->A02:Lcom/facebook/ads/redexgen/X/JT;

    .line 21573
    return-void
.end method

.method public setClientToken(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A04:Lcom/facebook/ads/redexgen/X/7x;

    if-eqz v0, :cond_0

    .line 21575
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7x;->A0g()V

    .line 21576
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AA;->A05:Ljava/lang/String;

    .line 21577
    if-eqz p1, :cond_1

    .line 21578
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AA;->A09:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AA;->A02:Lcom/facebook/ads/redexgen/X/JT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7x;

    invoke-direct {v0, v2, v1, p0, p1}, Lcom/facebook/ads/redexgen/X/7x;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Po;Ljava/lang/String;)V

    .line 21579
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A04:Lcom/facebook/ads/redexgen/X/7x;

    .line 21580
    return-void

    .line 21581
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableBackgroundVideo(Z)V
    .locals 1

    .line 21582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Po;->A0C:Lcom/facebook/ads/redexgen/X/QU;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QU;->setBackgroundPlaybackEnabled(Z)V

    .line 21583
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Mc;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Mc;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21584
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AA;->A03:Lcom/facebook/ads/redexgen/X/Mc;

    .line 21585
    return-void
.end method

.method public setNativeAd(Lcom/facebook/ads/NativeAd;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/NativeAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21586
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AA;->A01:Lcom/facebook/ads/NativeAd;

    .line 21587
    return-void
.end method

.method public setVideoCTA(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21588
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AA;->A06:Ljava/lang/String;

    .line 21589
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21590
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A04:Lcom/facebook/ads/redexgen/X/7x;

    if-nez v0, :cond_0

    .line 21591
    const/16 v2, 0x72

    const/16 v1, 0x19

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AA;->A05(Ljava/lang/String;)V

    .line 21592
    return-void

    .line 21593
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AA;->A07:Ljava/lang/String;

    .line 21594
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Po;->setVideoMPD(Ljava/lang/String;)V

    .line 21595
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21596
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A04:Lcom/facebook/ads/redexgen/X/7x;

    if-nez v0, :cond_0

    .line 21597
    const/16 v2, 0x72

    const/16 v1, 0x19

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AA;->A05(Ljava/lang/String;)V

    .line 21598
    return-void

    .line 21599
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AA;->A00:Landroid/net/Uri;

    .line 21600
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Po;->setVideoURI(Landroid/net/Uri;)V

    .line 21601
    return-void
.end method
