.class public abstract Lcom/facebook/ads/redexgen/X/T4;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MV;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Lcom/facebook/ads/redexgen/X/LS;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/P5;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public A05:Lcom/facebook/ads/redexgen/X/17;

.field public final A06:Lcom/facebook/ads/redexgen/X/Lu;

.field public final A07:Lcom/facebook/ads/redexgen/X/MU;

.field public final A08:Lcom/facebook/ads/redexgen/X/cj;

.field public final A09:Lcom/facebook/ads/redexgen/X/XT;

.field public final A0A:Lcom/facebook/ads/redexgen/X/JT;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Jb;

.field public final A0C:Lcom/facebook/ads/redexgen/X/MT;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fqT9snXDZkE2N6bIU2twhbCcrvrF5wQR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "W8MK3buqarkLhDixdfnbfGeXuw3i87xB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "M5iWaw3OwwKxChS5bTa9KUrj63pwu1Od"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QKu8TlGQ3D7NsDDaY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OUnrWL6BanKvWJF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "644mHU9zQQHAcSiNB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MqQzuM0GD0HqxOL2854PPJvoiao7nama"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mSpdOD621tCilusEUOf234Jx9LR3KzyX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/T4;->A0E:[Ljava/lang/String;

    .line 53544
    invoke-static {}, Lcom/facebook/ads/redexgen/X/T4;->A0O()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/cj;)V
    .locals 7

    .line 53545
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A04:Z

    .line 53547
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A03:Z

    .line 53548
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T4;->A09:Lcom/facebook/ads/redexgen/X/XT;

    .line 53549
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/T4;->A0A:Lcom/facebook/ads/redexgen/X/JT;

    .line 53550
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/T4;->A07:Lcom/facebook/ads/redexgen/X/MU;

    .line 53551
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lu;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Lu;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A06:Lcom/facebook/ads/redexgen/X/Lu;

    .line 53552
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    .line 53553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    .line 53554
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T4;->A0A:Lcom/facebook/ads/redexgen/X/JT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A0B:Lcom/facebook/ads/redexgen/X/Jb;

    .line 53555
    new-instance v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/T4;->A09:Lcom/facebook/ads/redexgen/X/XT;

    .line 53556
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T4;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/T4;->A0B:Lcom/facebook/ads/redexgen/X/Jb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    .line 53557
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0D()I

    move-result v6

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/Jb;II)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/T4;->A0C:Lcom/facebook/ads/redexgen/X/MT;

    .line 53558
    return-void
.end method

.method private A0K(I)Lcom/facebook/ads/redexgen/X/1I;
    .locals 4

    .line 53559
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 53560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A05:Lcom/facebook/ads/redexgen/X/17;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    return-object v0

    .line 53561
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T4;->A05:Lcom/facebook/ads/redexgen/X/17;

    sget-object v1, Lcom/facebook/ads/redexgen/X/T4;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/T4;->A0E:[Ljava/lang/String;

    const-string v1, "MYlveE6g4wScBr3MsnlZwbj0w3RA4Q0m"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/17;->A00()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    return-object v0
.end method

.method public static A0L(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/T4;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x51

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0M()V
    .locals 0

    .line 53562
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T4;->removeAllViews()V

    .line 53563
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 53564
    return-void
.end method

.method private A0N()V
    .locals 7

    .line 53565
    const/4 v0, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53566
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T4;->A0X()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A02:Lcom/facebook/ads/redexgen/X/P5;

    if-nez v0, :cond_0

    .line 53567
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/T4;->A04:Z

    .line 53568
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/T4;->A09:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    .line 53569
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    .line 53570
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/P3;

    invoke-direct {v1, v6, v2, v0}, Lcom/facebook/ads/redexgen/X/P3;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1S;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    .line 53571
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A08(Lcom/facebook/ads/redexgen/X/1I;)Lcom/facebook/ads/redexgen/X/P3;

    move-result-object v0

    .line 53572
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P3;->A0B()Lcom/facebook/ads/redexgen/X/P5;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A02:Lcom/facebook/ads/redexgen/X/P5;

    .line 53573
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/T4;->A02:Lcom/facebook/ads/redexgen/X/P5;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T4;->A0B:Lcom/facebook/ads/redexgen/X/Jb;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0U:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Jb;Lcom/facebook/ads/redexgen/X/Ja;)V

    .line 53574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A07:Lcom/facebook/ads/redexgen/X/MU;

    invoke-interface {v0, p0, v5, v3}, Lcom/facebook/ads/redexgen/X/MU;->A3G(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 53575
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T4;->A07:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A02:Lcom/facebook/ads/redexgen/X/P5;

    invoke-interface {v1, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/MU;->A3G(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 53576
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T4;->A02:Lcom/facebook/ads/redexgen/X/P5;

    new-instance v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Lcom/facebook/ads/redexgen/X/T4;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/P5;->A04(Lcom/facebook/ads/redexgen/X/P4;)V

    .line 53577
    :goto_0
    return-void

    .line 53578
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A07:Lcom/facebook/ads/redexgen/X/MU;

    invoke-interface {v0, p0, v5, v3}, Lcom/facebook/ads/redexgen/X/MU;->A3G(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 53579
    goto :goto_0
.end method

.method public static A0O()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/T4;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x58t
        0x54t
        0x56t
        0x15t
        0x5dt
        0x5at
        0x58t
        0x5et
        0x59t
        0x54t
        0x54t
        0x50t
        0x15t
        0x5at
        0x5ft
        0x48t
        0x15t
        0x52t
        0x55t
        0x4ft
        0x5et
        0x49t
        0x48t
        0x4ft
        0x52t
        0x4ft
        0x52t
        0x5at
        0x57t
        0x15t
        0x52t
        0x56t
        0x4bt
        0x49t
        0x5et
        0x48t
        0x48t
        0x52t
        0x54t
        0x55t
        0x15t
        0x57t
        0x54t
        0x5ct
        0x5ct
        0x5et
        0x5ft
    .end array-data
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/1I;Z)V
    .locals 3

    .line 53580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A0C:Lcom/facebook/ads/redexgen/X/MT;

    .line 53581
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MT;->getToolbarHeight()I

    move-result v2

    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53582
    .local p0, "toolbarParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A0C:Lcom/facebook/ads/redexgen/X/MT;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/MT;->A04(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 53584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A0C:Lcom/facebook/ads/redexgen/X/MT;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/T4;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53585
    return-void
.end method

.method public static synthetic A0Q(Lcom/facebook/ads/redexgen/X/T4;Z)Z
    .locals 0

    .line 53586
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/T4;->A04:Z

    return p1
.end method

.method public static synthetic A0R(Lcom/facebook/ads/redexgen/X/T4;Z)Z
    .locals 0

    .line 53587
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/T4;->A03:Z

    return p1
.end method


# virtual methods
.method public final A0S()V
    .locals 1

    .line 53588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A00:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/OJ;

    if-nez v0, :cond_1

    .line 53589
    :cond_0
    return-void

    .line 53590
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T4;->A0Y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/OJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OJ;->A0a()V

    .line 53592
    :goto_0
    return-void

    .line 53593
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/OJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OJ;->A0Z()V

    goto :goto_0
.end method

.method public final A0T(I)V
    .locals 2

    .line 53594
    new-instance v1, Lcom/facebook/ads/redexgen/X/T5;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/redexgen/X/T5;-><init>(Lcom/facebook/ads/redexgen/X/T4;I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/LS;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/LS;-><init>(ILcom/facebook/ads/redexgen/X/LR;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A01:Lcom/facebook/ads/redexgen/X/LS;

    .line 53595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A03:Z

    .line 53596
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T4;->A0S()V

    .line 53597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A01:Lcom/facebook/ads/redexgen/X/LS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LS;->A07()Z

    .line 53598
    return-void
.end method

.method public final A0U(Landroid/view/View;ZI)V
    .locals 4

    .line 53599
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T4;->A00:Landroid/view/View;

    .line 53600
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T4;->A06:Lcom/facebook/ads/redexgen/X/Lu;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lt;->A03:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Lu;->A05(Lcom/facebook/ads/redexgen/X/Lt;)V

    .line 53601
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T4;->A0M()V

    .line 53602
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53603
    .local p0, "contentParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 53604
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53605
    invoke-virtual {p0, p1, v2}, Lcom/facebook/ads/redexgen/X/T4;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53606
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/T4;->A0K(I)Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    .line 53607
    .local p2, "colorInfo":Lcom/facebook/ads/redexgen/X/1I;
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/T4;->A0P(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 53608
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/1I;->A07(Z)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 53609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A07:Lcom/facebook/ads/redexgen/X/MU;

    if-eqz v0, :cond_2

    .line 53610
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T4;->A0N()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/T4;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 53611
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A0C:Lcom/facebook/ads/redexgen/X/MT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MT;->getToolbarHeight()I

    move-result v0

    goto :goto_0

    .line 53612
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/T4;->A0E:[Ljava/lang/String;

    const-string v1, "NsWlVTe7e8AxmZfep9MsD1WsEVvEb3lR"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz p2, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_2

    .line 53613
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T4;->A06:Lcom/facebook/ads/redexgen/X/Lu;

    sget-object v1, Lcom/facebook/ads/redexgen/X/T4;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/T4;->A0E:[Ljava/lang/String;

    const-string v1, "LlUUcmlOaTawHlOzciUSj9DhXPbTXBAe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lt;->A04:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Lu;->A05(Lcom/facebook/ads/redexgen/X/Lt;)V

    .line 53614
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0V(Lcom/facebook/ads/redexgen/X/52;)V
    .locals 5

    .line 53615
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T4;->A06:Lcom/facebook/ads/redexgen/X/Lu;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/52;->A0H()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Lu;->A04(Landroid/view/Window;)V

    .line 53616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A05:Lcom/facebook/ads/redexgen/X/17;

    .line 53617
    const/4 v1, 0x0

    .line 53618
    .local p0, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v1

    .line 53620
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/T4;->A0C:Lcom/facebook/ads/redexgen/X/MT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    .line 53621
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    .line 53622
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v2

    .line 53623
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A03()I

    move-result v1

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    .line 53624
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1Z;

    move-result-object v0

    .line 53625
    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MT;->setPageDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1Z;)V

    .line 53626
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T4;->A0C:Lcom/facebook/ads/redexgen/X/MT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/T8;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/T8;-><init>(Lcom/facebook/ads/redexgen/X/T4;Lcom/facebook/ads/redexgen/X/52;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MT;->setToolbarListener(Lcom/facebook/ads/redexgen/X/MS;)V

    .line 53627
    return-void

    .line 53628
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A0W(Lcom/facebook/ads/redexgen/X/52;)V
    .locals 4

    .line 53629
    move-object v3, p0

    .line 53630
    .local p0, "interstitialView":Lcom/facebook/ads/redexgen/X/T4;
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 53631
    .local p1, "fadeOut":Landroid/view/animation/Animation;
    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 53632
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mb;

    invoke-direct {v0, p0, v3, p1}, Lcom/facebook/ads/redexgen/X/Mb;-><init>(Lcom/facebook/ads/redexgen/X/T4;Lcom/facebook/ads/redexgen/X/T4;Lcom/facebook/ads/redexgen/X/52;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 53633
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/T4;->startAnimation(Landroid/view/animation/Animation;)V

    .line 53634
    return-void
.end method

.method public final A0X()Z
    .locals 4

    .line 53635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0X()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    .line 53636
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0O()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/T4;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/T4;->A0E:[Ljava/lang/String;

    const-string v1, "rwsNokIOLx9Fj0KMvDMbhHWjcozH5rOe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 53637
    :goto_0
    return v0
.end method

.method public final A0Y()Z
    .locals 1

    .line 53638
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A03:Z

    return v0
.end method

.method public final A0Z()Z
    .locals 1

    .line 53639
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A04:Z

    return v0
.end method

.method public abstract A0a()Z
.end method

.method public ABU(Z)V
    .locals 1

    .line 53640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A01:Lcom/facebook/ads/redexgen/X/LS;

    if-eqz v0, :cond_0

    .line 53641
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LS;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A01:Lcom/facebook/ads/redexgen/X/LS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LS;->A06()Z

    .line 53643
    :cond_0
    return-void
.end method

.method public ABt(Z)V
    .locals 1

    .line 53644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A01:Lcom/facebook/ads/redexgen/X/LS;

    if-eqz v0, :cond_0

    .line 53645
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LS;->A04()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A01:Lcom/facebook/ads/redexgen/X/LS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LS;->A07()Z

    .line 53647
    :cond_0
    return-void
.end method

.method public getAdEventManager()Lcom/facebook/ads/redexgen/X/JT;
    .locals 1

    .line 53648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A0A:Lcom/facebook/ads/redexgen/X/JT;

    return-object v0
.end method

.method public getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/MU;
    .locals 1

    .line 53649
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A07:Lcom/facebook/ads/redexgen/X/MU;

    return-object v0
.end method

.method public abstract getCloseButtonStyle()I
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 53650
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 53651
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A06:Lcom/facebook/ads/redexgen/X/Lu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lu;->A03()V

    .line 53652
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T4;->A0C:Lcom/facebook/ads/redexgen/X/MT;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MT;->setToolbarListener(Lcom/facebook/ads/redexgen/X/MS;)V

    .line 53653
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T4;->A0M()V

    .line 53654
    return-void
.end method

.method public setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/Lz;)V
    .locals 4

    .line 53655
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Lz;->A05()V

    .line 53656
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T4;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53657
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T4;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v3

    .line 53658
    const/4 v2, 0x0

    const/16 v1, 0x2f

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T4;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/MU;->A3q(Ljava/lang/String;)V

    .line 53659
    :cond_0
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/MU;)V
    .locals 0

    .line 53660
    return-void
.end method
