.class public final Lcom/facebook/ads/redexgen/X/b8;
.super Lcom/facebook/ads/redexgen/X/57;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/MediaViewApi;
.implements Lcom/facebook/ads/internal/context/Repairable;
.implements Lcom/facebook/ads/redexgen/X/8H;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Landroid/view/View;

.field public A02:Landroid/widget/ImageView;

.field public A03:Lcom/facebook/ads/MediaView;

.field public A04:Lcom/facebook/ads/MediaViewListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/MediaViewVideoRenderer;

.field public A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

.field public A07:Lcom/facebook/ads/redexgen/X/XT;

.field public A08:Lcom/facebook/ads/redexgen/X/18;

.field public A09:Lcom/facebook/ads/redexgen/X/Nr;

.field public A0A:Lcom/facebook/ads/redexgen/X/PM;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0B:Z

.field public A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5egxRyJvv3hsImr6xVPVZGZzS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S92E58UIdGCmPOb4LYA51SRur0tU5vPU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gB2LJBWgacco1yi3dwEv6yCRJyLib4yq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IRYDxixZynQ1VjnPzR0JfxvjieAE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Yx6PPUM30uHFy3rHO75LIsUaVykI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YSQgGTlHzzB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fqdcFq1cD4m6uZ0nLvDLKOa7nCA9CaYH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MqJIv4BM2hfR6AMSoGkEEGT8SPZgcE8o"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    .line 68572
    invoke-static {}, Lcom/facebook/ads/redexgen/X/b8;->A05()V

    const-class v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/b8;->A0F:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68573
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/57;-><init>()V

    .line 68574
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/MediaView;
    .locals 0

    .line 68575
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/MediaViewVideoRenderer;
    .locals 0

    .line 68576
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/b8;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .locals 4

    .line 68577
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A0C:Z

    if-nez v0, :cond_2

    .line 68578
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    sget-object v2, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const-string v1, "HiqmuX4YAHl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "JtgDxExoVYEb5OmxUIRsQ7gjV"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 68579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A08:Lcom/facebook/ads/redexgen/X/18;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 68580
    :cond_1
    sget v2, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    .line 68581
    .local p0, "density":F
    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 68582
    .local v0, "hPadding":I
    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 68583
    .local v3, "vPadding":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A08:Lcom/facebook/ads/redexgen/X/18;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/18;->setChildSpacing(I)V

    .line 68584
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A08:Lcom/facebook/ads/redexgen/X/18;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Lcom/facebook/ads/redexgen/X/18;->setPadding(IIII)V

    .line 68585
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A08:Lcom/facebook/ads/redexgen/X/18;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/18;->setVisibility(I)V

    .line 68586
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68587
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A08:Lcom/facebook/ads/redexgen/X/18;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    .line 68589
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68590
    return-void

    .line 68591
    .end local p0    # "density":F
    .end local v0    # "hPadding":I
    .end local v3    # "vPadding":I
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x2e

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b8;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A04()V
    .locals 2

    .line 68592
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ld;->A0A:Lcom/facebook/ads/redexgen/X/Ld;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ld;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Ld;)V

    .line 68593
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ld;->A0A:Lcom/facebook/ads/redexgen/X/Ld;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ld;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Ld;)V

    .line 68594
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ld;->A0A:Lcom/facebook/ads/redexgen/X/Ld;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ld;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Ld;)V

    .line 68595
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ld;->A0A:Lcom/facebook/ads/redexgen/X/Ld;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ld;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Ld;)V

    .line 68596
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x10e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/b8;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x38t
        0x1at
        0x9t
        0x14t
        0xet
        0x8t
        0x1et
        0x17t
        0x5bt
        0x9t
        0x1et
        0x15t
        0x1ft
        0x1et
        0x9t
        0x1et
        0x9t
        0x5bt
        0x16t
        0xet
        0x8t
        0xft
        0x5bt
        0x19t
        0x1et
        0x5bt
        0x8t
        0x1et
        0xft
        0x5bt
        0x19t
        0x1et
        0x1dt
        0x14t
        0x9t
        0x1et
        0x5bt
        0x15t
        0x1at
        0xft
        0x12t
        0xdt
        0x1et
        0x3at
        0x1ft
        0x55t
        0x1at
        0x1et
        0x1dt
        0x29t
        0x38t
        0x35t
        0x39t
        0x32t
        0x3ft
        0x39t
        0x12t
        0x39t
        0x28t
        0x2bt
        0x33t
        0x2et
        0x37t
        0x40t
        0x64t
        0x68t
        0x6et
        0x6ct
        0x29t
        0x7bt
        0x6ct
        0x67t
        0x6dt
        0x6ct
        0x7bt
        0x6ct
        0x7bt
        0x29t
        0x64t
        0x7ct
        0x7at
        0x7dt
        0x29t
        0x6bt
        0x6ct
        0x29t
        0x7at
        0x6ct
        0x7dt
        0x29t
        0x6bt
        0x6ct
        0x6ft
        0x66t
        0x7bt
        0x6ct
        0x29t
        0x67t
        0x68t
        0x7dt
        0x60t
        0x7ft
        0x6ct
        0x48t
        0x6dt
        0x27t
        0x60t
        0x44t
        0x48t
        0x4et
        0x4ct
        0x9t
        0x5bt
        0x4ct
        0x47t
        0x4dt
        0x4ct
        0x5bt
        0x4ct
        0x5bt
        0x9t
        0x44t
        0x5ct
        0x5at
        0x5dt
        0x9t
        0x4bt
        0x4ct
        0x9t
        0x5at
        0x4ct
        0x5dt
        0x9t
        0x4bt
        0x4ct
        0x4ft
        0x46t
        0x5bt
        0x4ct
        0x9t
        0x47t
        0x48t
        0x5dt
        0x40t
        0x5ft
        0x4ct
        0x6bt
        0x48t
        0x47t
        0x47t
        0x4ct
        0x5bt
        0x68t
        0x4dt
        0x7t
        0x12t
        0x35t
        0x2dt
        0x3at
        0x37t
        0x32t
        0x3ft
        0x7bt
        0xdt
        0x32t
        0x3et
        0x2ct
        0x7bt
        0x38t
        0x34t
        0x35t
        0x28t
        0x2ft
        0x29t
        0x2et
        0x38t
        0x2ft
        0x34t
        0x29t
        0x7bt
        0x2bt
        0x3at
        0x29t
        0x3at
        0x36t
        0x28t
        0x7bt
        0x2ft
        0x22t
        0x2bt
        0x3et
        0x75t
        0x1t
        0x2et
        0x3bt
        0x26t
        0x39t
        0x2at
        0x6ft
        0xet
        0x2bt
        0x6ft
        0x6t
        0x2ct
        0x20t
        0x21t
        0x6ft
        0x26t
        0x3ct
        0x6ft
        0x21t
        0x3at
        0x23t
        0x23t
        0x61t
        0xbt
        0x34t
        0x39t
        0x38t
        0x32t
        0x7dt
        0x2ft
        0x38t
        0x33t
        0x39t
        0x38t
        0x2ft
        0x38t
        0x2ft
        0x7dt
        0x30t
        0x28t
        0x2et
        0x29t
        0x7dt
        0x3ft
        0x38t
        0x7dt
        0x2et
        0x38t
        0x29t
        0x7dt
        0x3ft
        0x38t
        0x3bt
        0x32t
        0x2ft
        0x38t
        0x7dt
        0x33t
        0x3ct
        0x29t
        0x34t
        0x2bt
        0x38t
        0x1ct
        0x39t
        0x73t
        0x1at
        0xbt
        0x12t
        0x75t
        0x6at
        0x67t
        0x66t
        0x6ct
        0x56t
        0x71t
        0x6ft
        0x3et
    .end array-data
.end method

.method private final A06(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 68597
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/57;->A01(Z)V

    .line 68598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68599
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/57;->A01(Z)V

    .line 68600
    return-void
.end method

.method private A07(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Tj;)V
    .locals 5

    .line 68601
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/b8;->A0A:Lcom/facebook/ads/redexgen/X/PM;

    if-eqz v4, :cond_0

    .line 68602
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    sget-object v2, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const-string v1, "tYahJlzELN2bWoIKGOvNb4V2q4om3tal"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "knO8IZUpKtredd0Q2IkvjJrJQGpJW1Qq"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 68603
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Tj;->A1b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68604
    return-void

    .line 68605
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Tj;->A1A()Ljava/lang/String;

    move-result-object v4

    .line 68606
    .local p0, "mediationData":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 68607
    .local p1, "context":Landroid/content/Context;
    sget-object v2, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const-string v1, "LedcnhOkj71a4gNr9a9uwwPVwkpS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "bOPNktfa058vxRDYU7HJ2aiUk3a2"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    .line 68608
    :goto_0
    return-void

    .line 68609
    .local p1, "context":Landroid/content/Context;
    :cond_2
    if-nez v3, :cond_3

    goto :goto_0

    .line 68610
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/PL;->A01(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/PM;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const-string v1, "IBU68ioTGuVBWJ1dkmCJ7UK76Osi7EVF"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/b8;->A0A:Lcom/facebook/ads/redexgen/X/PM;

    .line 68611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A0A:Lcom/facebook/ads/redexgen/X/PM;

    if-eqz v0, :cond_5

    .line 68612
    :goto_1
    const/4 v0, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68613
    .local p2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 68614
    const/4 v1, 0x7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 68615
    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 68616
    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 68617
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_4

    .line 68618
    const/16 v1, 0x10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 68619
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 68620
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A0A:Lcom/facebook/ads/redexgen/X/PM;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/b8;->A06(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68621
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A0A:Lcom/facebook/ads/redexgen/X/PM;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 68622
    .end local p2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    return-void

    :cond_6
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/b8;->A0A:Lcom/facebook/ads/redexgen/X/PM;

    .line 68623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A0A:Lcom/facebook/ads/redexgen/X/PM;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A08(Landroid/widget/ImageView;)V
    .locals 4

    .line 68624
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A0C:Z

    if-nez v0, :cond_2

    .line 68625
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/b8;->A02:Landroid/widget/ImageView;

    sget-object v2, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const-string v1, "9onWrVOda1qlu0pAvyXYf5LKITz29A5r"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "G6pev0JETY7bhqmEZOziJsmCoQM1bBBX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 68626
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 68627
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68628
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68629
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68631
    invoke-static {}, Lcom/facebook/ads/redexgen/X/M5;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 68632
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b8;->A02:Landroid/widget/ImageView;

    .line 68633
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68634
    .end local p0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/16 v2, 0x6a

    const/16 v1, 0x31

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b8;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A09(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;IILcom/facebook/ads/MediaView;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 68635
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    .line 68636
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/b8;->A08(Landroid/widget/ImageView;)V

    .line 68637
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nr;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Nr;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/b8;->A0E(Lcom/facebook/ads/redexgen/X/Nr;)V

    .line 68638
    new-instance v0, Lcom/facebook/ads/redexgen/X/18;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/18;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A08:Lcom/facebook/ads/redexgen/X/18;

    .line 68639
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b8;->A03()V

    .line 68640
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/b8;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 68641
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b8;->A04()V

    .line 68642
    return-void
.end method

.method private final A0A(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;ILcom/facebook/ads/MediaView;)V
    .locals 1

    .line 68643
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    .line 68644
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/b8;->A08(Landroid/widget/ImageView;)V

    .line 68645
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nr;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Nr;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/b8;->A0E(Lcom/facebook/ads/redexgen/X/Nr;)V

    .line 68646
    new-instance v0, Lcom/facebook/ads/redexgen/X/18;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/18;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A08:Lcom/facebook/ads/redexgen/X/18;

    .line 68647
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b8;->A03()V

    .line 68648
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/b8;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 68649
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b8;->A04()V

    .line 68650
    return-void
.end method

.method private final A0B(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 68651
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    .line 68652
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/b8;->A08(Landroid/widget/ImageView;)V

    .line 68653
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nr;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Nr;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/b8;->A0E(Lcom/facebook/ads/redexgen/X/Nr;)V

    .line 68654
    new-instance v0, Lcom/facebook/ads/redexgen/X/18;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/18;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A08:Lcom/facebook/ads/redexgen/X/18;

    .line 68655
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b8;->A03()V

    .line 68656
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/b8;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 68657
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b8;->A04()V

    .line 68658
    return-void
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 68659
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    .line 68660
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/b8;->A08(Landroid/widget/ImageView;)V

    .line 68661
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nr;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Nr;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/b8;->A0E(Lcom/facebook/ads/redexgen/X/Nr;)V

    .line 68662
    new-instance v0, Lcom/facebook/ads/redexgen/X/18;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/18;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A08:Lcom/facebook/ads/redexgen/X/18;

    .line 68663
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b8;->A03()V

    .line 68664
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/b8;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 68665
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b8;->A04()V

    .line 68666
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/Tj;ZLcom/facebook/ads/redexgen/X/Jr;)V
    .locals 3

    .line 68667
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/b8;->A02:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XT;)V

    .line 68668
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sb;->A04()Lcom/facebook/ads/redexgen/X/Sb;

    move-result-object v1

    .line 68669
    .local p0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/Sb;
    if-eqz p2, :cond_0

    .line 68670
    new-instance v0, Lcom/facebook/ads/redexgen/X/bD;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/bD;-><init>(Lcom/facebook/ads/redexgen/X/b8;Lcom/facebook/ads/redexgen/X/Tj;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A06(Lcom/facebook/ads/redexgen/X/Nt;)Lcom/facebook/ads/redexgen/X/Sb;

    .line 68671
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Jr;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A07(Ljava/lang/String;)V

    .line 68672
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/Nr;)V
    .locals 3

    .line 68673
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A0C:Z

    if-nez v0, :cond_1

    .line 68674
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    if-eqz v1, :cond_0

    .line 68675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 68676
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Nr;->setVisibility(I)V

    .line 68677
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68678
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68680
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    .line 68681
    return-void

    .line 68682
    .end local p0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/16 v2, 0x3f

    const/16 v1, 0x2b

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b8;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0F(Lcom/facebook/ads/NativeAd;)Z
    .locals 3

    .line 68683
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5F;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5F;->A03()Ljava/util/List;

    move-result-object v0

    .line 68684
    .local p0, "carousel":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/NativeAd;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 68685
    return v2

    .line 68686
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    .line 68687
    .local v0, "childNativeAd":Lcom/facebook/ads/NativeAd;
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-nez v0, :cond_1

    .line 68688
    return v2

    .line 68689
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private A0G(Lcom/facebook/ads/NativeAd;)Z
    .locals 2

    .line 68690
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt v1, v0, :cond_0

    .line 68691
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5F;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5F;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 68692
    :goto_0
    return v0

    .line 68693
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0H(Lcom/facebook/ads/NativeAd;)V
    .locals 10

    .line 68694
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Tj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A10()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v2

    .line 68695
    .local p0, "adObjectContext":Lcom/facebook/ads/redexgen/X/XT;
    invoke-virtual {v2, p0}, Lcom/facebook/ads/redexgen/X/XT;->A0G(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 68696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/XT;->A0F(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 68697
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XT;->A0E(Lcom/facebook/ads/redexgen/X/0R;)V

    .line 68698
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/b8;->A0C:Z

    .line 68699
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tj;

    move-result-object v3

    .line 68700
    .local v0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Tj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Tj;->A1P(Lcom/facebook/ads/MediaView;)V

    .line 68701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A02:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A02:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68703
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/b8;->A0F(Lcom/facebook/ads/NativeAd;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 68704
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tj;->A10()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A03:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AEX(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 68705
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tj;->A15()Lcom/facebook/ads/redexgen/X/Ju;

    move-result-object v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_6

    sget-object v6, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const-string v1, "CvXrj9TTP1W52m7bIbynzmDbx8Ql"

    const/4 v0, 0x4

    aput-object v1, v6, v0

    const-string v1, "OGerX4RrBYJpkLXwbXTHIjvyoHPN"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ju;->A0B:Lcom/facebook/ads/redexgen/X/Ju;

    if-ne v8, v0, :cond_1

    const/4 v1, 0x1

    .line 68706
    .local v0, "enableTextInNativeCarousel":Z
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 68707
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/57;->A01(Z)V

    .line 68708
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v8

    .line 68709
    .local v0, "width":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 68710
    .local v7, "parentView":Landroid/view/ViewGroup;
    :goto_1
    if-nez v8, :cond_4

    if-eqz v9, :cond_4

    .line 68711
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    .line 68712
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    sget-object v6, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v6, v0

    const/4 v0, 0x3

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v6, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const-string v1, "ZQRbya12lyykx5Eq2uFJ3JGH4lXR"

    const/4 v0, 0x4

    aput-object v1, v6, v0

    const-string v1, "SLHysRpGcYp4QaXPRJ4K4uNDdgkD"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    check-cast v9, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_0
    sget-object v6, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const-string v1, "txzvXhatra49UDlp2BXEovPdWlOkx37e"

    const/4 v0, 0x6

    aput-object v1, v6, v0

    const-string v1, "zmD0GPDFfrMRBXxeFyYC2vHynCiCjpaN"

    const/4 v0, 0x2

    aput-object v1, v6, v0

    check-cast v9, Landroid/view/ViewGroup;

    goto :goto_1

    .line 68713
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 68714
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A08:Lcom/facebook/ads/redexgen/X/18;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    .line 68715
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/18;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/18;->setCurrentPosition(I)V

    .line 68716
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/18;

    .line 68717
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/18;->setShowTextInCarousel(Z)V

    .line 68718
    if-eqz v1, :cond_3

    .line 68719
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    check-cast v6, Lcom/facebook/ads/redexgen/X/18;

    .line 68720
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tj;->A1G()Ljava/util/List;

    move-result-object v1

    .line 68721
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tj;->A14()Lcom/facebook/ads/redexgen/X/Jt;

    move-result-object v0

    new-instance v7, Lcom/facebook/ads/redexgen/X/FA;

    invoke-direct {v7, v8, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/FA;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/18;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Jt;)V

    .line 68722
    .local p1, "viewAdapter":Lcom/facebook/ads/redexgen/X/cl;
    .restart local p1    # "viewAdapter":Lcom/facebook/ads/redexgen/X/cl;
    :goto_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/bC;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/bC;-><init>(Lcom/facebook/ads/redexgen/X/b8;Lcom/facebook/ads/redexgen/X/Tj;)V

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/cl;->A0G(Lcom/facebook/ads/redexgen/X/15;)V

    .line 68723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/4A;)V

    goto :goto_3

    .line 68724
    .end local p1    # "viewAdapter":Lcom/facebook/ads/redexgen/X/cl;
    :cond_3
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    check-cast v6, Lcom/facebook/ads/redexgen/X/18;

    .line 68725
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tj;->A1G()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v7, Lcom/facebook/ads/redexgen/X/F9;

    invoke-direct {v7, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/F9;-><init>(Lcom/facebook/ads/redexgen/X/18;Ljava/util/List;Lcom/facebook/ads/redexgen/X/XT;)V

    goto :goto_2

    .line 68726
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 68727
    const/4 v0, -0x1

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68728
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68729
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ni;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ni;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    .line 68730
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    invoke-virtual {v1, v0, v6}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ni;

    invoke-virtual {v0, v3, v8}, Lcom/facebook/ads/redexgen/X/Ni;->A05(Lcom/facebook/ads/redexgen/X/Tj;I)V

    .line 68732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 68733
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/57;->A01(Z)V

    .line 68734
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "parentView":Landroid/view/ViewGroup;
    .end local v0
    .end local p1
    :goto_3
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    sget-object v6, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v6, v0

    const/4 v0, 0x3

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v6, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const-string v1, "92EI1RENbPFosgt8QuPbmuyLYPUfPd8U"

    const/4 v0, 0x1

    aput-object v1, v6, v0

    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/b8;->A00:Landroid/view/View;

    .line 68735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Nr;->setVisibility(I)V

    .line 68736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    invoke-virtual {v0, v4, v4}, Lcom/facebook/ads/redexgen/X/Nr;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 68737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 68738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 68739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5E;

    .line 68740
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5E;->A03()V

    .line 68741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/b8;->bringChildToFront(Landroid/view/View;)V

    .line 68742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/b8;->A07(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Tj;)V

    .line 68744
    .end local v0
    goto/16 :goto_5

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/b8;->A0G(Lcom/facebook/ads/NativeAd;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 68745
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tj;->A10()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A09:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AEX(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 68746
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A0B:Z

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Tj;->A1Z(Z)V

    .line 68747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A00:Landroid/view/View;

    .line 68748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Nr;->setVisibility(I)V

    .line 68749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    invoke-virtual {v0, v4, v4}, Lcom/facebook/ads/redexgen/X/Nr;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 68750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 68751
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 68752
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    instance-of v0, v6, Lcom/facebook/ads/redexgen/X/Ni;

    if-eqz v0, :cond_c

    .line 68753
    check-cast v6, Lcom/facebook/ads/redexgen/X/Ni;

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Ni;->A04()V

    .line 68754
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/b8;->bringChildToFront(Landroid/view/View;)V

    .line 68755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 68756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5E;

    .line 68757
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5E;->A04(Lcom/facebook/ads/NativeAd;)V

    .line 68758
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 68759
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tj;->A11()Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 68760
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/XT;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    .line 68761
    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A05(II)Lcom/facebook/ads/redexgen/X/Sb;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bB;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/bB;-><init>(Lcom/facebook/ads/redexgen/X/b8;Lcom/facebook/ads/redexgen/X/Tj;)V

    .line 68762
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A06(Lcom/facebook/ads/redexgen/X/Nt;)Lcom/facebook/ads/redexgen/X/Sb;

    move-result-object v1

    .line 68763
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tj;->A11()Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jr;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A07(Ljava/lang/String;)V

    .line 68764
    :cond_9
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 68765
    sget-object v5, Lcom/facebook/ads/redexgen/X/b8;->A0F:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x105

    const/16 v1, 0x9

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b8;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5F;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5F;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68766
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/b8;->A07(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Tj;)V

    .line 68767
    :cond_b
    :goto_5
    return-void

    .line 68768
    :cond_c
    check-cast v6, Lcom/facebook/ads/redexgen/X/Eq;

    sget-object v5, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v5, v0

    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_d

    sget-object v5, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const-string v1, "aOStoZQ6HlGjIfWvjowDgm0JyWXySbfC"

    const/4 v0, 0x6

    aput-object v1, v5, v0

    const-string v1, "db16XoSedMN3NVp1QVj7WgZqidqfP4Wc"

    const/4 v0, 0x2

    aput-object v1, v5, v0

    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/4A;)V

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/4A;)V

    goto/16 :goto_4

    .line 68769
    :cond_e
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 68770
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tj;->A10()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A07:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AEX(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 68771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nr;->getBodyImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A00:Landroid/view/View;

    .line 68772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 68773
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 68774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5E;

    .line 68775
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5E;->A03()V

    .line 68776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 68777
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 68778
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/Ni;

    if-eqz v0, :cond_10

    .line 68779
    check-cast v1, Lcom/facebook/ads/redexgen/X/Ni;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ni;->A04()V

    .line 68780
    :cond_f
    :goto_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/b8;->bringChildToFront(Landroid/view/View;)V

    .line 68781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Nr;->setVisibility(I)V

    .line 68782
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Lcom/facebook/ads/redexgen/X/Nr;Lcom/facebook/ads/redexgen/X/XT;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    .line 68783
    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A05(II)Lcom/facebook/ads/redexgen/X/Sb;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bA;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/bA;-><init>(Lcom/facebook/ads/redexgen/X/b8;Lcom/facebook/ads/redexgen/X/Tj;)V

    .line 68784
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A06(Lcom/facebook/ads/redexgen/X/Nt;)Lcom/facebook/ads/redexgen/X/Sb;

    move-result-object v1

    .line 68785
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tj;->A11()Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jr;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A07(Ljava/lang/String;)V

    .line 68786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/b8;->A07(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Tj;)V

    goto/16 :goto_5

    .line 68787
    :cond_10
    check-cast v1, Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v1, v4}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/4A;)V

    goto :goto_6
.end method

.method public final A0I(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V
    .locals 8

    .line 68788
    move-object v0, p1

    check-cast v0, Lcom/facebook/ads/redexgen/X/Tj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A10()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v3

    .line 68789
    .local p0, "adObjectContext":Lcom/facebook/ads/redexgen/X/XT;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/XT;->A0F(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 68790
    invoke-virtual {v3, p0}, Lcom/facebook/ads/redexgen/X/XT;->A0G(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 68791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A0C:Z

    .line 68792
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Tj;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tj;

    move-result-object v6

    .line 68793
    .local p1, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Tj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Tj;->A1O(Lcom/facebook/ads/MediaView;)V

    .line 68794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Nr;->setVisibility(I)V

    .line 68795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/facebook/ads/redexgen/X/Nr;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 68796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 68797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 68798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5E;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5E;->A03()V

    .line 68799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 68800
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68801
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/Ni;

    if-eqz v0, :cond_5

    .line 68802
    check-cast v1, Lcom/facebook/ads/redexgen/X/Ni;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ni;->A04()V

    .line 68803
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A02:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A02:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/b8;->bringChildToFront(Landroid/view/View;)V

    .line 68805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A02:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A00:Landroid/view/View;

    .line 68806
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tj;->A12()Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v2

    .line 68807
    .local p2, "adIcon":Lcom/facebook/ads/redexgen/X/Jr;
    if-eqz v2, :cond_3

    .line 68808
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tj;->A0z()Lcom/facebook/ads/redexgen/X/7J;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Jr;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A0K(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 68809
    .local p1, "preloadedBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 68810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 68811
    if-eqz p2, :cond_1

    .line 68812
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bE;

    invoke-direct {v0, p0, v6}, Lcom/facebook/ads/redexgen/X/bE;-><init>(Lcom/facebook/ads/redexgen/X/b8;Lcom/facebook/ads/redexgen/X/Tj;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->post(Ljava/lang/Runnable;)Z

    .line 68813
    .end local p1    # "preloadedBitmap":Landroid/graphics/Bitmap;
    .end local v0
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A02:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v6}, Lcom/facebook/ads/redexgen/X/b8;->A07(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Tj;)V

    .line 68814
    return-void

    .line 68815
    :cond_2
    invoke-direct {p0, v6, p2, v2}, Lcom/facebook/ads/redexgen/X/b8;->A0D(Lcom/facebook/ads/redexgen/X/Tj;ZLcom/facebook/ads/redexgen/X/Jr;)V

    goto :goto_1

    .line 68816
    :cond_3
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tj;->A13()Lcom/facebook/ads/redexgen/X/Ti;

    move-result-object v7

    .line 68817
    .local p1, "adListener":Lcom/facebook/ads/redexgen/X/Ti;
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->NATIVE_AD_IS_NOT_LOADED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 68818
    .local v0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    .line 68819
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tj;->A0w()J

    move-result-wide v2

    .line 68820
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 68821
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 68822
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a(JILjava/lang/String;)V

    .line 68823
    if-eqz v7, :cond_4

    .line 68824
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/K3;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/facebook/ads/redexgen/X/Jh;->AAW(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 68825
    :cond_4
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2e

    const/16 v1, 0x11

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b8;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68826
    invoke-interface {p1}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68827
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    .line 68828
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A0O:I

    const/16 v2, 0xc0

    const/16 v1, 0x17

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b8;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;)V

    .line 68829
    const/16 v2, 0x102

    const/4 v1, 0x3

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b8;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    goto :goto_1

    .line 68830
    :cond_5
    check-cast v1, Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/4A;)V

    goto/16 :goto_0
.end method

.method public final A0J()Z
    .locals 1

    .line 68831
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A5Y()Lcom/facebook/ads/redexgen/X/XT;
    .locals 1

    .line 68832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    return-object v0
.end method

.method public final bringChildToFront(Landroid/view/View;)V
    .locals 2

    .line 68833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A01:Landroid/view/View;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A02:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 68834
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 68835
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A0A:Lcom/facebook/ads/redexgen/X/PM;

    if-eqz v1, :cond_1

    .line 68836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 68837
    :cond_1
    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 68838
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->pause(Z)V

    .line 68839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->destroy()V

    .line 68840
    return-void
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 0

    .line 68841
    return-object p0
.end method

.method public final getAdContentsView()Landroid/view/View;
    .locals 1

    .line 68842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A00:Landroid/view/View;

    return-object v0
.end method

.method public final getMediaHeight()I
    .locals 4

    .line 68843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nr;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 68844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nr;->getImageHeight()I

    move-result v0

    return v0

    .line 68845
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 68846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 68847
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 68848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v0

    return v0

    .line 68849
    :cond_2
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const-string v1, "3C5Zne3gt6SFfa7y1AnuQltffgpI3Oh8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final getMediaWidth()I
    .locals 4

    .line 68850
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nr;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 68851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A09:Lcom/facebook/ads/redexgen/X/Nr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nr;->getImageWidth()I

    move-result v0

    return v0

    .line 68852
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 68853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    .line 68854
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 68855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    return v0

    .line 68856
    :cond_2
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const-string v1, "pFreRfYdfw1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "pVUprXCJsnglf8IlGtX2XFBaJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final initialize(Lcom/facebook/ads/internal/api/AdViewConstructorParams;Lcom/facebook/ads/MediaView;)V
    .locals 10

    .line 68857
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 68858
    .local p0, "context":Landroid/content/Context;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/XT;

    if-eqz v0, :cond_3

    .line 68859
    check-cast v1, Lcom/facebook/ads/redexgen/X/XT;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    .line 68860
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/XT;->A0G(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 68861
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getInitializationType()I

    move-result v1

    const/4 v3, 0x1

    move-object v9, p2

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    const/4 v0, 0x3

    if-ne v1, v0, :cond_4

    .line 68862
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    .line 68863
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v6

    .line 68864
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v7

    .line 68865
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleRes()I

    move-result v8

    .line 68866
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/b8;->A09(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;IILcom/facebook/ads/MediaView;)V

    .line 68867
    :goto_1
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/57;->A01(Z)V

    .line 68868
    return-void

    .line 68869
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    .line 68870
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v1

    .line 68871
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v0

    .line 68872
    invoke-direct {p0, v2, v1, v0, v9}, Lcom/facebook/ads/redexgen/X/b8;->A0A(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;ILcom/facebook/ads/MediaView;)V

    .line 68873
    goto :goto_1

    .line 68874
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, v1, v0, v9}, Lcom/facebook/ads/redexgen/X/b8;->A0B(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;Lcom/facebook/ads/MediaView;)V

    .line 68875
    goto :goto_1

    .line 68876
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    invoke-direct {p0, v0, v9}, Lcom/facebook/ads/redexgen/X/b8;->A0C(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/MediaView;)V

    .line 68877
    goto :goto_1

    .line 68878
    :cond_3
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/59;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    goto :goto_0

    .line 68879
    :cond_4
    const/16 v2, 0x9b

    const/16 v1, 0x25

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b8;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V
    .locals 0

    .line 68880
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/57;->onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V

    .line 68881
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/b8;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 68882
    return-void
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 5

    .line 68883
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v1

    .line 68884
    .local p0, "currentWidth":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v4

    .line 68885
    .local p1, "currentHeight":I
    if-lez v1, :cond_0

    if-lez v4, :cond_0

    .line 68886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaView;->repair(Ljava/lang/Throwable;)V

    .line 68887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 68888
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const-string v1, "Mgb6bOJjyiN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "MTEeDXbdwkPsq4eW7ABfM3WBi"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68889
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    const v0, -0x333334

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->setBackgroundColor(I)V

    .line 68890
    :goto_0
    return-void

    .line 68891
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaView;->repair(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final setListener(Lcom/facebook/ads/MediaViewListener;)V
    .locals 2

    .line 68892
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b8;->A04:Lcom/facebook/ads/MediaViewListener;

    .line 68893
    if-nez p1, :cond_0

    .line 68894
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5E;

    const/4 v0, 0x0

    .line 68895
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5E;->A07(Lcom/facebook/ads/redexgen/X/Mc;)V

    .line 68896
    return-void

    .line 68897
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5E;

    new-instance v0, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/b9;-><init>(Lcom/facebook/ads/redexgen/X/b8;Lcom/facebook/ads/MediaViewListener;)V

    .line 68898
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5E;->A07(Lcom/facebook/ads/redexgen/X/Mc;)V

    .line 68899
    return-void
.end method

.method public final setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .locals 4

    .line 68900
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A0C:Z

    if-nez v0, :cond_3

    .line 68901
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/b8;->A0E:[Ljava/lang/String;

    const-string v1, "ifAS5bhxfK6Gg4eu5Yemnhg9EBEfp9jT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "R5YDbsM1msNnvJcIFydw3DY2O0brJ9d9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 68902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 68903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->destroy()V

    .line 68904
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5E;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A07:Lcom/facebook/ads/redexgen/X/XT;

    .line 68905
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A08()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5E;->A05(Lcom/facebook/ads/redexgen/X/JT;)V

    .line 68906
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 68907
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68908
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/b8;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/b8;->A06(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68910
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 68911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    instance-of v0, v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b8;->A0B:Z

    .line 68912
    invoke-static {}, Lcom/facebook/ads/redexgen/X/M5;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setId(I)V

    .line 68913
    return-void

    .line 68914
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68915
    .end local p0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const/16 v2, 0xd7

    const/16 v1, 0x2b

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b8;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
