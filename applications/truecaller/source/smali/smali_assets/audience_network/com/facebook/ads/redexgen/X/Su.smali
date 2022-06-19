.class public final Lcom/facebook/ads/redexgen/X/Su;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MV;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Mr;
    }
.end annotation


# static fields
.field public static A0B:[B


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/7x;

.field public final A02:Lcom/facebook/ads/redexgen/X/XT;

.field public final A03:Lcom/facebook/ads/redexgen/X/JT;

.field public final A04:Lcom/facebook/ads/redexgen/X/MU;

.field public final A05:Lcom/facebook/ads/redexgen/X/Mr;

.field public final A06:Lcom/facebook/ads/redexgen/X/Po;

.field public final A07:Lcom/facebook/ads/redexgen/X/Mi;

.field public final A08:Lcom/facebook/ads/redexgen/X/M3;

.field public final A09:Lcom/facebook/ads/redexgen/X/L3;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Kq;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Su;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Mr;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;)V
    .locals 5

    .line 52982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52983
    new-instance v0, Lcom/facebook/ads/redexgen/X/A7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/A7;-><init>(Lcom/facebook/ads/redexgen/X/Su;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A0A:Lcom/facebook/ads/redexgen/X/Kq;

    .line 52984
    new-instance v0, Lcom/facebook/ads/redexgen/X/A5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/A5;-><init>(Lcom/facebook/ads/redexgen/X/Su;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A09:Lcom/facebook/ads/redexgen/X/L3;

    .line 52985
    new-instance v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/A4;-><init>(Lcom/facebook/ads/redexgen/X/Su;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A07:Lcom/facebook/ads/redexgen/X/Mi;

    .line 52986
    new-instance v0, Lcom/facebook/ads/redexgen/X/A2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/A2;-><init>(Lcom/facebook/ads/redexgen/X/Su;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A08:Lcom/facebook/ads/redexgen/X/M3;

    .line 52987
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Su;->A02:Lcom/facebook/ads/redexgen/X/XT;

    .line 52988
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Su;->A03:Lcom/facebook/ads/redexgen/X/JT;

    .line 52989
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Su;->A05:Lcom/facebook/ads/redexgen/X/Mr;

    .line 52990
    new-instance v0, Lcom/facebook/ads/redexgen/X/Po;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Po;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    .line 52991
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7j;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/7j;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    .line 52992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    .line 52993
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v4

    const/4 v0, 0x4

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/9P;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Su;->A0A:Lcom/facebook/ads/redexgen/X/Kq;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A09:Lcom/facebook/ads/redexgen/X/L3;

    const/4 v2, 0x1

    aput-object v0, v3, v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Su;->A07:Lcom/facebook/ads/redexgen/X/Mi;

    const/4 v0, 0x2

    aput-object v1, v3, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Su;->A08:Lcom/facebook/ads/redexgen/X/M3;

    const/4 v0, 0x3

    aput-object v1, v3, v0

    .line 52994
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/9O;->A03([Lcom/facebook/ads/redexgen/X/9P;)V

    .line 52995
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Su;->A04:Lcom/facebook/ads/redexgen/X/MU;

    .line 52996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Po;->setIsFullScreen(Z)V

    .line 52997
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->setVolume(F)V

    .line 52998
    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52999
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    invoke-interface {p4, v0, v1}, Lcom/facebook/ads/redexgen/X/MU;->A3H(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 53001
    new-instance v1, Lcom/facebook/ads/redexgen/X/MX;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/MX;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 53002
    .local p1, "closeButton":Lcom/facebook/ads/redexgen/X/MX;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mp;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mp;-><init>(Lcom/facebook/ads/redexgen/X/Su;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MX;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53003
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/MX;->getDefaultLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->A3H(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 53004
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Su;)Lcom/facebook/ads/redexgen/X/MU;
    .locals 0

    .line 53005
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Su;->A04:Lcom/facebook/ads/redexgen/X/MU;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Su;)Lcom/facebook/ads/redexgen/X/Mr;
    .locals 0

    .line 53006
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Su;->A05:Lcom/facebook/ads/redexgen/X/Mr;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Su;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x26

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x62

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Su;->A0B:[B

    return-void

    :array_0
    .array-data 1
        -0x31t
        -0x1dt
        -0x1et
        -0x23t
        -0x22t
        -0x26t
        -0x31t
        -0x19t
        -0x11t
        -0x8t
        -0xbt
        -0xft
        -0x6t
        0x0t
        -0x20t
        -0x5t
        -0x9t
        -0xft
        -0x6t
        -0x44t
        -0x46t
        -0x54t
        -0x6bt
        -0x58t
        -0x45t
        -0x50t
        -0x43t
        -0x54t
        -0x76t
        -0x45t
        -0x58t
        -0x77t
        -0x44t
        -0x45t
        -0x45t
        -0x4at
        -0x4bt
        -0x49t
        -0x56t
        -0x5bt
        -0x5at
        -0x50t
        -0x76t
        -0x51t
        -0x4bt
        -0x5at
        -0x4dt
        -0x4ct
        -0x4bt
        -0x56t
        -0x4bt
        -0x5et
        -0x53t
        -0x7at
        -0x49t
        -0x5at
        -0x51t
        -0x4bt
        -0x63t
        -0x70t
        -0x75t
        -0x74t
        -0x6at
        0x73t
        -0x6at
        -0x72t
        -0x72t
        -0x74t
        -0x67t
        -0x2t
        -0xft
        -0x14t
        -0x13t
        -0x9t
        -0x2bt
        -0x28t
        -0x34t
        0x18t
        0xbt
        0x6t
        0x7t
        0x11t
        -0xbt
        0x7t
        0x7t
        0xdt
        -0xat
        0xbt
        0xft
        0x7t
        -0x42t
        -0x4ft
        -0x54t
        -0x53t
        -0x49t
        -0x63t
        -0x66t
        -0x6ct
    .end array-data
.end method


# virtual methods
.method public final A04(I)V
    .locals 1

    .line 53007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Po;->setVideoProgressReportIntervalMs(I)V

    .line 53008
    return-void
.end method

.method public final A05(Landroid/view/View;)V
    .locals 1

    .line 53009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Po;->setControlsAnchorView(Landroid/view/View;)V

    .line 53010
    return-void
.end method

.method public final A8e(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/52;)V
    .locals 10

    .line 53011
    const/16 v2, 0x13

    const/16 v1, 0x12

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53012
    .local p0, "ctaText":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A02:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v3, Lcom/facebook/ads/redexgen/X/PC;

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/PC;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;)V

    .line 53014
    .local p1, "ctaButton":Lcom/facebook/ads/redexgen/X/PC;
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53015
    .local p2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    .line 53016
    .local p3, "density":F
    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 53017
    .local v2, "margin":I
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 53018
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53019
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53020
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mq;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mq;-><init>(Lcom/facebook/ads/redexgen/X/Su;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/PC;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A04:Lcom/facebook/ads/redexgen/X/MU;

    invoke-interface {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/MU;->A3H(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 53022
    .end local p1    # "ctaButton":Lcom/facebook/ads/redexgen/X/PC;
    .end local p2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local p3    # "density":F
    .end local v2    # "margin":I
    :cond_0
    const/4 v3, 0x0

    const/16 v2, 0x4d

    const/16 v1, 0xd

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A00:I

    .line 53023
    new-instance v4, Lcom/facebook/ads/redexgen/X/7x;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Su;->A02:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Su;->A03:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    .line 53024
    const/16 v2, 0x8

    const/16 v1, 0xb

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 53025
    const/16 v2, 0x3a

    const/16 v1, 0xb

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/7x;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Po;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Su;->A01:Lcom/facebook/ads/redexgen/X/7x;

    .line 53026
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    const/16 v2, 0x45

    const/16 v1, 0x8

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Po;->setVideoMPD(Ljava/lang/String;)V

    .line 53027
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    const/16 v2, 0x5a

    const/16 v1, 0x8

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Po;->setVideoURI(Ljava/lang/String;)V

    .line 53028
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Su;->A00:I

    if-lez v1, :cond_1

    .line 53029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Po;->A0Y(I)V

    .line 53030
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53031
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pj;->A05:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0x11

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0b(Lcom/facebook/ads/redexgen/X/Pj;I)V

    .line 53032
    :cond_2
    return-void
.end method

.method public final ABU(Z)V
    .locals 5

    .line 53033
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Su;->A04:Lcom/facebook/ads/redexgen/X/MU;

    new-instance v3, Lcom/facebook/ads/redexgen/X/M0;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/M0;-><init>()V

    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/MU;->A3r(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9N;)V

    .line 53034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->A0W()V

    .line 53035
    return-void
.end method

.method public final ABt(Z)V
    .locals 5

    .line 53036
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Su;->A04:Lcom/facebook/ads/redexgen/X/MU;

    new-instance v3, Lcom/facebook/ads/redexgen/X/LQ;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/LQ;-><init>()V

    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/MU;->A3r(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9N;)V

    .line 53037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->A0j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53038
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pj;->A05:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0x12

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0b(Lcom/facebook/ads/redexgen/X/Pj;I)V

    .line 53039
    :cond_0
    return-void
.end method

.method public final AE6(Landroid/os/Bundle;)V
    .locals 0

    .line 53040
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 53041
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 5

    .line 53042
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Su;->A04:Lcom/facebook/ads/redexgen/X/MU;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Su;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    .line 53043
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getCurrentPositionInMillis()I

    move-result v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Ke;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Ke;-><init>(II)V

    .line 53044
    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/MU;->A3r(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9N;)V

    .line 53045
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Su;->A01:Lcom/facebook/ads/redexgen/X/7x;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getCurrentPositionInMillis()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0d(I)V

    .line 53046
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0Z(I)V

    .line 53047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A06:Lcom/facebook/ads/redexgen/X/Po;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->A0V()V

    .line 53048
    return-void
.end method
