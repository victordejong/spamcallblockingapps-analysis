.class public final Lcom/facebook/ads/redexgen/X/O8;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/O7;
    }
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/MT;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/16;

.field public final A02:Lcom/facebook/ads/redexgen/X/XT;

.field public final A03:Lcom/facebook/ads/redexgen/X/MU;

.field public final A04:Lcom/facebook/ads/redexgen/X/O7;

.field public final A05:Lcom/facebook/ads/redexgen/X/Po;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A06:[Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Lu0oG19N"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JNY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ev6F9eDhg42RHlCeRuJfEtiFO07AluFn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qSbaO4FE34QcNqD1YWxCxyT8wr5s9kWw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hZddA1hSD7Y"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "v9TnLSaOxYneacolptRVdRHaZQ0ab06L"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iyW9tyIIQvF7WQz3LOxNHXxa074IcWbN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vzh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/O8;->A07:[Ljava/lang/String;

    .line 46705
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ON;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Po;Lcom/facebook/ads/redexgen/X/IS;Lcom/facebook/ads/redexgen/X/Nx;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/O7;)V
    .locals 7
    .param p3    # Lcom/facebook/ads/redexgen/X/Po;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46706
    const/4 v0, 0x2

    new-array v6, v0, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p4, v6, v0

    const/4 v0, 0x1

    aput-object p5, v6, v0

    move-object v0, p0

    move-object v2, p2

    move-object v5, p7

    move-object v3, p3

    move-object v1, p1

    move-object v4, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/O8;-><init>(Lcom/facebook/ads/redexgen/X/ON;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Po;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/O7;[Landroid/view/View;)V

    .line 46707
    return-void
.end method

.method public varargs constructor <init>(Lcom/facebook/ads/redexgen/X/ON;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Po;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/O7;[Landroid/view/View;)V
    .locals 8
    .param p3    # Lcom/facebook/ads/redexgen/X/Po;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46708
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v1

    .line 46709
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A08()Lcom/facebook/ads/redexgen/X/MT;

    move-result-object v2

    .line 46710
    move-object v0, p0

    move-object v4, p3

    move-object v3, p2

    move-object v5, p4

    move-object v7, p6

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/O8;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/MT;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Po;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/O7;[Landroid/view/View;)V

    .line 46711
    return-void
.end method

.method public varargs constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/MT;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Po;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/O7;[Landroid/view/View;)V
    .locals 0
    .param p2    # Lcom/facebook/ads/redexgen/X/MT;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/redexgen/X/Po;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46712
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46713
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O8;->A02:Lcom/facebook/ads/redexgen/X/XT;

    .line 46714
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/O8;->A00:Lcom/facebook/ads/redexgen/X/MT;

    .line 46715
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/O8;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 46716
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/O8;->A06:[Landroid/view/View;

    .line 46717
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/O8;->A03:Lcom/facebook/ads/redexgen/X/MU;

    .line 46718
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/O8;->A05:Lcom/facebook/ads/redexgen/X/Po;

    .line 46719
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/O8;->A04:Lcom/facebook/ads/redexgen/X/O7;

    .line 46720
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/O8;->A03()V

    .line 46721
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/O8;)Lcom/facebook/ads/redexgen/X/MT;
    .locals 0

    .line 46722
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/O8;->A00:Lcom/facebook/ads/redexgen/X/MT;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/O8;)Lcom/facebook/ads/redexgen/X/O7;
    .locals 0

    .line 46723
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/O8;->A04:Lcom/facebook/ads/redexgen/X/O7;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/O8;)Lcom/facebook/ads/redexgen/X/Po;
    .locals 0

    .line 46724
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/O8;->A05:Lcom/facebook/ads/redexgen/X/Po;

    return-object p0
.end method

.method private A03()V
    .locals 11

    .line 46725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O8;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0I()Lcom/facebook/ads/RewardData;

    move-result-object v3

    .line 46726
    .local p0, "rewardData":Lcom/facebook/ads/RewardData;
    if-nez v3, :cond_0

    .line 46727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O8;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/1P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1P;->A05()Ljava/lang/String;

    move-result-object v6

    .line 46728
    .local v6, "title":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/Md;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/O8;->A02:Lcom/facebook/ads/redexgen/X/XT;

    const/4 v4, -0x1

    const/high16 v5, -0x1000000

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O8;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 46729
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/1P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1P;->A04()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O8;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 46730
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/1P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1P;->A03()Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A0R:Lcom/facebook/ads/redexgen/X/MD;

    .line 46731
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ME;->A01(Lcom/facebook/ads/redexgen/X/MD;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct/range {v2 .. v10}, Lcom/facebook/ads/redexgen/X/Md;-><init>(Lcom/facebook/ads/redexgen/X/XT;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 46732
    .local v0, "messageAndTwoButtonView":Lcom/facebook/ads/redexgen/X/Md;
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Md;->A02:Landroid/widget/Button;

    new-instance v0, Lcom/facebook/ads/redexgen/X/O5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/O5;-><init>(Lcom/facebook/ads/redexgen/X/O8;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46733
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Md;->A01:Landroid/widget/Button;

    new-instance v0, Lcom/facebook/ads/redexgen/X/O6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/O6;-><init>(Lcom/facebook/ads/redexgen/X/O8;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46734
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46735
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/O8;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46736
    return-void

    .line 46737
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O8;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 46738
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/1P;

    move-result-object v2

    .line 46739
    invoke-virtual {v3}, Lcom/facebook/ads/RewardData;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/RewardData;->getQuantity()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1P;->A06(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private A04()V
    .locals 2

    .line 46740
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/O8;->A05:Lcom/facebook/ads/redexgen/X/Po;

    if-eqz v1, :cond_0

    .line 46741
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A07:Lcom/facebook/ads/redexgen/X/Pf;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0a(Lcom/facebook/ads/redexgen/X/Pf;)V

    .line 46742
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O8;->A04:Lcom/facebook/ads/redexgen/X/O7;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/O7;->A9l()V

    .line 46743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O8;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0N()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46744
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/O8;->A01:Lcom/facebook/ads/redexgen/X/16;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O8;->A03:Lcom/facebook/ads/redexgen/X/MU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A0b(Lcom/facebook/ads/redexgen/X/MU;)V

    .line 46745
    :cond_1
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/O8;)V
    .locals 0

    .line 46746
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/O8;->A04()V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/O8;)[Landroid/view/View;
    .locals 0

    .line 46747
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/O8;->A06:[Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final A07(Landroid/view/ViewGroup;)V
    .locals 6

    .line 46748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O8;->A05:Lcom/facebook/ads/redexgen/X/Po;

    const/4 v4, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->A0j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46749
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/O8;->A05:Lcom/facebook/ads/redexgen/X/Po;

    const/16 v0, 0xb

    invoke-virtual {v1, v3, v3, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0f(ZZI)V

    .line 46750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O8;->A05:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/M5;->A0N(Landroid/view/View;I)V

    .line 46751
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/O8;->A00:Lcom/facebook/ads/redexgen/X/MT;

    sget-object v2, Lcom/facebook/ads/redexgen/X/O8;->A07:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/O8;->A07:[Ljava/lang/String;

    const-string v1, "vGH3jzSu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v5, :cond_2

    .line 46752
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/M5;->A0H(Landroid/view/View;)V

    .line 46753
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/O8;->A06:[Landroid/view/View;

    array-length v1, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v0, v2, v3

    .line 46754
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 46755
    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/M5;->A0N(Landroid/view/View;I)V

    .line 46756
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46757
    :cond_3
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46758
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46759
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O8;->A04:Lcom/facebook/ads/redexgen/X/O7;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/O7;->ABB()V

    .line 46760
    return-void
.end method
