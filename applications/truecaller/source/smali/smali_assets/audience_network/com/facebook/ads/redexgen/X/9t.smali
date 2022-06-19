.class public final Lcom/facebook/ads/redexgen/X/9t;
.super Lcom/facebook/ads/redexgen/X/SU;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ml;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Landroid/view/View;

.field public A02:Lcom/facebook/ads/redexgen/X/XT;

.field public A03:Lcom/facebook/ads/redexgen/X/MT;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/PU;

.field public A05:Lcom/facebook/ads/redexgen/X/Ht;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/MU;

.field public final A08:Lcom/facebook/ads/redexgen/X/O7;

.field public final A09:Lcom/facebook/ads/redexgen/X/O8;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Po;

.field public final A0B:Lcom/facebook/ads/redexgen/X/IS;

.field public final A0C:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QUFYIN7o4MSHfMbcaqgxGqdg8oING"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Qixa92rp7KQSHPhBId3L5m9SXc6gxNRP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TUKhftCqFUFv9xNbjbPA3CLhBIkdW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "aNiMBj1VMT3xct4Co4hWzqTsg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QYSCqyZ4CS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VjIbmM2G6pRRrYhuKIf6SOzC6eQUF7eo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KFJXOgKoK7JNlCBWMf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dachHr6cLZKwbIDqTeRsc0FgbmZCJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9t;->A0E:[Ljava/lang/String;

    .line 21064
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9t;->A07()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ON;)V
    .locals 11

    .line 21065
    const/4 v2, 0x0

    move-object v4, p1

    invoke-direct {p0, v4, v2}, Lcom/facebook/ads/redexgen/X/SU;-><init>(Lcom/facebook/ads/redexgen/X/ON;Z)V

    .line 21066
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21067
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/9t;->A06:Z

    .line 21068
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A02:Lcom/facebook/ads/redexgen/X/XT;

    .line 21069
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/ON;->A08()Lcom/facebook/ads/redexgen/X/MT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A03:Lcom/facebook/ads/redexgen/X/MT;

    .line 21070
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9t;->A02:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A01:Landroid/view/View;

    .line 21071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A01:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 21072
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 21073
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 21074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A01:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/9t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21075
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9t;->A04()V

    .line 21076
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/ON;->A09()Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A07:Lcom/facebook/ads/redexgen/X/MU;

    .line 21077
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAdInfo()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v0

    .line 21078
    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/OH;->A00(Lcom/facebook/ads/redexgen/X/XT;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 21079
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/9t;->A00(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A0A:Lcom/facebook/ads/redexgen/X/Po;

    .line 21080
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nx;->bringToFront()V

    .line 21081
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/9t;->A01(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/IS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A0B:Lcom/facebook/ads/redexgen/X/IS;

    .line 21082
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9t;->A0f()V

    .line 21083
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9t;->A02:Lcom/facebook/ads/redexgen/X/XT;

    .line 21084
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/ON;->A06()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/PU;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/PU;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/16;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A04:Lcom/facebook/ads/redexgen/X/PU;

    .line 21085
    new-instance v0, Lcom/facebook/ads/redexgen/X/SS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SS;-><init>(Lcom/facebook/ads/redexgen/X/9t;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A08:Lcom/facebook/ads/redexgen/X/O7;

    .line 21086
    new-instance v3, Lcom/facebook/ads/redexgen/X/O8;

    .line 21087
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/9t;->A0A:Lcom/facebook/ads/redexgen/X/Po;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/9t;->A0B:Lcom/facebook/ads/redexgen/X/IS;

    .line 21088
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nx;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/9t;->A07:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/9t;->A08:Lcom/facebook/ads/redexgen/X/O7;

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/O8;-><init>(Lcom/facebook/ads/redexgen/X/ON;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Po;Lcom/facebook/ads/redexgen/X/IS;Lcom/facebook/ads/redexgen/X/Nx;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/O7;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/9t;->A09:Lcom/facebook/ads/redexgen/X/O8;

    .line 21089
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/Po;
    .locals 7

    .line 21090
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A02()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Po;

    .line 21091
    .local p0, "videoView":Lcom/facebook/ads/redexgen/X/Po;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A08()Lcom/facebook/ads/redexgen/X/MT;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SU;->A0e(Lcom/facebook/ads/redexgen/X/MT;)I

    move-result v6

    .line 21092
    .local p1, "toolbarHeight":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A03()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 21093
    .local v4, "muteButton":Landroid/widget/ImageView;
    sget v5, Lcom/facebook/ads/redexgen/X/SU;->A0D:I

    sget v2, Lcom/facebook/ads/redexgen/X/SU;->A0D:I

    sget v1, Lcom/facebook/ads/redexgen/X/SU;->A0D:I

    sget v0, Lcom/facebook/ads/redexgen/X/SU;->A0D:I

    invoke-virtual {v3, v5, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 21094
    sget v1, Lcom/facebook/ads/redexgen/X/SU;->A0E:I

    sget v0, Lcom/facebook/ads/redexgen/X/SU;->A0E:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 21095
    .local v4, "muteButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/SU;->A0C:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v6, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 21096
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 21097
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 21098
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 21099
    .local v0, "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 21100
    invoke-virtual {p0, v4, v1}, Lcom/facebook/ads/redexgen/X/9t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21101
    invoke-virtual {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Po;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21102
    return-object v4
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/IS;
    .locals 6

    .line 21103
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A0A()Lcom/facebook/ads/redexgen/X/IS;

    move-result-object v5

    .line 21104
    .local p0, "progressBarAnimation":Lcom/facebook/ads/redexgen/X/IS;
    sget v0, Lcom/facebook/ads/redexgen/X/SU;->A09:I

    const/4 v4, -0x1

    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/IS;->A06(II)V

    .line 21105
    sget v3, Lcom/facebook/ads/redexgen/X/SU;->A0H:I

    sget v2, Lcom/facebook/ads/redexgen/X/SU;->A0H:I

    sget v1, Lcom/facebook/ads/redexgen/X/SU;->A0H:I

    sget v0, Lcom/facebook/ads/redexgen/X/SU;->A0H:I

    invoke-virtual {v5, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IS;->setPadding(IIII)V

    .line 21106
    sget v0, Lcom/facebook/ads/redexgen/X/SU;->A0G:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 21107
    .local p1, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 21108
    invoke-virtual {p0, v5, v1}, Lcom/facebook/ads/redexgen/X/9t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21109
    return-object v5
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9t;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xd

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
    .locals 2

    .line 21110
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/KF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21111
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/KF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KF;->A0E()V

    .line 21112
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9t;->A0A:Lcom/facebook/ads/redexgen/X/Po;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/KF;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0d(Lcom/facebook/ads/redexgen/X/Pk;)V

    .line 21113
    :cond_0
    return-void
.end method

.method private A04()V
    .locals 5

    .line 21114
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9t;->A03:Lcom/facebook/ads/redexgen/X/MT;

    if-nez v4, :cond_0

    .line 21115
    return-void

    .line 21116
    :cond_0
    const/16 v3, 0x190

    .line 21117
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/MT;->getToolbarHeight()I

    move-result v0

    neg-int v2, v0

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ht;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ht;-><init>(Landroid/view/View;III)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A05:Lcom/facebook/ads/redexgen/X/Ht;

    .line 21118
    return-void
.end method

.method private A05()V
    .locals 8

    .line 21119
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getAdEventManager()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    .line 21120
    .local p0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Jb;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ja;->A0p:Lcom/facebook/ads/redexgen/X/Ja;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 21121
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAdInfo()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0N()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21122
    return-void

    .line 21123
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21124
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A0T(Landroid/view/ViewGroup;)V

    .line 21125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A0A:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0H(Landroid/view/View;)V

    .line 21126
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A0A:Lcom/facebook/ads/redexgen/X/Po;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A0B:Lcom/facebook/ads/redexgen/X/IS;

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A09:Lcom/facebook/ads/redexgen/X/O8;

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A00:Landroid/view/View;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/M5;->A0Z([Landroid/view/View;)V

    .line 21127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A03:Lcom/facebook/ads/redexgen/X/MT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0L(Landroid/view/View;)V

    .line 21128
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/9t;->A04:Lcom/facebook/ads/redexgen/X/PU;

    .line 21129
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getCtaButton()Lcom/facebook/ads/redexgen/X/SZ;

    move-result-object v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/9t;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/9t;->A0E:[Ljava/lang/String;

    const-string v1, "FxfG3zWETYKhpCEsP1aqGpvXk"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/PU;->A03(Lcom/facebook/ads/redexgen/X/SZ;)Landroid/util/Pair;

    move-result-object v2

    .line 21130
    .local v0, "endCard":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/internal/view/rewardedvideo/EndCardController$EndCardViewType;Landroid/view/View;>;"
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A00:Landroid/view/View;

    .line 21131
    sget-object v1, Lcom/facebook/ads/redexgen/X/OO;->A00:[I

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/PT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PT;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v2, -0x1

    if-eq v0, v5, :cond_3

    if-eq v0, v3, :cond_2

    .line 21132
    .end local v1
    :goto_0
    return-void

    .line 21133
    :cond_2
    new-array v1, v5, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nx;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/M5;->A0Z([Landroid/view/View;)V

    .line 21134
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 21135
    .local v1, "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/SU;->A0F:I

    sget v2, Lcom/facebook/ads/redexgen/X/SU;->A0F:I

    sget v1, Lcom/facebook/ads/redexgen/X/SU;->A0F:I

    sget v0, Lcom/facebook/ads/redexgen/X/SU;->A0F:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 21136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A00:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/9t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 21137
    .end local v1    # "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nx;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Nx;->setVisibility(I)V

    .line 21138
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 21139
    .local v1, "screenshotParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A03:Lcom/facebook/ads/redexgen/X/MT;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SU;->A0e(Lcom/facebook/ads/redexgen/X/MT;)I

    move-result v0

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 21140
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nx;->getId()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 21141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A00:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/9t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21142
    goto :goto_0
.end method

.method private A06()V
    .locals 3

    .line 21143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A05:Lcom/facebook/ads/redexgen/X/Ht;

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 21144
    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ht;->A3L(ZZ)V

    .line 21145
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAdDetailsAnimation()Lcom/facebook/ads/redexgen/X/Ht;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21146
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAdDetailsAnimation()Lcom/facebook/ads/redexgen/X/Ht;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ht;->A3L(ZZ)V

    .line 21147
    :cond_1
    return-void
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x49

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9t;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x35t
        -0x3ct
        -0x27t
        -0x38t
        -0x1et
        -0x2at
        -0x29t
        -0x3ct
        -0x2bt
        -0x29t
        -0x34t
        -0x2ft
        -0x36t
        -0x1et
        -0x3ct
        -0x2ft
        -0x34t
        -0x30t
        -0x3ct
        -0x29t
        -0x34t
        -0x2et
        -0x2ft
        -0x2at
        -0x1et
        -0x2dt
        -0x31t
        -0x3ct
        -0x24t
        -0x38t
        -0x39t
        -0x33t
        -0x30t
        -0x2ct
        -0x3at
        -0x20t
        -0x2dt
        -0x3at
        -0x28t
        -0x3et
        -0x2dt
        -0x3bt
        -0x20t
        -0x2ct
        -0x3ct
        -0x2dt
        -0x3at
        -0x3at
        -0x31t
        -0x20t
        -0x2ct
        -0x37t
        -0x30t
        -0x28t
        -0x31t
        -0x35t
        -0x4bt
        -0x39t
        -0x2dt
        -0x47t
        -0x3et
        -0x48t
        -0x2dt
        -0x49t
        -0x4bt
        -0x3at
        -0x48t
        -0x2dt
        -0x39t
        -0x44t
        -0x3dt
        -0x35t
        -0x3et
    .end array-data
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/9t;Z)Z
    .locals 0

    .line 21148
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9t;->A06:Z

    return p1
.end method


# virtual methods
.method public final A09(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 0

    .line 21149
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/OJ;->A09(Lcom/facebook/ads/redexgen/X/7v;)V

    .line 21150
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9t;->A05()V

    .line 21151
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/7t;)V
    .locals 5

    .line 21152
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/OJ;->A0A(Lcom/facebook/ads/redexgen/X/7t;)V

    .line 21153
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mj;->A00()I

    move-result v1

    .line 21154
    .local p0, "currentPosMs":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A0A:Lcom/facebook/ads/redexgen/X/Po;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getDuration()I

    move-result v4

    .line 21155
    .local p1, "videoLengthMs":I
    sub-int/2addr v4, v1

    .line 21156
    .local v1, "remainingVideoTimeInMillis":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/KF;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v3, 0xbb8

    sget-object v1, Lcom/facebook/ads/redexgen/X/9t;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/9t;->A0E:[Ljava/lang/String;

    const-string v1, "xiBnzSw2W6K3rvYkwdUGMYXv5m3ZqRWR"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge v4, v3, :cond_1

    .line 21157
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/KF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KF;->A0J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21158
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/KF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KF;->A0F()V

    .line 21159
    :cond_1
    return-void
.end method

.method public final A0W()V
    .locals 1

    .line 21160
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/OJ;->A0W()V

    .line 21161
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9t;->A03()V

    .line 21162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A03:Lcom/facebook/ads/redexgen/X/MT;

    .line 21163
    return-void
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 4
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21164
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/SU;->A0b(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 21165
    if-nez p5, :cond_0

    .line 21166
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 21167
    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21168
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9t;->A06()V

    .line 21169
    :cond_1
    const/16 v2, 0x37

    const/16 v1, 0x12

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21170
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9t;->A05()V

    .line 21171
    :cond_2
    const/16 v2, 0x1f

    const/16 v1, 0x18

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21172
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9t;->A09:Lcom/facebook/ads/redexgen/X/O8;

    sget-object v1, Lcom/facebook/ads/redexgen/X/9t;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/9t;->A0E:[Ljava/lang/String;

    const-string v1, "jjtMTZWEM7Dg1szUnnnmuTjwvMhej"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "cexdZia4vusGbXInA5fVVHDcQrSB4"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, p0}, Lcom/facebook/ads/redexgen/X/O8;->A07(Landroid/view/ViewGroup;)V

    .line 21173
    :cond_4
    return-void
.end method

.method public final A0c()Z
    .locals 1

    .line 21174
    const/4 v0, 0x1

    return v0
.end method

.method public final A0d(Z)Z
    .locals 5

    .line 21175
    const/4 v4, 0x1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A06:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9t;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/9t;->A0E:[Ljava/lang/String;

    const-string v1, "IfEmWBIDBUNw5tL7YhS4lNzldGhzw"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "8CoNQoXVMdzgwU1krh95bRLsSKKH4"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 21176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A09:Lcom/facebook/ads/redexgen/X/O8;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/O8;->A07(Landroid/view/ViewGroup;)V

    .line 21177
    return v4

    .line 21178
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAdInfo()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0N()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/9t;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/9t;->A0E:[Ljava/lang/String;

    const-string v1, "YRUjLZqfjvY5EOxU383ujQcW8j7gUgor"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 21179
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9t;->A0A:Lcom/facebook/ads/redexgen/X/Po;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A08:Lcom/facebook/ads/redexgen/X/Pf;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0a(Lcom/facebook/ads/redexgen/X/Pf;)V

    .line 21180
    return v4

    .line 21181
    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0f()V
    .locals 2

    .line 21182
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/SU;->A0f()V

    .line 21183
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/KF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21184
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/KF;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A0A:Lcom/facebook/ads/redexgen/X/Po;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KF;->A8f(Lcom/facebook/ads/redexgen/X/Po;)V

    .line 21185
    :cond_0
    return-void
.end method

.method public final A0g()Z
    .locals 1

    .line 21186
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAdInfo()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0N()Z

    move-result v0

    return v0
.end method

.method public getCloseButtonStyle()I
    .locals 1
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 21187
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9t;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21188
    const/4 v0, 0x1

    return v0

    .line 21189
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getCloseButtonStyle()I

    move-result v0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 21190
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/SU;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 21191
    return-void
.end method
