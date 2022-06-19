.class public final Lcom/facebook/ads/redexgen/X/HZ;
.super Landroid/view/TextureView;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/facebook/ads/redexgen/X/QU;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static A0N:[B

.field public static A0O:[Ljava/lang/String;

.field public static final A0P:Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Landroid/media/MediaPlayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Landroid/net/Uri;

.field public A08:Landroid/view/Surface;

.field public A09:Landroid/view/View;

.field public A0A:Landroid/widget/MediaController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0B:Lcom/facebook/ads/redexgen/X/Pj;

.field public A0C:Lcom/facebook/ads/redexgen/X/QW;

.field public A0D:Lcom/facebook/ads/redexgen/X/QW;

.field public A0E:Lcom/facebook/ads/redexgen/X/QX;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public final A0K:J

.field public final A0L:Landroid/widget/MediaController$MediaPlayerControl;

.field public final A0M:Lcom/facebook/ads/redexgen/X/XT;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "w6W1Pn4pGSy1veXw7fNic4Q20vJelJ2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "acNB2lhq8cVPZLtYghlcj8euurSBcqdx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "I2BPPFoGG3lXsTKKPy2FKKasdsM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uMMu8699SI696vicAGdUyhB1Kjcnsg5D"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "S7aPtd9QGtmzyQ9VrNW20IwmaDF5p1Ml"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zS648UlhjTBJXulz7NmFsyAIwaw2iCpI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZyXsHo9oibpczWLkt42IpHWLTZevRgPI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "euMEykkwaXnS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    .line 36557
    invoke-static {}, Lcom/facebook/ads/redexgen/X/HZ;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HZ;->A0P:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 2

    .line 36558
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 36559
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    .line 36560
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    .line 36561
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0I:Z

    .line 36562
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A03:I

    .line 36563
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A05:I

    .line 36564
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A04:I

    .line 36565
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A00:F

    .line 36566
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0H:Z

    .line 36567
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A01:I

    .line 36568
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0F:Z

    .line 36569
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0J:Z

    .line 36570
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A02:I

    .line 36571
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0G:Z

    .line 36572
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pj;->A04:Lcom/facebook/ads/redexgen/X/Pj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    .line 36573
    new-instance v0, Lcom/facebook/ads/redexgen/X/QR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QR;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    .line 36574
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0M:Lcom/facebook/ads/redexgen/X/XT;

    .line 36575
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;)V
    .locals 2

    .line 36576
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36577
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    .line 36578
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    .line 36579
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0I:Z

    .line 36580
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A03:I

    .line 36581
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A05:I

    .line 36582
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A04:I

    .line 36583
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A00:F

    .line 36584
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0H:Z

    .line 36585
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A01:I

    .line 36586
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0F:Z

    .line 36587
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0J:Z

    .line 36588
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A02:I

    .line 36589
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0G:Z

    .line 36590
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pj;->A04:Lcom/facebook/ads/redexgen/X/Pj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    .line 36591
    new-instance v0, Lcom/facebook/ads/redexgen/X/QR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QR;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    .line 36592
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0M:Lcom/facebook/ads/redexgen/X/XT;

    .line 36593
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 36594
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36595
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    .line 36596
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    .line 36597
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0I:Z

    .line 36598
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A03:I

    .line 36599
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A05:I

    .line 36600
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A04:I

    .line 36601
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A00:F

    .line 36602
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0H:Z

    .line 36603
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A01:I

    .line 36604
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0F:Z

    .line 36605
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0J:Z

    .line 36606
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A02:I

    .line 36607
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0G:Z

    .line 36608
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pj;->A04:Lcom/facebook/ads/redexgen/X/Pj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    .line 36609
    new-instance v0, Lcom/facebook/ads/redexgen/X/QR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QR;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    .line 36610
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0M:Lcom/facebook/ads/redexgen/X/XT;

    .line 36611
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/HZ;)Landroid/media/MediaPlayer;
    .locals 0

    .line 36612
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/HZ;)Landroid/widget/MediaController;
    .locals 0

    .line 36613
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0A:Landroid/widget/MediaController;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/HZ;)Lcom/facebook/ads/redexgen/X/QX;
    .locals 0

    .line 36614
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0E:Lcom/facebook/ads/redexgen/X/QX;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/HZ;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x72

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x1a0

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HZ;->A0N:[B

    return-void

    :array_0
    .array-data 1
        0x59t
        0x57t
        0x5bt
        0x59t
        0x1et
        0x3t
        0xft
        0x9t
        0x1at
        0x59t
        0x5bt
        0x41t
        0x5bt
        0x59t
        0x39t
        0x66t
        0x69t
        0x4bt
        0x44t
        0x44t
        0x45t
        0x5et
        0xat
        0x5at
        0x58t
        0x4ft
        0x5at
        0x4bt
        0x58t
        0x4ft
        0xat
        0x47t
        0x4ft
        0x4et
        0x43t
        0x4bt
        0xat
        0x5at
        0x46t
        0x4bt
        0x53t
        0x4ft
        0x58t
        0xat
        0x5dt
        0x43t
        0x5et
        0x42t
        0xat
        0x79t
        0x5ft
        0x58t
        0x4ct
        0x4bt
        0x49t
        0x4ft
        0x7et
        0x4ft
        0x52t
        0x5et
        0x5ft
        0x58t
        0x4ft
        0x10t
        0xat
        0x2dt
        0x1t
        0x1bt
        0x2t
        0xat
        0x0t
        0x49t
        0x1at
        0x4et
        0x1ct
        0xbt
        0x1at
        0x1ct
        0x7t
        0xbt
        0x18t
        0xbt
        0x4et
        0x18t
        0x7t
        0xat
        0xbt
        0x1t
        0x4et
        0x7t
        0x0t
        0x8t
        0x1t
        0x1ct
        0x3t
        0xft
        0x1at
        0x7t
        0x1t
        0x0t
        0x5dt
        0x7at
        0x72t
        0x77t
        0x7et
        0x7ft
        0x3bt
        0x6ft
        0x74t
        0x3bt
        0x74t
        0x6bt
        0x7et
        0x75t
        0x3bt
        0x7at
        0x68t
        0x68t
        0x7et
        0x6ft
        0x68t
        0x3bt
        0xft
        0x27t
        0x27t
        0x2ft
        0x24t
        0x2dt
        0x68t
        0x29t
        0x24t
        0x3ft
        0x29t
        0x31t
        0x3bt
        0x68t
        0x3ct
        0x20t
        0x3at
        0x27t
        0x3ft
        0x68t
        0x29t
        0x26t
        0x68t
        0x2dt
        0x30t
        0x2bt
        0x2dt
        0x38t
        0x3ct
        0x21t
        0x27t
        0x26t
        0x68t
        0x3ft
        0x21t
        0x3ct
        0x20t
        0x68t
        0x3bt
        0x2dt
        0x3ct
        0xat
        0x29t
        0x2bt
        0x23t
        0x2ft
        0x3at
        0x27t
        0x3dt
        0x26t
        0x2ct
        0xct
        0x3at
        0x29t
        0x3ft
        0x29t
        0x2at
        0x24t
        0x2dt
        0x68t
        0x27t
        0x26t
        0x68t
        0x6t
        0x27t
        0x3dt
        0x2ft
        0x29t
        0x3ct
        0x68t
        0x29t
        0x2at
        0x27t
        0x3et
        0x2dt
        0x66t
        0x68t
        0x3bt
        0x27t
        0x68t
        0x3ft
        0x2dt
        0x68t
        0x3bt
        0x21t
        0x24t
        0x2dt
        0x26t
        0x3ct
        0x24t
        0x31t
        0x68t
        0x21t
        0x2ft
        0x26t
        0x27t
        0x3at
        0x2dt
        0x68t
        0x21t
        0x3ct
        0x66t
        0x32t
        0x1at
        0x1at
        0x12t
        0x19t
        0x10t
        0x55t
        0x14t
        0x19t
        0x2t
        0x14t
        0xct
        0x6t
        0x55t
        0x1t
        0x1dt
        0x7t
        0x1at
        0x2t
        0x55t
        0x14t
        0x1bt
        0x55t
        0x10t
        0xdt
        0x16t
        0x10t
        0x5t
        0x1t
        0x1ct
        0x1at
        0x1bt
        0x55t
        0x2t
        0x1ct
        0x1t
        0x1dt
        0x55t
        0x6t
        0x10t
        0x1t
        0x33t
        0x1at
        0x7t
        0x10t
        0x12t
        0x7t
        0x1at
        0x0t
        0x1bt
        0x11t
        0x55t
        0x1at
        0x1bt
        0x55t
        0x3bt
        0x1at
        0x0t
        0x12t
        0x14t
        0x1t
        0x55t
        0x14t
        0x17t
        0x1at
        0x3t
        0x10t
        0x5bt
        0x55t
        0x6t
        0x1at
        0x55t
        0x2t
        0x10t
        0x55t
        0x6t
        0x1ct
        0x19t
        0x10t
        0x1bt
        0x1t
        0x19t
        0xct
        0x55t
        0x1ct
        0x12t
        0x1bt
        0x1at
        0x7t
        0x10t
        0x55t
        0x1ct
        0x1t
        0x5bt
        0x1ft
        0x36t
        0x25t
        0x33t
        0x20t
        0x36t
        0x25t
        0x32t
        0x77t
        0x36t
        0x34t
        0x34t
        0x32t
        0x3bt
        0x32t
        0x25t
        0x36t
        0x23t
        0x3et
        0x38t
        0x39t
        0x77t
        0x22t
        0x39t
        0x36t
        0x21t
        0x36t
        0x3et
        0x3bt
        0x36t
        0x35t
        0x3bt
        0x32t
        0x16t
        0x2dt
        0x22t
        0x21t
        0x2ft
        0x26t
        0x63t
        0x37t
        0x2ct
        0x63t
        0x20t
        0x2ft
        0x2ct
        0x30t
        0x26t
        0x35t
        0xat
        0x7t
        0x6t
        0xct
        0x43t
        0x10t
        0x17t
        0x2t
        0x17t
        0x6t
        0x43t
        0x0t
        0xbt
        0x2t
        0xdt
        0x4t
        0x6t
        0x7t
        0x43t
        0x17t
        0xct
        0x43t
        0x61t
        0x73t
        0x73t
        0x65t
        0x74t
        0x53t
        0x4ft
        0x42t
        0x5at
        0x46t
        0x51t
        0x73t
        0x6ct
        0x61t
        0x60t
        0x6at
        0x5et
        0x7t
        0x52t
        0x4dt
        0x44t
        0x51t
        0x7t
        0x5t
        0x1ft
        0x5t
        0x7t
    .end array-data
.end method

.method private A05()Z
    .locals 2

    .line 36615
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A07:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A06()Z
    .locals 2

    .line 36616
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A07:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A0A:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A06:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A07()Z
    .locals 2

    .line 36617
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A07:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A08()Z
    .locals 7

    .line 36618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 36619
    return v6

    .line 36620
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 36621
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36622
    :catch_0
    move-exception v1

    .line 36623
    .local p0, "e":Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0M:Lcom/facebook/ads/redexgen/X/XT;

    .line 36624
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A23:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 36625
    const/16 v2, 0x18a

    const/4 v1, 0x6

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 36626
    return v6
.end method

.method private A09(Landroid/view/Surface;)Z
    .locals 7
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 36628
    return v6

    .line 36629
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 36630
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36631
    :catch_0
    move-exception v1

    .line 36632
    .local p0, "e":Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0M:Lcom/facebook/ads/redexgen/X/XT;

    .line 36633
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A24:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 36634
    const/16 v2, 0x18a

    const/4 v1, 0x6

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 36635
    return v6
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/HZ;)Z
    .locals 0

    .line 36636
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0G:Z

    return p0
.end method

.method private setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V
    .locals 4

    .line 36861
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    if-eq p1, v0, :cond_1

    .line 36862
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36863
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16e

    const/16 v1, 0x17

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36864
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    .line 36865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0E:Lcom/facebook/ads/redexgen/X/QX;

    if-eqz v0, :cond_1

    .line 36866
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QX;->ACb(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 36867
    :cond_1
    return-void
.end method


# virtual methods
.method public final A7l()V
    .locals 2

    .line 36637
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0F:Z

    if-nez v0, :cond_0

    .line 36638
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->ACn(ZI)V

    .line 36639
    :cond_0
    return-void
.end method

.method public final A7x()Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 36640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge v1, v0, :cond_1

    .line 36641
    .end local v0
    :cond_0
    return v9

    .line 36642
    :cond_1
    const/4 v8, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v7

    array-length v6, v7

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v0, v7, v5

    .line 36643
    .local v8, "trackInfo":Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v0}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v3, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const-string v1, "iSqF26gJBktCMb0RObgKl91oEThpz7Z0"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_3

    .line 36644
    return v8

    .line 36645
    .end local v8    # "trackInfo":Landroid/media/MediaPlayer$TrackInfo;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 36646
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 36647
    :cond_4
    return v9

    .line 36648
    :catch_0
    move-exception v4

    .line 36649
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/HZ;->A0P:Ljava/lang/String;

    const/16 v2, 0x41

    const/16 v1, 0x23

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36650
    return v8
.end method

.method public final A7y()Z
    .locals 1

    .line 36651
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0J:Z

    return v0
.end method

.method public final A8T()Z
    .locals 1

    .line 36652
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0I:Z

    return v0
.end method

.method public final ACn(ZI)V
    .locals 2

    .line 36653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0M:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A2q(I)V

    .line 36654
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/QW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    .line 36655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 36656
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HZ;->A05()Z

    move-result v0

    if-nez v0, :cond_1

    .line 36657
    return-void

    .line 36658
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    goto :goto_0

    .line 36659
    :cond_1
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0I:Z

    .line 36660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 36661
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A06:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_2

    .line 36662
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 36663
    :cond_2
    :goto_0
    return-void
.end method

.method public final AEf(I)V
    .locals 1

    .line 36664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0M:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A9S(I)V

    .line 36665
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A09:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 36666
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->AEr(I)V

    .line 36667
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A03:I

    .line 36668
    return-void
.end method

.method public final AEk(Lcom/facebook/ads/redexgen/X/Pj;I)V
    .locals 5

    .line 36669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0M:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A31(I)V

    .line 36670
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0I:Z

    .line 36671
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A0A:Lcom/facebook/ads/redexgen/X/QW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    .line 36672
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    .line 36673
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A0A:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A07:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_0

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v1, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const-string v1, "NTKGPTGyq7PSuZ6pDxSrkOD3BAS3oRMw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v4, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A06:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_1

    .line 36674
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    if-nez v1, :cond_4

    .line 36675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A07:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setup(Landroid/net/Uri;)V

    .line 36676
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HZ;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36677
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HZ;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const-string v1, "Wn6W9Nu3dNfA4pP49CdphRQGwehyl3Rd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p0, v4, v3, v3}, Lcom/facebook/ads/redexgen/X/HZ;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 36678
    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const-string v1, "pXleF17jKjib"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {p0, v4, v3, v3}, Lcom/facebook/ads/redexgen/X/HZ;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_1

    .line 36679
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A03:I

    if-lez v0, :cond_5

    .line 36680
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 36681
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 36682
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A07:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0J:Z

    if-eqz v0, :cond_1

    .line 36683
    :cond_6
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A0A:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEr(I)V
    .locals 3

    .line 36684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0M:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A33(I)V

    .line 36685
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    .line 36686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 36687
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 36688
    .local p0, "currentPosition":I
    if-lez v0, :cond_0

    .line 36689
    iput v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A03:I

    .line 36690
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_2

    .line 36691
    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const-string v1, "KulxFUFqA4xnUTvaQLfyg7cstmOjzycv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HZ;->A08()Z

    .line 36692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 36693
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    .line 36694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0A:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 36695
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 36696
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0A:Landroid/widget/MediaController;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 36697
    .end local p0    # "currentPosition":I
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 36698
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final destroy()V
    .locals 2

    .line 36699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 36700
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/HZ;->A09(Landroid/view/Surface;)Z

    .line 36701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 36702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 36703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 36704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 36705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 36706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 36707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 36708
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HZ;->A08()Z

    .line 36709
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    .line 36710
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 36711
    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 36712
    const/4 v1, 0x0

    .line 36713
    .local p0, "position":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HZ;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 36715
    :cond_0
    return v1
.end method

.method public getDuration()I
    .locals 4

    .line 36716
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HZ;->A06()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const-string v1, "tqb6wmVqQGZxPylUtz2fkCIx7Bf2WilJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 36717
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 36718
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    .line 36719
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0K:J

    return-wide v0
.end method

.method public getStartReason()Lcom/facebook/ads/redexgen/X/Pj;
    .locals 1

    .line 36720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/redexgen/X/QW;
    .locals 1

    .line 36721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    return-object v0
.end method

.method public getTargetState()Lcom/facebook/ads/redexgen/X/QW;
    .locals 1

    .line 36722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 36723
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A04:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 36724
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A05:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 36725
    return-object p0
.end method

.method public getVolume()F
    .locals 1

    .line 36726
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A00:F

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 6

    .line 36727
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 36728
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HZ;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36729
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A03:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 36730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0M:Lcom/facebook/ads/redexgen/X/XT;

    .line 36731
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    const/4 v0, 0x5

    .line 36732
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2u(I)V

    .line 36733
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->AEr(I)V

    .line 36734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0M:Lcom/facebook/ads/redexgen/X/XT;

    .line 36735
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A2L:I

    const/16 v2, 0x13e

    const/16 v1, 0x21

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;)V

    .line 36736
    const/16 v2, 0x190

    const/4 v1, 0x5

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 36737
    :cond_0
    return-void
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 36738
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 36739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 36740
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 36741
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A06:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 36742
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->seekTo(I)V

    .line 36743
    iput v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A03:I

    .line 36744
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    .line 36745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0M:Lcom/facebook/ads/redexgen/X/XT;

    .line 36746
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x195

    const/16 v1, 0xb

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/4 v1, 0x2

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36747
    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->A9R(Ljava/lang/String;)V

    .line 36748
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A01:I

    const/4 v2, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HZ;->getState()Lcom/facebook/ads/redexgen/X/QW;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A0A:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_0

    .line 36749
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A01:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A01:I

    .line 36750
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->AEr(I)V

    .line 36751
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->AEk(Lcom/facebook/ads/redexgen/X/Pj;I)V

    .line 36752
    :goto_0
    return v2

    .line 36753
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A03:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 36754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0M:Lcom/facebook/ads/redexgen/X/XT;

    .line 36755
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    .line 36756
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/0R;->A2u(I)V

    .line 36757
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->AEr(I)V

    goto :goto_0
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .line 36758
    const/4 v0, 0x3

    if-eq p2, v0, :cond_5

    const/16 v0, 0x2bd

    if-eq p2, v0, :cond_2

    const/16 v0, 0x2be

    if-eq p2, v0, :cond_1

    .line 36759
    :cond_0
    :goto_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 36760
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HZ;->A07()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36761
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A0A:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    goto :goto_0

    .line 36762
    :cond_2
    sget-object v3, Lcom/facebook/ads/redexgen/X/QW;->A02:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v1, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const-string v1, "iL0L5EQxu2M5tvy2sZDjl5tOkB9wsg4Q"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "qEr4cYtmjtQdjlZthk5xBRgssZbq5gW6"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 36763
    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const-string v1, "BctcOQJYgBcKf8RdBMRoW9O8jkER1gO3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "NFF5b4NOHp1wMQpQtAU8ibXMpYWuxgZg"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    .line 36764
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0J:Z

    .line 36765
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A0A:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_6

    .line 36766
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A0A:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 36767
    :cond_6
    return v2
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    .line 36768
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A07:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 36769
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0H:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0G:Z

    if-nez v0, :cond_3

    .line 36770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0M:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0C()Landroid/app/Activity;

    move-result-object v1

    .line 36771
    .local p0, "activityContext":Landroid/app/Activity;
    if-eqz v1, :cond_2

    .line 36772
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0A:Landroid/widget/MediaController;

    .line 36773
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0A:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A09:Landroid/view/View;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 36774
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0A:Landroid/widget/MediaController;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    sget-object v1, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const-string v1, "fPjFRSSzuUrY85KdwEQXHAUI7gq3zgJX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "QlnNj2Zi0n3XZkktRetea07zoE6PUgNL"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 36775
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0A:Landroid/widget/MediaController;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    goto :goto_0

    .line 36776
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0A:Landroid/widget/MediaController;

    .line 36777
    .end local p0    # "activityContext":Landroid/app/Activity;
    :cond_3
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A00:F

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setRequestedVolume(F)V

    .line 36778
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A05:I

    .line 36779
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A04:I

    .line 36780
    iget v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A03:I

    if-lez v1, :cond_5

    .line 36781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    const/4 v2, 0x0

    if-lt v1, v0, :cond_4

    .line 36782
    iput v2, p0, Lcom/facebook/ads/redexgen/X/HZ;->A03:I

    .line 36783
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A03:I

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 36784
    iput v2, p0, Lcom/facebook/ads/redexgen/X/HZ;->A03:I

    .line 36785
    :cond_5
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v3, Lcom/facebook/ads/redexgen/X/QW;->A0A:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const-string v1, "i4HMjCzdRtS7Zf5jyUfqsJgJBFC3Hgk3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "nPyigXhxANl12gOwrMulZJ84NGYQcgH1"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_6

    .line 36786
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->AEk(Lcom/facebook/ads/redexgen/X/Pj;I)V

    .line 36787
    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 36788
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0E:Lcom/facebook/ads/redexgen/X/QX;

    if-nez v2, :cond_0

    .line 36789
    return-void

    .line 36790
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A03:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QX;->AC1(II)V

    .line 36791
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A03:I

    .line 36792
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 36793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A08:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 36794
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A08:Landroid/view/Surface;

    .line 36795
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A08:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A09(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36796
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A03:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 36797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0M:Lcom/facebook/ads/redexgen/X/XT;

    .line 36798
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    const/4 v0, 0x4

    .line 36799
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2u(I)V

    .line 36800
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HZ;->destroy()V

    .line 36801
    return-void

    .line 36802
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0I:Z

    if-nez v0, :cond_2

    .line 36803
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    const/4 v0, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->AEk(Lcom/facebook/ads/redexgen/X/Pj;I)V

    .line 36804
    :cond_2
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    .line 36805
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/HZ;->A09(Landroid/view/Surface;)Z

    .line 36806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A08:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 36807
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 36808
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A08:Landroid/view/Surface;

    .line 36809
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_1

    .line 36810
    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->ACn(ZI)V

    .line 36811
    :cond_1
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const-string v1, "wJEag4Up5dB02EoPbWjrYUJlPYnnpJPt"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 36812
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 36813
    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 36814
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A05:I

    .line 36815
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A04:I

    .line 36816
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A05:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A04:I

    if-eqz v0, :cond_0

    .line 36817
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HZ;->requestLayout()V

    .line 36818
    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 36819
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    .line 36820
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 36821
    return-void

    .line 36822
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0A:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36823
    return-void

    .line 36824
    :cond_1
    if-nez p1, :cond_3

    .line 36825
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_2

    .line 36826
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HZ;->A7l()V

    .line 36827
    :cond_2
    :goto_0
    return-void

    .line 36828
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0I:Z

    if-nez v0, :cond_2

    .line 36829
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->AEk(Lcom/facebook/ads/redexgen/X/Pj;I)V

    goto :goto_0
.end method

.method public final seekTo(I)V
    .locals 1

    .line 36830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HZ;->A06()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36831
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HZ;->getDuration()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 36832
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HZ;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A02:I

    .line 36833
    iput p1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A03:I

    .line 36834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 36835
    :cond_0
    :goto_0
    return-void

    .line 36836
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A03:I

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 36837
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 36838
    invoke-super {p0, p1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36839
    :cond_0
    :goto_0
    return-void

    .line 36840
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36841
    sget-object v3, Lcom/facebook/ads/redexgen/X/HZ;->A0P:Ljava/lang/String;

    const/16 v2, 0x7a

    const/16 v1, 0x66

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackgroundPlaybackEnabled(Z)V
    .locals 0

    .line 36842
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0F:Z

    .line 36843
    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    .line 36844
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A09:Landroid/view/View;

    .line 36845
    new-instance v0, Lcom/facebook/ads/redexgen/X/QT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QT;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36846
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 36847
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 36848
    invoke-super {p0, p1}, Landroid/view/TextureView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 36849
    :cond_0
    :goto_0
    return-void

    .line 36850
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36851
    sget-object v3, Lcom/facebook/ads/redexgen/X/HZ;->A0P:Ljava/lang/String;

    const/16 v2, 0xe0

    const/16 v1, 0x5e

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFullScreen(Z)V
    .locals 1

    .line 36852
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0H:Z

    .line 36853
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0H:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0G:Z

    if-nez v0, :cond_0

    .line 36854
    new-instance v0, Lcom/facebook/ads/redexgen/X/QS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QS;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36855
    :cond_0
    return-void
.end method

.method public setRequestedVolume(F)V
    .locals 2

    .line 36856
    iput p1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A00:F

    .line 36857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0C:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_0

    .line 36858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 36859
    :cond_0
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36860
    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/QX;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/QX;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36868
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0E:Lcom/facebook/ads/redexgen/X/QX;

    .line 36869
    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .locals 15

    .line 36870
    const/16 v2, 0x15f

    const/16 v1, 0xf

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A03(III)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0M:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2t()V

    .line 36871
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0J:Z

    .line 36872
    move-object/from16 v6, p1

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/HZ;->A07:Landroid/net/Uri;

    .line 36873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 36874
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HZ;->A08()Z

    .line 36875
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A09(Landroid/view/Surface;)Z

    .line 36876
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    .line 36877
    .local v2, "mMediaPlayer":Landroid/media/MediaPlayer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    goto :goto_0

    .line 36878
    .end local v2    # "mMediaPlayer":Landroid/media/MediaPlayer;
    :cond_0
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V

    .line 36879
    .restart local v2    # "mMediaPlayer":Landroid/media/MediaPlayer;
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x185

    const/4 v1, 0x5

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36880
    const/4 v8, 0x0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 36881
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HZ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36882
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .local v0, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_2
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v11

    .line 36883
    .local v3, "start":J
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v13

    .line 36884
    .local v0, "end":J
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual/range {v9 .. v14}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36885
    :try_start_3
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto/16 :goto_6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 36886
    :catch_0
    move-exception v2

    goto/16 :goto_5

    .line 36887
    :catchall_0
    move-exception v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const-string v1, "jmeNgRjQ2jv"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    goto :goto_3

    .line 36888
    :catch_1
    move-exception v7

    goto :goto_1

    :catch_2
    move-exception v7

    :goto_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A0O:[Ljava/lang/String;

    const-string v1, "vDexTJGknhfX1yfKKY4uPeWNY7BUXXsv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    goto :goto_2

    :catch_3
    move-exception v7

    goto :goto_2

    :catch_4
    move-exception v7

    .line 36889
    .local v0, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    sget-object v6, Lcom/facebook/ads/redexgen/X/HZ;->A0P:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x64

    const/16 v1, 0x16

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36890
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A03:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 36891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0M:Lcom/facebook/ads/redexgen/X/XT;

    .line 36892
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    const/4 v0, 0x2

    .line 36893
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2u(I)V

    .line 36894
    .end local v0    # "ex":Ljava/lang/Exception;
    if-eqz v8, :cond_5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 36895
    :try_start_5
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 36896
    :catch_5
    move-exception v2

    .line 36897
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    sget-object v1, Lcom/facebook/ads/redexgen/X/HZ;->A0P:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 36898
    .end local v0    # "e":Ljava/io/IOException;
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :catchall_1
    move-exception v5

    .restart local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_3
    if-eqz v8, :cond_3

    .line 36899
    :try_start_7
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 36900
    :catch_6
    move-exception v2

    .line 36901
    .local v3, "e":Ljava/io/IOException;
    :try_start_8
    sget-object v1, Lcom/facebook/ads/redexgen/X/HZ;->A0P:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36902
    .end local v3    # "e":Ljava/io/IOException;
    .end local v2    # "mMediaPlayer":Landroid/media/MediaPlayer;
    .end local v9
    :cond_3
    :goto_4
    throw v5

    .line 36903
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v2    # "mMediaPlayer":Landroid/media/MediaPlayer;
    .restart local v9
    :cond_4
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_6

    .line 36904
    .local v1, "e":Ljava/io/IOException;
    :goto_5
    sget-object v1, Lcom/facebook/ads/redexgen/X/HZ;->A0P:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36905
    :cond_5
    :goto_6
    invoke-virtual {v9, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 36906
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 36907
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 36908
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 36909
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 36910
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 36911
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 36912
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 36913
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 36914
    iput-object v9, p0, Lcom/facebook/ads/redexgen/X/HZ;->A06:Landroid/media/MediaPlayer;

    .line 36915
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    goto :goto_7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 36916
    :catch_7
    move-exception v6

    .line 36917
    .local p0, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A03:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HZ;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 36918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A0M:Lcom/facebook/ads/redexgen/X/XT;

    .line 36919
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    const/4 v0, 0x3

    .line 36920
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2u(I)V

    .line 36921
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->release()V

    .line 36922
    sget-object v5, Lcom/facebook/ads/redexgen/X/HZ;->A0P:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10

    const/16 v1, 0x31

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36923
    .end local p0    # "e":Ljava/lang/Exception;
    :goto_7
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/HZ;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 36924
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HZ;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36925
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HZ;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v4}, Lcom/facebook/ads/redexgen/X/HZ;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 36926
    :cond_6
    return-void
.end method
