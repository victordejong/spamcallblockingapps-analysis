.class public final Lcom/facebook/ads/redexgen/X/SK;
.super Lcom/facebook/ads/redexgen/X/OJ;
.source ""


# static fields
.field public static A0S:Lcom/facebook/ads/redexgen/X/SK;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A0T:[B

.field public static A0U:[Ljava/lang/String;

.field public static final A0V:I

.field public static final A0W:I

.field public static final A0X:I

.field public static final A0Y:I

.field public static final A0Z:I


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Landroid/view/View;

.field public A07:Landroid/widget/LinearLayout;

.field public A08:Landroid/widget/LinearLayout;

.field public A09:Landroid/widget/TextView;

.field public A0A:Lcom/facebook/ads/redexgen/X/16;

.field public A0B:Lcom/facebook/ads/redexgen/X/NW;

.field public A0C:Lcom/facebook/ads/redexgen/X/NX;

.field public A0D:Lcom/facebook/ads/redexgen/X/Sm;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0E:Lcom/facebook/ads/redexgen/X/ON;

.field public A0F:Lcom/facebook/ads/redexgen/X/OU;

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public final A0M:Landroid/view/View;

.field public final A0N:Lcom/facebook/ads/redexgen/X/0f;

.field public final A0O:Lcom/facebook/ads/redexgen/X/Jb;

.field public final A0P:Lcom/facebook/ads/redexgen/X/O7;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/O8;

.field public final A0R:Lcom/facebook/ads/redexgen/X/IS;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "E7d9V"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HfiTPdnQE6JsOHdYoOA4lRNnbQ3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7AVXCU5oRbsgBqmorHmAVCwb6r5tuTQ8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hoWzaZbN7yXesQFa"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "a3ZYa3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EXUfJIeYYGyfdCGOPOS2l0on83CPH94Z"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MYJwByDzw5bCUSkxw6qgTJ7WJbI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "X3l5ZIwYV4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SK;->A0U:[Ljava/lang/String;

    .line 51474
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SK;->A0K()V

    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41d00000    # 26.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SK;->A0X:I

    .line 51475
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SK;->A0V:I

    .line 51476
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SK;->A0Z:I

    .line 51477
    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2N;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/SK;->A0W:I

    .line 51478
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SK;->A0Y:I

    .line 51479
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SK;->A0S:Lcom/facebook/ads/redexgen/X/SK;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ON;)V
    .locals 17

    .line 51480
    const/4 v1, 0x1

    move-object/from16 v2, p0

    move-object/from16 v11, p1

    invoke-direct {v2, v11, v1}, Lcom/facebook/ads/redexgen/X/OJ;-><init>(Lcom/facebook/ads/redexgen/X/ON;Z)V

    .line 51481
    const/4 v0, 0x0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/SK;->A01:I

    .line 51482
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/SK;->A0G:Z

    .line 51483
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/SK;->A0I:Z

    .line 51484
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/SK;->A0K:Z

    .line 51485
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/SK;->A0J:Z

    .line 51486
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/SK;->A0L:Z

    .line 51487
    iput-object v11, v2, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    .line 51488
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/SK;->A0A:Lcom/facebook/ads/redexgen/X/16;

    .line 51489
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/ON;->A06()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v4

    new-instance v3, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v3, v5, v4}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/SK;->A0O:Lcom/facebook/ads/redexgen/X/Jb;

    .line 51490
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ON;->A0A()Lcom/facebook/ads/redexgen/X/IS;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/SK;->A0R:Lcom/facebook/ads/redexgen/X/IS;

    .line 51491
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/SK;->A0R:Lcom/facebook/ads/redexgen/X/IS;

    if-eqz v3, :cond_0

    .line 51492
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 51493
    :cond_0
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ON;->A03()Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/SK;->A0M:Landroid/view/View;

    .line 51494
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v4

    .line 51495
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/ON;->A06()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v5

    .line 51496
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v6

    .line 51497
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1J;->A05()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 51498
    invoke-static/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/0g;->A01(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZ)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/SK;->A0N:Lcom/facebook/ads/redexgen/X/0f;

    .line 51499
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v4

    .line 51500
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v3

    .line 51501
    invoke-static {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/OH;->A00(Lcom/facebook/ads/redexgen/X/XT;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 51502
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/SK;->setupLayoutConfiguration(Z)V

    .line 51503
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/SK;->A0G()V

    .line 51504
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/SK;->A0C()V

    .line 51505
    new-instance v5, Lcom/facebook/ads/redexgen/X/SQ;

    invoke-direct {v5, v2}, Lcom/facebook/ads/redexgen/X/SQ;-><init>(Lcom/facebook/ads/redexgen/X/SK;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/facebook/ads/redexgen/X/SK;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51506
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/SK;->A0J()V

    .line 51507
    new-instance v3, Lcom/facebook/ads/redexgen/X/SP;

    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/SP;-><init>(Lcom/facebook/ads/redexgen/X/SK;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/SK;->A0P:Lcom/facebook/ads/redexgen/X/O7;

    .line 51508
    const/4 v13, 0x0

    .line 51509
    .local v1, "videoView":Lcom/facebook/ads/redexgen/X/Po;
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ON;->A02()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/facebook/ads/redexgen/X/Po;

    if-eqz v3, :cond_1

    .line 51510
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ON;->A02()Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/facebook/ads/redexgen/X/Po;

    .line 51511
    :cond_1
    new-instance v10, Lcom/facebook/ads/redexgen/X/O8;

    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/SK;->A0A:Lcom/facebook/ads/redexgen/X/16;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    .line 51512
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ON;->A09()Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v14

    iget-object v15, v2, Lcom/facebook/ads/redexgen/X/SK;->A0P:Lcom/facebook/ads/redexgen/X/O7;

    const/4 v3, 0x4

    new-array v4, v3, [Landroid/view/View;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/SK;->A09:Landroid/widget/TextView;

    aput-object v3, v4, v0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/SK;->A0F:Lcom/facebook/ads/redexgen/X/OU;

    aput-object v0, v4, v1

    const/4 v1, 0x2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/SK;->A0R:Lcom/facebook/ads/redexgen/X/IS;

    aput-object v0, v4, v1

    const/4 v1, 0x3

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/SK;->A0M:Landroid/view/View;

    aput-object v0, v4, v1

    move-object/from16 v16, v4

    invoke-direct/range {v10 .. v16}, Lcom/facebook/ads/redexgen/X/O8;-><init>(Lcom/facebook/ads/redexgen/X/ON;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Po;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/O7;[Landroid/view/View;)V

    iput-object v10, v2, Lcom/facebook/ads/redexgen/X/SK;->A0Q:Lcom/facebook/ads/redexgen/X/O8;

    .line 51513
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/SK;)F
    .locals 0

    .line 51514
    iget p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A00:F

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/SK;F)F
    .locals 0

    .line 51515
    iput p1, p0, Lcom/facebook/ads/redexgen/X/SK;->A00:F

    return p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/SK;)Landroid/view/View;
    .locals 0

    .line 51516
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/0f;
    .locals 0

    .line 51517
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0N:Lcom/facebook/ads/redexgen/X/0f;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/Jb;
    .locals 0

    .line 51518
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0O:Lcom/facebook/ads/redexgen/X/Jb;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/NW;
    .locals 0

    .line 51519
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0B:Lcom/facebook/ads/redexgen/X/NW;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/NX;
    .locals 0

    .line 51520
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/NX;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/Sm;
    .locals 0

    .line 51521
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0D:Lcom/facebook/ads/redexgen/X/Sm;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/ON;
    .locals 0

    .line 51522
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/OU;
    .locals 0

    .line 51523
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0F:Lcom/facebook/ads/redexgen/X/OU;

    return-object p0
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SK;->A0T:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0B()V
    .locals 3

    .line 51524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A08:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 51525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A08:Landroid/widget/LinearLayout;

    .line 51526
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A08:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0R(Landroid/view/View;Landroid/content/Context;)V

    .line 51527
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0G:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:I

    div-int/lit8 v2, v0, 0x4

    :goto_0
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51528
    .local p0, "descriptionOverlayParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A08:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51530
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A08:Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/SK;->addView(Landroid/view/View;I)V

    .line 51531
    return-void

    .line 51532
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:I

    div-int/lit8 v2, v0, 0x5

    goto :goto_0
.end method

.method private A0C()V
    .locals 2

    .line 51533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A07:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 51534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A07:Landroid/widget/LinearLayout;

    .line 51535
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A07:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A07:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 51537
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0H()V

    .line 51538
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A07:Landroid/widget/LinearLayout;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 51539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SK;->addView(Landroid/view/View;)V

    .line 51540
    return-void
.end method

.method private A0D()V
    .locals 5

    .line 51541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0M:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 51542
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 51543
    sget v1, Lcom/facebook/ads/redexgen/X/OJ;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/OJ;->A09:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51544
    .local p0, "muteParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51545
    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51546
    sget v3, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/SK;->A05:I

    sget v1, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 51547
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0M:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/SK;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51548
    .end local p0    # "muteParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A0E()V
    .locals 5

    .line 51549
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0R:Lcom/facebook/ads/redexgen/X/IS;

    if-eqz v0, :cond_0

    .line 51550
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 51551
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0R:Lcom/facebook/ads/redexgen/X/IS;

    sget v0, Lcom/facebook/ads/redexgen/X/SK;->A0Y:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/IS;->setPadding(IIII)V

    .line 51552
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0R:Lcom/facebook/ads/redexgen/X/IS;

    sget v0, Lcom/facebook/ads/redexgen/X/SK;->A0W:I

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/IS;->A06(II)V

    .line 51553
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0R:Lcom/facebook/ads/redexgen/X/IS;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IS;->setTranslationY(F)V

    .line 51554
    sget v0, Lcom/facebook/ads/redexgen/X/SK;->A0X:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51555
    .local p0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0H:Z

    if-eqz v0, :cond_1

    .line 51556
    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 51557
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0R:Lcom/facebook/ads/redexgen/X/IS;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/SK;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51558
    .end local p0    # "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 51559
    :cond_1
    const/16 v3, 0xc

    sget-object v2, Lcom/facebook/ads/redexgen/X/SK;->A0U:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/SK;->A0U:[Ljava/lang/String;

    const-string v1, "zjul6o0OG2Ezis8Q"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "LmcEL"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0F()V
    .locals 2

    .line 51560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A08()Lcom/facebook/ads/redexgen/X/MT;

    move-result-object v1

    .line 51561
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/MT;
    if-nez v1, :cond_0

    .line 51562
    return-void

    .line 51563
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0H:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/MT;->A05()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MT;->setPageDetailsVisible(Z)V

    .line 51564
    return-void

    .line 51565
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0G()V
    .locals 5

    .line 51566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Landroid/view/View;

    .line 51567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 51568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 51569
    const/4 v4, -0x2

    const/4 v2, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51570
    .local p0, "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v1}, Lcom/facebook/ads/redexgen/X/SK;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 51572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Landroid/widget/TextView;

    .line 51573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 51574
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 51575
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getColors()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/1I;->A05(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51576
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 51577
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 51578
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51579
    .local v0, "descriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51580
    sget v2, Lcom/facebook/ads/redexgen/X/SK;->A0Z:I

    div-int/lit8 v1, v2, 0x2

    .line 51581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0R:Lcom/facebook/ads/redexgen/X/IS;

    if-nez v0, :cond_0

    move v0, v2

    .line 51582
    :goto_0
    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 51583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/SK;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 51585
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    .line 51586
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v3

    .line 51587
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getColors()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/SO;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/SO;-><init>(Lcom/facebook/ads/redexgen/X/SK;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/OU;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/OU;-><init>(Lcom/facebook/ads/redexgen/X/ON;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/O0;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0F:Lcom/facebook/ads/redexgen/X/OU;

    .line 51588
    const/16 v1, 0x3e9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0F:Lcom/facebook/ads/redexgen/X/OU;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0G(ILandroid/view/View;)V

    .line 51589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0F:Lcom/facebook/ads/redexgen/X/OU;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SK;->addView(Landroid/view/View;)V

    .line 51590
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0I()V

    .line 51591
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0B()V

    .line 51592
    return-void

    .line 51593
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/SK;->A0X:I

    goto :goto_0
.end method

.method private A0H()V
    .locals 5

    .line 51594
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A03:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v1, v0, 0x5

    const/4 v0, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51595
    .local p0, "browserParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51596
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 51597
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51598
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SK;->A07:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/SK;->A0U:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/SK;->A0U:[Ljava/lang/String;

    const-string v1, "mOqhFUC5R4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "x2rQdK"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51599
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A07:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 51600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51601
    return-void

    .line 51602
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A03:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0I()V
    .locals 3

    .line 51603
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0G:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:I

    div-int/lit8 v1, v0, 0x4

    :goto_0
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51604
    .local p0, "ctaButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51605
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 51606
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 51607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0F:Lcom/facebook/ads/redexgen/X/OU;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/OU;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51608
    return-void

    .line 51609
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:I

    div-int/lit8 v1, v0, 0x5

    goto :goto_0
.end method

.method private A0J()V
    .locals 0

    .line 51610
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0E()V

    .line 51611
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0D()V

    .line 51612
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0F()V

    .line 51613
    return-void
.end method

.method public static A0K()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SK;->A0T:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x24t
    .end array-data
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/SK;)V
    .locals 0

    .line 51614
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0H()V

    return-void
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/SK;Ljava/lang/String;)V
    .locals 0

    .line 51615
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/SK;->A0O(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/SK;Z)V
    .locals 0

    .line 51616
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/SK;->A0P(Z)V

    return-void
.end method

.method private A0O(Ljava/lang/String;)V
    .locals 4

    .line 51617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0D:Lcom/facebook/ads/redexgen/X/Sm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 51618
    new-instance v3, Lcom/facebook/ads/redexgen/X/SM;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/SM;-><init>(Lcom/facebook/ads/redexgen/X/SK;)V

    .line 51619
    .local p0, "browserListener":Lcom/facebook/ads/redexgen/X/Ne;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0C()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A80()V

    .line 51621
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    .line 51622
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JE;->A02(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    .line 51623
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0C()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 51624
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Sm;

    invoke-direct {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/Sm;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Ne;)V

    .line 51625
    :goto_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/SK;->A0D:Lcom/facebook/ads/redexgen/X/Sm;

    .line 51626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0D:Lcom/facebook/ads/redexgen/X/Sm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/SK;->setUpBrowserControls(Lcom/facebook/ads/redexgen/X/Sm;)V

    .line 51627
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51628
    .local p1, "webViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const v0, 0x3f666666    # 0.9f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 51629
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0D:Lcom/facebook/ads/redexgen/X/Sm;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0D:Lcom/facebook/ads/redexgen/X/Sm;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sm;->loadUrl(Ljava/lang/String;)V

    .line 51631
    return-void

    .line 51632
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    .line 51633
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0C()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Sm;

    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Sm;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/Ne;)V

    goto :goto_0
.end method

.method private A0P(Z)V
    .locals 16

    .line 51634
    move-object/from16 v6, p0

    move/from16 v7, p1

    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/SK;->A0H:Z

    .line 51635
    new-instance v2, Lcom/facebook/ads/redexgen/X/SL;

    invoke-direct {v2, v6, v7}, Lcom/facebook/ads/redexgen/X/SL;-><init>(Lcom/facebook/ads/redexgen/X/SK;Z)V

    const-wide/16 v0, 0xfa

    invoke-virtual {v6, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/SK;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51636
    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SK;->A0A(III)Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x1

    const/4 v9, 0x2

    const/4 v14, 0x0

    if-eqz v7, :cond_6

    .line 51637
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/SK;->A0F:Lcom/facebook/ads/redexgen/X/OU;

    new-array v1, v9, [F

    .line 51638
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/OU;->getY()F

    move-result v0

    aput v0, v1, v14

    iget v0, v6, Lcom/facebook/ads/redexgen/X/SK;->A03:I

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    aput v0, v1, v15

    .line 51639
    invoke-static {v2, v10, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 51640
    .local v8, "ctaTransAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/SK;->A07:Landroid/widget/LinearLayout;

    new-array v1, v9, [F

    .line 51641
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getY()F

    move-result v0

    aput v0, v1, v14

    .line 51642
    iget v0, v6, Lcom/facebook/ads/redexgen/X/SK;->A03:I

    if-eqz v7, :cond_0

    div-int/lit8 v0, v0, 0x5

    :cond_0
    int-to-float v0, v0

    aput v0, v1, v15

    .line 51643
    invoke-static {v2, v10, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 51644
    .local v2, "browserTransAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v0, 0x1f4

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 51645
    iget v12, v6, Lcom/facebook/ads/redexgen/X/SK;->A03:I

    div-int/2addr v12, v9

    iget v2, v6, Lcom/facebook/ads/redexgen/X/SK;->A01:I

    div-int/2addr v2, v9

    sub-int/2addr v12, v2

    .line 51646
    .local v10, "mediaViewTop":I
    iget-object v11, v6, Lcom/facebook/ads/redexgen/X/SK;->A06:Landroid/view/View;

    new-array v4, v9, [F

    .line 51647
    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v2

    aput v2, v4, v14

    if-nez v7, :cond_1

    iget-boolean v2, v6, Lcom/facebook/ads/redexgen/X/SK;->A0G:Z

    if-eqz v2, :cond_5

    :cond_1
    const/4 v2, 0x0

    :goto_1
    aput v2, v4, v15

    .line 51648
    invoke-static {v11, v10, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 51649
    .local v15, "mediaViewTransAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 51650
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/SK;->A0R:Lcom/facebook/ads/redexgen/X/IS;

    if-nez v0, :cond_4

    const/4 v13, 0x0

    .line 51651
    .local v9, "mediaProgressbarHeight":I
    :goto_2
    if-eqz v7, :cond_3

    .line 51652
    iget v11, v6, Lcom/facebook/ads/redexgen/X/SK;->A02:I

    sget-object v4, Lcom/facebook/ads/redexgen/X/SK;->A0U:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v4, v0

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/SK;->A0U:[Ljava/lang/String;

    const-string v1, "g83HcTndNM"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-string v1, "KO02it"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    div-int/lit8 v12, v11, 0x5

    sub-int/2addr v12, v13

    goto :goto_4

    .line 51653
    :cond_3
    iget v12, v6, Lcom/facebook/ads/redexgen/X/SK;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/SK;->A0X:I

    sub-int/2addr v12, v0

    sget v0, Lcom/facebook/ads/redexgen/X/SK;->A0Z:I

    sub-int/2addr v12, v0

    .line 51654
    .local v14, "mediaTransAnimToY":I
    :goto_4
    iget-object v11, v6, Lcom/facebook/ads/redexgen/X/SK;->A0R:Lcom/facebook/ads/redexgen/X/IS;

    if-eqz v11, :cond_8

    .line 51655
    new-array v8, v9, [F

    .line 51656
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/IS;->getY()F

    move-result v0

    aput v0, v8, v14

    sget-object v4, Lcom/facebook/ads/redexgen/X/SK;->A0U:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v4, v0

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    goto :goto_3

    .line 51657
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IS;->getHeight()I

    move-result v13

    goto :goto_2

    .line 51658
    :cond_5
    int-to-float v2, v12

    goto :goto_1

    .line 51659
    :cond_6
    move-object v5, v8

    goto/16 :goto_0

    :cond_7
    sget-object v4, Lcom/facebook/ads/redexgen/X/SK;->A0U:[Ljava/lang/String;

    const-string v1, "uMAfPHErUq8gYLqYGWwvrPw2H7I5hxcd"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    int-to-float v0, v12

    aput v0, v8, v15

    .line 51660
    invoke-static {v11, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 51661
    .local v6, "mediaProgressbarTransAnim":Landroid/animation/ObjectAnimator;
    :cond_8
    new-array v1, v9, [I

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/SK;->A06:Landroid/view/View;

    .line 51662
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    aput v0, v1, v14

    .line 51663
    if-eqz v7, :cond_b

    iget v0, v6, Lcom/facebook/ads/redexgen/X/SK;->A03:I

    div-int/lit8 v0, v0, 0x5

    :goto_5
    aput v0, v1, v15

    .line 51664
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 51665
    const-wide/16 v0, 0x1f4

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 51666
    .local v7, "mediaViewScaleAnim":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/facebook/ads/redexgen/X/OQ;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/OQ;-><init>(Lcom/facebook/ads/redexgen/X/SK;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 51667
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 51668
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 51669
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v14

    aput-object v2, v0, v15

    aput-object v1, v0, v9

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 51670
    if-eqz v5, :cond_a

    .line 51671
    const-wide/16 v2, 0x1f4

    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 51672
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/animation/Animator;

    aput-object v5, v0, v14

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 51673
    :goto_6
    if-eqz v8, :cond_9

    .line 51674
    invoke-virtual {v8, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 51675
    new-array v0, v1, [Landroid/animation/Animator;

    aput-object v8, v0, v14

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 51676
    :cond_9
    new-instance v0, Lcom/facebook/ads/redexgen/X/OR;

    invoke-direct {v0, v6, v7}, Lcom/facebook/ads/redexgen/X/OR;-><init>(Lcom/facebook/ads/redexgen/X/SK;Z)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51677
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 51678
    return-void

    .line 51679
    :cond_a
    const-wide/16 v2, 0x1f4

    const/4 v1, 0x1

    goto :goto_6

    .line 51680
    :cond_b
    iget v0, v6, Lcom/facebook/ads/redexgen/X/SK;->A01:I

    goto :goto_5
.end method

.method private A0Q(Z)V
    .locals 4

    .line 51681
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/SK;->setupLayoutConfiguration(Z)V

    .line 51682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 51683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Landroid/view/View;

    .line 51684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 51685
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0H:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 51686
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A03:I

    div-int/lit8 v0, v0, 0x5

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51687
    .local p0, "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51688
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51689
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/SK;->A0U:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 51690
    sget-object v2, Lcom/facebook/ads/redexgen/X/SK;->A0U:[Ljava/lang/String;

    const-string v1, "FZuJEB1DgE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ioAK5D"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/SK;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 51691
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0B()V

    .line 51692
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0I()V

    .line 51693
    return-void

    .line 51694
    .end local p0    # "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51695
    .restart local p0    # "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51696
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0C()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0R()Z
    .locals 4

    .line 51697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0A:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/SK;->A0J:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/SK;->A0U:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/SK;->A0U:[Ljava/lang/String;

    const-string v1, "WvW0Ef6T7c"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "9KXIlI"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0L:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0K:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/SK;)Z
    .locals 0

    .line 51698
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0L:Z

    return p0
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/SK;)Z
    .locals 0

    .line 51699
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0I:Z

    return p0
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/SK;Z)Z
    .locals 0

    .line 51700
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0L:Z

    return p1
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/SK;Z)Z
    .locals 0

    .line 51701
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0I:Z

    return p1
.end method

.method private getUrl()Ljava/lang/String;
    .locals 1

    .line 51747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A05()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setUpBrowserControls(Lcom/facebook/ads/redexgen/X/Sm;)V
    .locals 5

    .line 51754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0B:Lcom/facebook/ads/redexgen/X/NW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 51755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/NW;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/NW;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0B:Lcom/facebook/ads/redexgen/X/NW;

    .line 51756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0B:Lcom/facebook/ads/redexgen/X/NW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NW;->getBrowserNavigationListener()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Sm;->setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/Nf;)V

    .line 51757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0B:Lcom/facebook/ads/redexgen/X/NW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 51758
    const/4 v4, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51759
    .local p0, "controlsViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const v0, 0x3dcccccd    # 0.1f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 51760
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0B:Lcom/facebook/ads/redexgen/X/NW;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SN;-><init>(Lcom/facebook/ads/redexgen/X/SK;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NW;->setListener(Lcom/facebook/ads/redexgen/X/NV;)V

    .line 51761
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0B:Lcom/facebook/ads/redexgen/X/NW;

    new-instance v0, Lcom/facebook/ads/redexgen/X/OP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/OP;-><init>(Lcom/facebook/ads/redexgen/X/SK;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NW;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51762
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0B:Lcom/facebook/ads/redexgen/X/NW;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/NX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 51764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    .line 51765
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v3

    const/4 v2, 0x0

    const v1, 0x1010078

    new-instance v0, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/NX;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/NX;

    .line 51766
    sget v0, Lcom/facebook/ads/redexgen/X/SK;->A0V:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51767
    .local p1, "browserProgressBarParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/NX;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51768
    return-void
.end method

.method private setupLayoutConfiguration(Z)V
    .locals 3

    .line 51769
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SK;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0G:Z

    .line 51770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A08()Lcom/facebook/ads/redexgen/X/MT;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A05:I

    .line 51771
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0H:Z

    .line 51772
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:I

    .line 51773
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A04:I

    .line 51774
    iget v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:I

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0G:Z

    if-eqz v0, :cond_0

    :goto_2
    add-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A03:I

    .line 51775
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A01:I

    .line 51776
    return-void

    .line 51777
    :cond_0
    iget v2, p0, Lcom/facebook/ads/redexgen/X/SK;->A05:I

    goto :goto_2

    .line 51778
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A08()Lcom/facebook/ads/redexgen/X/MT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MT;->getToolbarHeight()I

    move-result v0

    goto :goto_1

    .line 51779
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0W()V
    .locals 1

    .line 51702
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/OJ;->A0W()V

    .line 51703
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SK;->A0S:Lcom/facebook/ads/redexgen/X/SK;

    .line 51704
    return-void
.end method

.method public final A0X()V
    .locals 3

    .line 51705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A08()Lcom/facebook/ads/redexgen/X/MT;

    move-result-object v2

    .line 51706
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/MT;
    const/4 v1, 0x0

    if-eqz v2, :cond_0

    .line 51707
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/MT;->A05()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/MT;->setPageDetailsVisible(Z)V

    .line 51708
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0J:Z

    .line 51709
    return-void

    .line 51710
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0Y()V
    .locals 4

    .line 51711
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A08()Lcom/facebook/ads/redexgen/X/MT;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A08()Lcom/facebook/ads/redexgen/X/MT;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/SK;->A0U:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/SK;->A0U:[Ljava/lang/String;

    const-string v1, "MMiJw7TNUivh7iTB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "GEB80"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/MT;->setPageDetailsVisible(Z)V

    .line 51713
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0J:Z

    .line 51714
    return-void
.end method

.method public final A0Z()V
    .locals 1

    .line 51715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0K:Z

    .line 51716
    return-void
.end method

.method public final A0a()V
    .locals 1

    .line 51717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0K:Z

    .line 51718
    return-void
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 3
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51719
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/OJ;->A0b(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 51720
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A05()Ljava/lang/String;

    move-result-object v1

    .line 51721
    .local p0, "description":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 51722
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A08:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0N(Landroid/view/View;I)V

    .line 51723
    :goto_0
    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_1

    .line 51724
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A04:I

    int-to-double v1, v0

    div-double/2addr v1, p3

    double-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A01:I

    .line 51725
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0G:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:I

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A01:I

    .line 51726
    return-void

    .line 51727
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A01:I

    goto :goto_1

    .line 51728
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final A0c()Z
    .locals 1

    .line 51729
    const/4 v0, 0x1

    return v0
.end method

.method public final A0d(Z)Z
    .locals 3

    .line 51730
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0e()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51731
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/SK;->A0P(Z)V

    .line 51732
    return v2

    .line 51733
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0R()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0Q:Lcom/facebook/ads/redexgen/X/O8;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/O8;->A07(Landroid/view/ViewGroup;)V

    .line 51735
    return v2

    .line 51736
    :cond_1
    return v1
.end method

.method public final A0e()Z
    .locals 1

    .line 51737
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0H:Z

    return v0
.end method

.method public getCloseButtonStyle()I
    .locals 4
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 51738
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51739
    const/4 v0, 0x3

    return v0

    .line 51740
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0K:Z

    if-eqz v0, :cond_1

    .line 51741
    const/4 v0, 0x2

    return v0

    .line 51742
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0A:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0A()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51743
    const/4 v0, 0x1

    return v0

    .line 51744
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0J:Z

    if-eqz v0, :cond_4

    .line 51745
    const/4 v3, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/SK;->A0U:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/SK;->A0U:[Ljava/lang/String;

    const-string v1, "NhzVRhgvHrOwM64xV2PIAOEbNcq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "xEzMNY3CkayGfsMDFyAKLsf22gx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51746
    :cond_4
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getCloseButtonStyle()I

    move-result v0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 51748
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/OJ;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 51749
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0e()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/SK;->A0Q(Z)V

    .line 51750
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0J()V

    .line 51751
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0e()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/SK;->setupLayoutConfiguration(Z)V

    .line 51752
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0H()V

    .line 51753
    return-void
.end method
