.class public Lcom/facebook/ads/redexgen/X/be;
.super Lcom/facebook/ads/redexgen/X/4M;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4Y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/40;,
        Lcom/facebook/ads/redexgen/X/3z;,
        Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;,
        Lcom/facebook/ads/redexgen/X/41;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

.field public A04:Lcom/facebook/ads/redexgen/X/46;

.field public A05:Z

.field public A06:I

.field public A07:Lcom/facebook/ads/redexgen/X/41;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/3z;

.field public final A0E:Lcom/facebook/ads/redexgen/X/40;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "VKH6HNPW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5SG7ZkmA1SrYT5HpW6e3lHPIEdQjCnoY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GUFAcNFlkHbDslOxTlAKu2zM5da70L8W"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8EarDdUd0wjX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ogiAdIZLqFL2ODTGKcli7xbzAuQZVFku"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "k0c9canuweazyFazM74f3pFcokchiBr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yJQv9VjGutzUoxdr6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vBYUiSK7FkagYmvZS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    .line 69551
    invoke-static {}, Lcom/facebook/ads/redexgen/X/be;->A0V()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 69552
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/be;-><init>(Landroid/content/Context;IZ)V

    .line 69553
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .line 69554
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4M;-><init>()V

    .line 69555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0A:Z

    .line 69556
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    .line 69557
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0C:Z

    .line 69558
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/be;->A0B:Z

    .line 69559
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/be;->A01:I

    .line 69560
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/be;->A02:I

    .line 69561
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    .line 69562
    new-instance v0, Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3z;-><init>(Lcom/facebook/ads/redexgen/X/be;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0D:Lcom/facebook/ads/redexgen/X/3z;

    .line 69563
    new-instance v0, Lcom/facebook/ads/redexgen/X/40;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/40;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0E:Lcom/facebook/ads/redexgen/X/40;

    .line 69564
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/be;->A06:I

    .line 69565
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/be;->A2E(I)V

    .line 69566
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/be;->A0h(Z)V

    .line 69567
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4M;->A1V(Z)V

    .line 69568
    return-void
.end method

.method private final A04(ILcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 5

    .line 69569
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 69570
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/be;
    .end local p1    # null:I
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/4U;
    .end local p3    # null:Lcom/facebook/ads/redexgen/X/4b;
    :cond_0
    return v4

    .line 69571
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/41;->A0B:Z

    .line 69572
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A2D()V

    .line 69573
    if-lez p1, :cond_2

    const/4 v3, 0x1

    .line 69574
    .local p0, "layoutDirection":I
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 69575
    .local p3, "absDy":I
    invoke-direct {p0, v3, v2, v0, p3}, Lcom/facebook/ads/redexgen/X/be;->A0Y(IIZLcom/facebook/ads/redexgen/X/4b;)V

    .line 69576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/41;->A07:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    .line 69577
    invoke-direct {p0, p2, v0, p3, v4}, Lcom/facebook/ads/redexgen/X/be;->A08(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/41;Lcom/facebook/ads/redexgen/X/4b;Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 69578
    .local p2, "consumed":I
    if-gez v1, :cond_3

    .line 69579
    return v4

    .line 69580
    :cond_2
    const/4 v3, -0x1

    goto :goto_0

    .line 69581
    :cond_3
    if-le v2, v1, :cond_4

    mul-int/2addr v3, v1

    .line 69582
    .local p1, "scrolled":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    neg-int v0, v3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/46;->A0J(I)V

    .line 69583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iput v3, v0, Lcom/facebook/ads/redexgen/X/41;->A04:I

    .line 69584
    return v3

    .line 69585
    :cond_4
    move v3, p1

    goto :goto_1
.end method

.method private A05(ILcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Z)I
    .locals 5

    .line 69586
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A07()I

    move-result v0

    sub-int/2addr v0, p1

    .line 69587
    .local p0, "gap":I
    .local p1, "fixOffset":I
    if-lez v0, :cond_2

    .line 69588
    neg-int v0, v0

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/be;->A04(ILcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)I

    move-result v0

    neg-int v4, v0

    .line 69589
    add-int/2addr p1, v4

    .line 69590
    if-eqz p4, :cond_1

    .line 69591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A07()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "DiKLRwr5Jced9h1IWYQQBSe"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sub-int/2addr v3, p1

    .line 69592
    if-lez v3, :cond_1

    .line 69593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/46;->A0J(I)V

    .line 69594
    add-int/2addr v3, v4

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69595
    :cond_1
    return v4

    .line 69596
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private A06(ILcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Z)I
    .locals 3

    .line 69597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0A()I

    move-result v0

    sub-int v0, p1, v0

    .line 69598
    .local p0, "gap":I
    .local p1, "fixOffset":I
    if-lez v0, :cond_1

    .line 69599
    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/be;->A04(ILcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)I

    move-result v0

    neg-int v2, v0

    .line 69600
    add-int/2addr p1, v2

    .line 69601
    if-eqz p4, :cond_0

    .line 69602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0A()I

    move-result v0

    sub-int/2addr p1, v0

    .line 69603
    if-lez p1, :cond_0

    .line 69604
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    neg-int v0, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/46;->A0J(I)V

    .line 69605
    sub-int/2addr v2, p1

    return v2

    .line 69606
    :cond_0
    return v2

    .line 69607
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final A08(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/41;Lcom/facebook/ads/redexgen/X/4b;Z)I
    .locals 9

    .line 69608
    iget v7, p2, Lcom/facebook/ads/redexgen/X/41;->A00:I

    .line 69609
    .local p0, "start":I
    iget v0, p2, Lcom/facebook/ads/redexgen/X/41;->A07:I

    const/high16 v6, -0x80000000

    if-eq v0, v6, :cond_1

    .line 69610
    iget v0, p2, Lcom/facebook/ads/redexgen/X/41;->A00:I

    if-gez v0, :cond_0

    .line 69611
    iget v1, p2, Lcom/facebook/ads/redexgen/X/41;->A07:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/41;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/41;->A07:I

    .line 69612
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/be;->A0e(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/41;)V

    .line 69613
    :cond_1
    iget v5, p2, Lcom/facebook/ads/redexgen/X/41;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/41;->A02:I

    add-int/2addr v5, v0

    .line 69614
    .local p1, "remainingSpace":I
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/be;->A0E:Lcom/facebook/ads/redexgen/X/40;

    .line 69615
    .local p3, "layoutChunkResult":Lcom/facebook/ads/redexgen/X/40;
    :cond_2
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/41;->A09:Z

    if-nez v0, :cond_3

    if-lez v5, :cond_4

    :cond_3
    invoke-virtual {p2, p3}, Lcom/facebook/ads/redexgen/X/41;->A05(Lcom/facebook/ads/redexgen/X/4b;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69616
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/40;->A00()V

    .line 69617
    invoke-virtual {p0, p1, p3, p2, v4}, Lcom/facebook/ads/redexgen/X/be;->A2H(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/41;Lcom/facebook/ads/redexgen/X/40;)V

    .line 69618
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/40;->A01:Z

    if-eqz v0, :cond_5

    .line 69619
    :cond_4
    :goto_0
    iget v0, p2, Lcom/facebook/ads/redexgen/X/41;->A00:I

    sub-int/2addr v7, v0

    return v7

    .line 69620
    :cond_5
    iget v2, p2, Lcom/facebook/ads/redexgen/X/41;->A06:I

    iget v1, v4, Lcom/facebook/ads/redexgen/X/40;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/41;->A05:I

    mul-int/2addr v1, v0

    add-int/2addr v2, v1

    iput v2, p2, Lcom/facebook/ads/redexgen/X/41;->A06:I

    .line 69621
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/40;->A03:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/41;->A08:Ljava/util/List;

    if-nez v0, :cond_6

    .line 69622
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4b;->A07()Z

    move-result v0

    if-nez v0, :cond_7

    .line 69623
    :cond_6
    iget v1, p2, Lcom/facebook/ads/redexgen/X/41;->A00:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/40;->A00:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/41;->A00:I

    .line 69624
    iget v0, v4, Lcom/facebook/ads/redexgen/X/40;->A00:I

    sub-int/2addr v5, v0

    .line 69625
    :cond_7
    iget v0, p2, Lcom/facebook/ads/redexgen/X/41;->A07:I

    if-eq v0, v6, :cond_9

    .line 69626
    iget v1, p2, Lcom/facebook/ads/redexgen/X/41;->A07:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/40;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/41;->A07:I

    .line 69627
    iget v0, p2, Lcom/facebook/ads/redexgen/X/41;->A00:I

    if-gez v0, :cond_8

    .line 69628
    iget v8, p2, Lcom/facebook/ads/redexgen/X/41;->A07:I

    iget v3, p2, Lcom/facebook/ads/redexgen/X/41;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "4Yaap7YPoeEmBfNVznjneaOXF1T3Chf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/2addr v8, v3

    iput v8, p2, Lcom/facebook/ads/redexgen/X/41;->A07:I

    .line 69629
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/be;->A0e(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/41;)V

    .line 69630
    :cond_9
    if-eqz p4, :cond_2

    iget-boolean v3, v4, Lcom/facebook/ads/redexgen/X/40;->A02:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "BoRZmQ3r1kYFEVrzuprqJgVQBsgHE2ov"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 7

    .line 69631
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    if-nez v0, :cond_1

    .line 69632
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "JS1EmTokFkofHdCiZDqGUekHou375gK"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    .line 69633
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A2D()V

    .line 69634
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 69635
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/be;->A0R(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0B:Z

    xor-int/2addr v0, v1

    .line 69636
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/be;->A0Q(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/be;->A0B:Z

    .line 69637
    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/4f;->A00(Lcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/46;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4M;Z)I

    move-result v0

    return v0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 8

    .line 69638
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    if-nez v0, :cond_0

    .line 69639
    const/4 v0, 0x0

    return v0

    .line 69640
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A2D()V

    .line 69641
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 69642
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/be;->A0R(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0B:Z

    xor-int/2addr v0, v1

    .line 69643
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/be;->A0Q(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/be;->A0B:Z

    iget-boolean v7, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    .line 69644
    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/4f;->A02(Lcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/46;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4M;ZZ)I

    move-result v0

    return v0
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 7

    .line 69645
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    if-nez v0, :cond_1

    .line 69646
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "SnDsIEYZVkVP365fclIsQ2wSHS1GnuqA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "cd1sjhoNq3y2dBxKlbos6To2J3BafTHs"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69647
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A2D()V

    .line 69648
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 69649
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/be;->A0R(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0B:Z

    xor-int/2addr v0, v1

    .line 69650
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/be;->A0Q(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/be;->A0B:Z

    .line 69651
    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/4f;->A01(Lcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/46;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4M;Z)I

    move-result v0

    return v0
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 1

    .line 69652
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4b;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0B()I

    move-result v0

    return v0

    .line 69654
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private A0D()Landroid/view/View;
    .locals 2

    .line 69655
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/be;->A0H(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0E()Landroid/view/View;
    .locals 2

    .line 69656
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/be;->A0H(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0F()Landroid/view/View;
    .locals 1

    .line 69657
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private A0G()Landroid/view/View;
    .locals 1

    .line 69658
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0H(II)Landroid/view/View;
    .locals 4

    .line 69659
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A2D()V

    .line 69660
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    .line 69661
    .local p0, "next":I
    :goto_0
    if-nez v0, :cond_3

    .line 69662
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69663
    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "tEP4S10y6AtQbDA9ff3H424KLTnX0k7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3

    .line 69664
    .local p1, "preferredBoundsFlag":I
    .local p2, "acceptableBoundsFlag":I
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/46;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 69665
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0A()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 69666
    const/16 v2, 0x4104

    .line 69667
    const/16 v1, 0x4004

    .line 69668
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    if-nez v0, :cond_4

    .line 69669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A04:Lcom/facebook/ads/redexgen/X/4j;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/4j;->A00(IIII)Landroid/view/View;

    move-result-object v0

    .line 69670
    :goto_2
    return-object v0

    .line 69671
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A05:Lcom/facebook/ads/redexgen/X/4j;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/4j;->A00(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 69672
    :cond_5
    const/16 v2, 0x1041

    .line 69673
    const/16 v1, 0x1001

    goto :goto_1
.end method

.method private final A0J(IIZZ)Landroid/view/View;
    .locals 6

    .line 69674
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A2D()V

    .line 69675
    .local p0, "preferredBoundsFlag":I
    const/4 v3, 0x0

    .line 69676
    .local p1, "acceptableBoundsFlag":I
    if-eqz p3, :cond_1

    .line 69677
    const/16 v4, 0x6003

    .line 69678
    :goto_0
    if-eqz p4, :cond_0

    .line 69679
    const/16 v3, 0x140

    .line 69680
    :cond_0
    iget v5, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69681
    :cond_1
    const/16 v4, 0x140

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "NnwW0AnvRBQDKBAe7Vp9NN4SqY6y39Zg"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "snWQRfIRwdJNOSPMdDWVpUmegwlUrdsl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v5, :cond_3

    .line 69682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A04:Lcom/facebook/ads/redexgen/X/4j;

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/facebook/ads/redexgen/X/4j;->A00(IIII)Landroid/view/View;

    move-result-object v0

    .line 69683
    :goto_1
    return-object v0

    .line 69684
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A05:Lcom/facebook/ads/redexgen/X/4j;

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/facebook/ads/redexgen/X/4j;->A00(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)Landroid/view/View;
    .locals 6

    .line 69685
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v4

    move-object v2, p2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4b;->A03()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/be;->A2C(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)Landroid/view/View;
    .locals 6

    .line 69686
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    move-object v2, p2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4b;->A03()I

    move-result v5

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/be;->A2C(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)Landroid/view/View;
    .locals 1

    .line 69687
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/be;->A0D()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 69688
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/be;->A0E()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)Landroid/view/View;
    .locals 1

    .line 69689
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/be;->A0E()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 69690
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/be;->A0D()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)Landroid/view/View;
    .locals 1

    .line 69691
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/be;->A0K(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 69692
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/be;->A0L(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)Landroid/view/View;
    .locals 1

    .line 69693
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/be;->A0L(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 69694
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/be;->A0K(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0Q(ZZ)Landroid/view/View;
    .locals 2

    .line 69695
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    if-eqz v0, :cond_0

    .line 69696
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/be;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 69697
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/be;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0R(ZZ)Landroid/view/View;
    .locals 2

    .line 69698
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    if-eqz v0, :cond_0

    .line 69699
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/be;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 69700
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/be;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final A0S()Lcom/facebook/ads/redexgen/X/41;
    .locals 1

    .line 69701
    new-instance v0, Lcom/facebook/ads/redexgen/X/41;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/41;-><init>()V

    return-object v0
.end method

.method public static A0T(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x76

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0U()V
    .locals 4

    .line 69702
    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A2J()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69703
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0A:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    .line 69704
    :goto_0
    return-void

    .line 69705
    :cond_1
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/be;->A0A:Z

    xor-int/2addr v3, v1

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "rvopS3hSB7itRsuyG"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "9RTUShXs4ZXrU4n03"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0V()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/be;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x1et
        0x19t
        0x1t
        0x16t
        0x1bt
        0x1et
        0x13t
        0x57t
        0x18t
        0x5t
        0x1et
        0x12t
        0x19t
        0x3t
        0x16t
        0x3t
        0x1et
        0x18t
        0x19t
        0x4dt
    .end array-data
.end method

.method private A0W(II)V
    .locals 3

    .line 69706
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A07()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/41;->A00:I

    .line 69707
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 69708
    :goto_0
    iput v0, v1, Lcom/facebook/ads/redexgen/X/41;->A03:I

    .line 69709
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iput p1, v1, Lcom/facebook/ads/redexgen/X/41;->A01:I

    .line 69710
    iput v2, v1, Lcom/facebook/ads/redexgen/X/41;->A05:I

    .line 69711
    iput p2, v1, Lcom/facebook/ads/redexgen/X/41;->A06:I

    .line 69712
    const/high16 v0, -0x80000000

    iput v0, v1, Lcom/facebook/ads/redexgen/X/41;->A07:I

    .line 69713
    return-void

    .line 69714
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private A0X(II)V
    .locals 3

    .line 69715
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0A()I

    move-result v0

    sub-int v0, p2, v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/41;->A00:I

    .line 69716
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iput p1, v1, Lcom/facebook/ads/redexgen/X/41;->A01:I

    .line 69717
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 69718
    :goto_0
    iput v0, v1, Lcom/facebook/ads/redexgen/X/41;->A03:I

    .line 69719
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iput v2, v1, Lcom/facebook/ads/redexgen/X/41;->A05:I

    .line 69720
    iput p2, v1, Lcom/facebook/ads/redexgen/X/41;->A06:I

    .line 69721
    const/high16 v0, -0x80000000

    iput v0, v1, Lcom/facebook/ads/redexgen/X/41;->A07:I

    .line 69722
    return-void

    .line 69723
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private A0Y(IIZLcom/facebook/ads/redexgen/X/4b;)V
    .locals 5

    .line 69724
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/be;->A0i()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/41;->A09:Z

    .line 69725
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/be;->A0C(Lcom/facebook/ads/redexgen/X/4b;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/41;->A02:I

    .line 69726
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iput p1, v2, Lcom/facebook/ads/redexgen/X/41;->A05:I

    .line 69727
    const/4 v4, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 69728
    iget v1, v2, Lcom/facebook/ads/redexgen/X/41;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A08()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/41;->A02:I

    .line 69729
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/be;->A0F()Landroid/view/View;

    move-result-object v3

    .line 69730
    .local p0, "child":Landroid/view/View;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    if-eqz v0, :cond_1

    .line 69731
    :goto_0
    iput v4, v1, Lcom/facebook/ads/redexgen/X/41;->A03:I

    .line 69732
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4M;->A0p(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/41;->A03:I

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/41;->A01:I

    .line 69733
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/46;->A0C(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/41;->A06:I

    .line 69734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/46;->A0C(Landroid/view/View;)I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 69735
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A07()I

    move-result v0

    sub-int/2addr v2, v0

    .line 69736
    .end local p0    # "child":Landroid/view/View;
    .local p1, "scrollingOffset":I
    .end local p0
    .restart local p1    # "scrollingOffset":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iput p2, v1, Lcom/facebook/ads/redexgen/X/41;->A00:I

    .line 69737
    if-eqz p3, :cond_0

    .line 69738
    iget v0, v1, Lcom/facebook/ads/redexgen/X/41;->A00:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/41;->A00:I

    .line 69739
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iput v2, v0, Lcom/facebook/ads/redexgen/X/41;->A07:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_4

    .line 69740
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "rmKnvh8FAT7bzRdUkYGsCRYa1fX1DRoz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    .line 69741
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 69742
    .end local p1    # "scrollingOffset":I
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/be;->A0G()Landroid/view/View;

    move-result-object v3

    .line 69743
    .restart local p0    # "child":Landroid/view/View;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/41;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0A()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/41;->A02:I

    .line 69744
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 69745
    :cond_3
    iput v4, v1, Lcom/facebook/ads/redexgen/X/41;->A03:I

    .line 69746
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4M;->A0p(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/41;->A03:I

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/41;->A01:I

    .line 69747
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/46;->A0F(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/41;->A06:I

    .line 69748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/46;->A0F(Landroid/view/View;)I

    move-result v0

    neg-int v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 69749
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0A()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0Z(Lcom/facebook/ads/redexgen/X/3z;)V
    .locals 2

    .line 69750
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/be;->A0W(II)V

    .line 69751
    return-void
.end method

.method private A0a(Lcom/facebook/ads/redexgen/X/3z;)V
    .locals 2

    .line 69752
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/be;->A0X(II)V

    .line 69753
    return-void
.end method

.method private A0b(Lcom/facebook/ads/redexgen/X/4U;I)V
    .locals 5

    .line 69754
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v4

    .line 69755
    .local p0, "childCount":I
    if-gez p2, :cond_0

    .line 69756
    return-void

    .line 69757
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A06()I

    move-result v3

    sub-int/2addr v3, p2

    .line 69758
    .local p1, "limit":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    if-eqz v0, :cond_3

    .line 69759
    const/4 v2, 0x0

    .local p2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 69760
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v1

    .line 69761
    .local v4, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/46;->A0F(Landroid/view/View;)I

    move-result v0

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 69762
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/46;->A0H(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_2

    .line 69763
    .restart local v4    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/be;->A0d(Lcom/facebook/ads/redexgen/X/4U;II)V

    .line 69764
    return-void

    .line 69765
    .end local v4    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69766
    :cond_3
    add-int/lit8 v2, v4, -0x1

    .restart local p2    # "i":I
    :goto_1
    if-ltz v2, :cond_6

    .line 69767
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v1

    .line 69768
    .restart local v4    # "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/46;->A0F(Landroid/view/View;)I

    move-result v0

    if-lt v0, v3, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 69769
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/46;->A0H(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_5

    .line 69770
    .restart local v4    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v0, v4, -0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/be;->A0d(Lcom/facebook/ads/redexgen/X/4U;II)V

    .line 69771
    return-void

    .line 69772
    .end local v4    # "child":Landroid/view/View;
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 69773
    .end local p2    # "i":I
    .end local v4
    :cond_6
    return-void
.end method

.method private A0c(Lcom/facebook/ads/redexgen/X/4U;I)V
    .locals 7

    .line 69774
    if-gez p2, :cond_0

    .line 69775
    return-void

    .line 69776
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    .line 69777
    .local p0, "limit":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "66"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v5

    .line 69778
    .local p1, "childCount":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    if-eqz v0, :cond_4

    .line 69779
    add-int/lit8 v3, v5, -0x1

    .local p2, "i":I
    :goto_0
    if-ltz v3, :cond_8

    .line 69780
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v6

    .line 69781
    .local p2, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/46;->A0C(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_1

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 69782
    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/46;->A0G(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_3

    .line 69783
    .restart local p2    # "child":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v0, v5, -0x1

    invoke-direct {p0, p1, v0, v3}, Lcom/facebook/ads/redexgen/X/be;->A0d(Lcom/facebook/ads/redexgen/X/4U;II)V

    .line 69784
    return-void

    .line 69785
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "uDZbJl3GZvnd0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/46;->A0G(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_3

    goto :goto_1

    .line 69786
    .end local p2    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 69787
    :cond_4
    const/4 v4, 0x0

    .restart local p2    # "child":Landroid/view/View;
    :goto_2
    if-ge v4, v5, :cond_8

    .line 69788
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v6

    .line 69789
    .restart local p2    # "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/46;->A0C(Landroid/view/View;)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "ET87P0AumYMcjI6vylu4qFXoEmTHeXod"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-gt v3, p2, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 69790
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/46;->A0G(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_6

    .line 69791
    .restart local p2    # "child":Landroid/view/View;
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v4}, Lcom/facebook/ads/redexgen/X/be;->A0d(Lcom/facebook/ads/redexgen/X/4U;II)V

    .line 69792
    return-void

    .line 69793
    .end local p2    # "child":Landroid/view/View;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69794
    .end local p2
    .end local p2
    :cond_8
    return-void

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0d(Lcom/facebook/ads/redexgen/X/4U;II)V
    .locals 1

    .line 69795
    if-ne p2, p3, :cond_0

    .line 69796
    return-void

    .line 69797
    :cond_0
    if-le p3, p2, :cond_1

    .line 69798
    add-int/lit8 v0, p3, -0x1

    .local p0, "i":I
    :goto_0
    if-lt v0, p2, :cond_2

    .line 69799
    invoke-virtual {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A14(ILcom/facebook/ads/redexgen/X/4U;)V

    .line 69800
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 69801
    .restart local p0    # "i":I
    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 69802
    invoke-virtual {p0, p2, p1}, Lcom/facebook/ads/redexgen/X/4M;->A14(ILcom/facebook/ads/redexgen/X/4U;)V

    .line 69803
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 69804
    .end local p0    # "i":I
    :cond_2
    return-void
.end method

.method private A0e(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/41;)V
    .locals 4

    .line 69805
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/41;->A0B:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/41;->A09:Z

    if-eqz v0, :cond_1

    .line 69806
    :cond_0
    return-void

    .line 69807
    :cond_1
    iget v3, p2, Lcom/facebook/ads/redexgen/X/41;->A05:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "M7iaeQoExhHh03f7x1XNzmreS2Lq1zJK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "3weclwG7n9RXAySrMV3Jn51LrKgutG4n"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, -0x1

    if-ne v3, v0, :cond_4

    .line 69808
    iget v3, p2, Lcom/facebook/ads/redexgen/X/41;->A07:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "CiNTyTfZO3PW6tP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-direct {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/be;->A0b(Lcom/facebook/ads/redexgen/X/4U;I)V

    goto :goto_1

    .line 69809
    :cond_4
    iget v0, p2, Lcom/facebook/ads/redexgen/X/41;->A07:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/be;->A0c(Lcom/facebook/ads/redexgen/X/4U;I)V

    .line 69810
    :goto_1
    return-void
.end method

.method private A0f(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;II)V
    .locals 13

    .line 69811
    move-object v3, p0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4b;->A08()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4b;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69812
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A26()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69813
    :cond_0
    return-void

    .line 69814
    :cond_1
    const/4 v5, 0x0

    .local v1, "scrapExtraStart":I
    const/4 v4, 0x0

    .line 69815
    .local v1, "scrapExtraEnd":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4U;->A0J()Ljava/util/List;

    move-result-object v8

    .line 69816
    .local v3, "scrapList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 69817
    .local p1, "scrapSize":I
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0p(Landroid/view/View;)I

    move-result v7

    .line 69818
    .local v0, "firstChildPos":I
    const/4 v6, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v6, v9, :cond_6

    .line 69819
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/ads/redexgen/X/4e;

    .line 69820
    .local v0, "scrap":Lcom/facebook/ads/redexgen/X/4e;
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4e;->A0c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69821
    .end local v0    # "scrap":Lcom/facebook/ads/redexgen/X/4e;
    .end local v0
    .end local v5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 69822
    :cond_2
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4e;->A0I()I

    move-result v0

    .line 69823
    .local v0, "position":I
    const/4 v12, 0x1

    if-ge v0, v7, :cond_4

    const/4 v10, 0x1

    :goto_2
    iget-boolean v1, v3, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    const/4 v0, -0x1

    if-eq v10, v1, :cond_3

    .line 69824
    const/4 v12, -0x1

    .line 69825
    .local v5, "direction":I
    :cond_3
    if-ne v12, v0, :cond_5

    .line 69826
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4e;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/46;->A0D(Landroid/view/View;)I

    move-result v0

    add-int/2addr v5, v0

    goto :goto_1

    .line 69827
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 69828
    :cond_5
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4e;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/46;->A0D(Landroid/view/View;)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_1

    .line 69829
    .end local v0    # "position":I
    :cond_6
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iput-object v8, v0, Lcom/facebook/ads/redexgen/X/41;->A08:Ljava/util/List;

    .line 69830
    if-lez v5, :cond_7

    .line 69831
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/be;->A0G()Landroid/view/View;

    move-result-object v0

    .line 69832
    .local v0, "anchor":Landroid/view/View;
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0p(Landroid/view/View;)I

    move-result v0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/be;->A0X(II)V

    .line 69833
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iput v5, v0, Lcom/facebook/ads/redexgen/X/41;->A02:I

    .line 69834
    iput v2, v0, Lcom/facebook/ads/redexgen/X/41;->A00:I

    .line 69835
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/41;->A04()V

    .line 69836
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    invoke-direct {v3, p1, v0, p2, v2}, Lcom/facebook/ads/redexgen/X/be;->A08(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/41;Lcom/facebook/ads/redexgen/X/4b;Z)I

    .line 69837
    :cond_7
    if-lez v4, :cond_8

    .line 69838
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/be;->A0F()Landroid/view/View;

    move-result-object v0

    .line 69839
    .restart local v0    # "anchor":Landroid/view/View;
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0p(Landroid/view/View;)I

    move-result v0

    move/from16 v1, p4

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/be;->A0W(II)V

    .line 69840
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iput v4, v0, Lcom/facebook/ads/redexgen/X/41;->A02:I

    .line 69841
    iput v2, v0, Lcom/facebook/ads/redexgen/X/41;->A00:I

    .line 69842
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/41;->A04()V

    .line 69843
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    invoke-direct {v3, p1, v0, p2, v2}, Lcom/facebook/ads/redexgen/X/be;->A08(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/41;Lcom/facebook/ads/redexgen/X/4b;Z)I

    .line 69844
    :cond_8
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/41;->A08:Ljava/util/List;

    .line 69845
    return-void
.end method

.method private A0g(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/3z;)V
    .locals 4

    .line 69846
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/be;->A0k(Lcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/3z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69847
    return-void

    .line 69848
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/be;->A0j(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/3z;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "XDJ2jDWhUW9a7iN"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 69849
    return-void

    .line 69850
    :cond_1
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/3z;->A02()V

    .line 69851
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0C:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4b;->A03()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p3, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 69852
    return-void

    .line 69853
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0h(Z)V
    .locals 1

    .line 69854
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/be;->A22(Ljava/lang/String;)V

    .line 69855
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0A:Z

    if-ne p1, v0, :cond_0

    .line 69856
    return-void

    .line 69857
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/be;->A0A:Z

    .line 69858
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0y()V

    .line 69859
    return-void
.end method

.method private final A0i()Z
    .locals 1

    .line 69860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A09()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 69861
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A06()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 69862
    :goto_0
    return v0

    .line 69863
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0j(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/3z;)Z
    .locals 5

    .line 69864
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 69865
    return v4

    .line 69866
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0s()Landroid/view/View;

    move-result-object v1

    .line 69867
    .local p0, "focused":Landroid/view/View;
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p3, v1, p2}, Lcom/facebook/ads/redexgen/X/3z;->A06(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69868
    invoke-virtual {p3, v1}, Lcom/facebook/ads/redexgen/X/3z;->A05(Landroid/view/View;)V

    .line 69869
    return v3

    .line 69870
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/be;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0C:Z

    if-eq v1, v0, :cond_2

    .line 69871
    return v4

    .line 69872
    :cond_2
    iget-boolean v0, p3, Lcom/facebook/ads/redexgen/X/3z;->A02:Z

    if-eqz v0, :cond_7

    .line 69873
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/be;->A0O(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)Landroid/view/View;

    move-result-object v2

    .line 69874
    .local p3, "referenceChild":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_8

    .line 69875
    invoke-virtual {p3, v2}, Lcom/facebook/ads/redexgen/X/3z;->A04(Landroid/view/View;)V

    .line 69876
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4b;->A07()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A26()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 69878
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/46;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 69879
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A07()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 69880
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/46;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 69881
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0A()I

    move-result v0

    if-ge v1, v0, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 69882
    .local p1, "notVisible":Z
    :cond_4
    if-eqz v4, :cond_5

    .line 69883
    iget-boolean v0, p3, Lcom/facebook/ads/redexgen/X/3z;->A02:Z

    if-eqz v0, :cond_6

    .line 69884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A07()I

    move-result v0

    .line 69885
    :goto_1
    iput v0, p3, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 69886
    .end local p1    # "notVisible":Z
    :cond_5
    return v3

    .line 69887
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0A()I

    move-result v0

    goto :goto_1

    .line 69888
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/be;->A0P(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 69889
    :cond_8
    return v4
.end method

.method private A0k(Lcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/3z;)Z
    .locals 7

    .line 69890
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4b;->A07()Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    iget v3, p0, Lcom/facebook/ads/redexgen/X/be;->A01:I

    const/4 v2, -0x1

    if-ne v3, v2, :cond_1

    .line 69891
    :cond_0
    return v6

    .line 69892
    :cond_1
    const/high16 v1, -0x80000000

    if-ltz v3, :cond_2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4b;->A03()I

    move-result v0

    if-lt v3, v0, :cond_3

    .line 69893
    :cond_2
    iput v2, p0, Lcom/facebook/ads/redexgen/X/be;->A01:I

    .line 69894
    iput v1, p0, Lcom/facebook/ads/redexgen/X/be;->A02:I

    .line 69895
    return v6

    .line 69896
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A01:I

    iput v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 69897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69898
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    iput-boolean v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A02:Z

    .line 69899
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A02:Z

    if-eqz v0, :cond_4

    .line 69900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 69901
    :goto_0
    return v3

    .line 69902
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0A()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    goto :goto_0

    .line 69903
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A02:I

    if-ne v0, v1, :cond_10

    .line 69904
    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A01:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/be;->A1q(I)Landroid/view/View;

    move-result-object v2

    .line 69905
    .local p0, "child":Landroid/view/View;
    if-eqz v2, :cond_8

    .line 69906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/46;->A0D(Landroid/view/View;)I

    move-result v1

    .line 69907
    .local v0, "childSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0B()I

    move-result v0

    if-le v1, v0, :cond_6

    .line 69908
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/3z;->A02()V

    .line 69909
    return v3

    .line 69910
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/46;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 69911
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    .line 69912
    .local v6, "startGap":I
    if-gez v1, :cond_7

    .line 69913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0A()I

    move-result v0

    iput v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 69914
    iput-boolean v6, p2, Lcom/facebook/ads/redexgen/X/3z;->A02:Z

    .line 69915
    return v3

    .line 69916
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 69917
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/46;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 69918
    .local p1, "endGap":I
    if-gez v1, :cond_d

    .line 69919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A07()I

    move-result v0

    iput v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 69920
    iput-boolean v3, p2, Lcom/facebook/ads/redexgen/X/3z;->A02:Z

    .line 69921
    return v3

    .line 69922
    :cond_8
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    if-lez v0, :cond_c

    .line 69923
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0p(Landroid/view/View;)I

    move-result v1

    .line 69924
    .local v0, "pos":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A01:I

    if-ge v0, v1, :cond_9

    const/4 v5, 0x1

    :goto_1
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    const/4 v5, 0x0

    goto :goto_1

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "1tNDA9T9nSDYektAgKE77gOe81bMFJSk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "TZYqXNdWGZVKxzfIQyf7YZEk7yb7IRTm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v5, v4, :cond_b

    const/4 v6, 0x1

    :cond_b
    iput-boolean v6, p2, Lcom/facebook/ads/redexgen/X/3z;->A02:Z

    .line 69925
    .end local v0    # "pos":I
    :cond_c
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/3z;->A02()V

    goto :goto_3

    .line 69926
    :cond_d
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A02:Z

    if-eqz v0, :cond_e

    .line 69927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/46;->A0C(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_f

    .line 69928
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "ZbIhQvVoqDIGDPkO0OlvW9zioDplzu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/46;->A05()I

    move-result v0

    add-int/2addr v4, v0

    .line 69929
    :goto_2
    iput v4, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 69930
    .end local p1    # "endGap":I
    .end local v0
    .end local v6    # "startGap":I
    :goto_3
    return v3

    .line 69931
    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/46;->A0F(Landroid/view/View;)I

    move-result v4

    goto :goto_2

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69932
    .end local p0    # "child":Landroid/view/View;
    :cond_10
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    iput-boolean v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A02:Z

    .line 69933
    if-eqz v0, :cond_11

    .line 69934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A07()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A02:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 69935
    :goto_4
    return v3

    .line 69936
    :cond_11
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0A()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A02:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    goto :goto_4
.end method


# virtual methods
.method public A1h(ILcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 2

    .line 69937
    iget v1, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 69938
    const/4 v0, 0x0

    return v0

    .line 69939
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/be;->A04(ILcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)I

    move-result v0

    return v0
.end method

.method public A1i(ILcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 4

    .line 69940
    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    if-nez v0, :cond_0

    .line 69941
    const/4 v0, 0x0

    return v0

    .line 69942
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/be;->A04(ILcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "CDnF1shpb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3
.end method

.method public final A1j(Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 1

    .line 69943
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/be;->A09(Lcom/facebook/ads/redexgen/X/4b;)I

    move-result v0

    return v0
.end method

.method public final A1k(Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 1

    .line 69944
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/be;->A0A(Lcom/facebook/ads/redexgen/X/4b;)I

    move-result v0

    return v0
.end method

.method public final A1l(Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 1

    .line 69945
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/be;->A0B(Lcom/facebook/ads/redexgen/X/4b;)I

    move-result v0

    return v0
.end method

.method public final A1m(Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 1

    .line 69946
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/be;->A09(Lcom/facebook/ads/redexgen/X/4b;)I

    move-result v0

    return v0
.end method

.method public final A1n(Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 1

    .line 69947
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/be;->A0A(Lcom/facebook/ads/redexgen/X/4b;)I

    move-result v0

    return v0
.end method

.method public final A1o(Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 1

    .line 69948
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/be;->A0B(Lcom/facebook/ads/redexgen/X/4b;)I

    move-result v0

    return v0
.end method

.method public final A1p()Landroid/os/Parcelable;
    .locals 4

    .line 69949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 69950
    new-instance v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;)V

    new-instance v0, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;-><init>(Landroid/os/Parcelable;)V

    return-object v0

    .line 69951
    :cond_0
    new-instance v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v3}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 69952
    .local p0, "state":Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    if-lez v0, :cond_2

    .line 69953
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A2D()V

    .line 69954
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/be;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    xor-int/2addr v1, v0

    .line 69955
    .local v0, "didLayoutFromEnd":Z
    iput-boolean v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    .line 69956
    if-eqz v1, :cond_1

    .line 69957
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/be;->A0F()Landroid/view/View;

    move-result-object v2

    .line 69958
    .local v1, "refChild":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 69959
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/46;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    .line 69960
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4M;->A0p(Landroid/view/View;)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    .line 69961
    .end local v1    # "refChild":Landroid/view/View;
    :goto_0
    new-instance v0, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-direct {v0, v3}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;-><init>(Landroid/os/Parcelable;)V

    return-object v0

    .line 69962
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/be;->A0G()Landroid/view/View;

    move-result-object v1

    .line 69963
    .restart local v1    # "refChild":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4M;->A0p(Landroid/view/View;)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    .line 69964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/46;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 69965
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    goto :goto_0

    .line 69966
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    goto :goto_0
.end method

.method public final A1q(I)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 69967
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v1

    .line 69968
    .local p0, "childCount":I
    if-nez v1, :cond_0

    .line 69969
    const/4 v0, 0x0

    return-object v0

    .line 69970
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0p(Landroid/view/View;)I

    move-result v0

    .line 69971
    .local p1, "firstChild":I
    sub-int v0, p1, v0

    .line 69972
    .local v1, "viewPosition":I
    if-ltz v0, :cond_1

    if-ge v0, v1, :cond_1

    .line 69973
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v1

    .line 69974
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4M;->A0p(Landroid/view/View;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 69975
    return-object v1

    .line 69976
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A1q(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public A1r(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)Landroid/view/View;
    .locals 7

    .line 69977
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/be;->A0U()V

    .line 69978
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 69979
    return-object v6

    .line 69980
    :cond_0
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/be;->A2B(I)I

    move-result v3

    .line 69981
    .local p0, "layoutDir":I
    const/high16 v2, -0x80000000

    if-ne v3, v2, :cond_1

    .line 69982
    return-object v6

    .line 69983
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A2D()V

    .line 69984
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A2D()V

    .line 69985
    const v1, 0x3eaaaaab

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0B()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 69986
    .local p3, "maxScroll":I
    const/4 v0, 0x0

    invoke-direct {p0, v3, v1, v0, p4}, Lcom/facebook/ads/redexgen/X/be;->A0Y(IIZLcom/facebook/ads/redexgen/X/4b;)V

    .line 69987
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iput v2, v1, Lcom/facebook/ads/redexgen/X/41;->A07:I

    .line 69988
    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/41;->A0B:Z

    .line 69989
    const/4 v0, 0x1

    invoke-direct {p0, p3, v1, p4, v0}, Lcom/facebook/ads/redexgen/X/be;->A08(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/41;Lcom/facebook/ads/redexgen/X/4b;Z)I

    .line 69990
    const/4 v0, -0x1

    if-ne v3, v0, :cond_3

    .line 69991
    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/be;->A0N(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)Landroid/view/View;

    move-result-object v5

    .line 69992
    .local p4, "nextCandidate":Landroid/view/View;
    .restart local p4    # "nextCandidate":Landroid/view/View;
    :goto_0
    if-ne v3, v0, :cond_2

    .line 69993
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/be;->A0G()Landroid/view/View;

    move-result-object v4

    .line 69994
    .local p2, "nextFocus":Landroid/view/View;
    .restart local p2    # "nextFocus":Landroid/view/View;
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "JGtMOr7ZHjmwUVfbInfaZmEhr0nxGN38"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "jCrgpf8bwQbyd1C9u6FfAt5OnK6gBhSa"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    .line 69995
    if-nez v5, :cond_4

    .line 69996
    return-object v6

    .line 69997
    .end local p2    # "nextFocus":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/be;->A0F()Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 69998
    .end local p4    # "nextCandidate":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/be;->A0M(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 69999
    :cond_4
    return-object v4

    .line 70000
    :cond_5
    return-object v5

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1s()Lcom/facebook/ads/redexgen/X/4N;
    .locals 2

    .line 70001
    const/4 v1, -0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/4N;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/4N;-><init>(II)V

    return-object v0
.end method

.method public A1t(I)V
    .locals 1

    .line 70002
    iput p1, p0, Lcom/facebook/ads/redexgen/X/be;->A01:I

    .line 70003
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/be;->A02:I

    .line 70004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 70005
    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    .line 70006
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0y()V

    .line 70007
    return-void
.end method

.method public final A1u(IILcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 3

    .line 70008
    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    if-nez v0, :cond_1

    .line 70009
    .local p0, "delta":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 70010
    .end local p2    # null:I
    .end local p3    # null:Lcom/facebook/ads/redexgen/X/4b;
    :cond_0
    return-void

    .line 70011
    :cond_1
    move p1, p2

    goto :goto_0

    .line 70012
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A2D()V

    .line 70013
    const/4 v2, 0x1

    if-lez p1, :cond_3

    const/4 v1, 0x1

    .line 70014
    .local p2, "layoutDirection":I
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 70015
    .local p3, "absDy":I
    invoke-direct {p0, v1, v0, v2, p3}, Lcom/facebook/ads/redexgen/X/be;->A0Y(IIZLcom/facebook/ads/redexgen/X/4b;)V

    .line 70016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    invoke-virtual {p0, p3, v0, p4}, Lcom/facebook/ads/redexgen/X/be;->A2I(Lcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/41;Lcom/facebook/ads/redexgen/X/4K;)V

    .line 70017
    return-void

    .line 70018
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public final A1v(ILcom/facebook/ads/redexgen/X/4K;)V
    .locals 7

    .line 70019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v6, 0x0

    const/4 v5, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v4, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    .line 70021
    .local p0, "fromEnd":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    .line 70022
    .local v0, "anchorPos":I
    .restart local v0    # "anchorPos":I
    :goto_0
    if-eqz v4, :cond_0

    .line 70023
    .local p2, "direction":I
    .local v6, "targetPos":I
    :goto_1
    const/4 v1, 0x0

    .local v5, "i":I
    :goto_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A06:I

    if-ge v1, v0, :cond_5

    .line 70024
    if-ltz v2, :cond_5

    if-ge v2, p1, :cond_5

    .line 70025
    invoke-interface {p2, v2, v6}, Lcom/facebook/ads/redexgen/X/4K;->A3F(II)V

    .line 70026
    add-int/2addr v2, v5

    .line 70027
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 70028
    :cond_0
    const/4 v5, 0x1

    goto :goto_1

    .line 70029
    .end local p0    # "fromEnd":Z
    .end local v0    # "anchorPos":I
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/be;->A0U()V

    .line 70030
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    .line 70031
    .restart local p0    # "fromEnd":Z
    iget v3, p0, Lcom/facebook/ads/redexgen/X/be;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "j12HxmlCdcFNOCf90EDMVBFIs8rsuaoM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v3, v5, :cond_4

    .line 70032
    if-eqz v4, :cond_3

    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 70033
    .end local v0
    :cond_4
    iget v2, p0, Lcom/facebook/ads/redexgen/X/be;->A01:I

    goto :goto_0

    .line 70034
    .end local v5    # "i":I
    :cond_5
    return-void
.end method

.method public final A1w(Landroid/os/Parcelable;)V
    .locals 4

    .line 70035
    instance-of v0, p1, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    if-nez v0, :cond_0

    .line 70036
    return-void

    .line 70037
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 70038
    .local p0, "classLoader":Ljava/lang/ClassLoader;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "tHEWx5U9TGfOm0s3U2zrO5nR7UMaVIoI"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 70039
    return-void

    .line 70040
    :cond_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_3

    goto :goto_0

    .line 70041
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "tm"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast p1, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-virtual {p1, v3}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;->unwrap(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    .line 70042
    .local p1, "state":Landroid/os/Parcelable;
    instance-of v0, v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_4

    .line 70043
    check-cast v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    .line 70044
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0y()V

    .line 70045
    :cond_4
    return-void
.end method

.method public final A1x(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 70046
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A1x(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 70047
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    if-lez v0, :cond_0

    .line 70048
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A28()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 70049
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A29()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "9E5bhv9RVKulu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 70050
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1y(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)V
    .locals 9

    .line 70051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v4, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A01:I

    if-eq v0, v4, :cond_1

    .line 70052
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4b;->A03()I

    move-result v0

    if-nez v0, :cond_1

    .line 70053
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A1I(Lcom/facebook/ads/redexgen/X/4U;)V

    .line 70054
    return-void

    .line 70055
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/be;->A01:I

    .line 70057
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A2D()V

    .line 70058
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/41;->A0B:Z

    .line 70059
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/be;->A0U()V

    .line 70060
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0s()Landroid/view/View;

    move-result-object v5

    .line 70061
    .local p0, "focused":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0D:Lcom/facebook/ads/redexgen/X/3z;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A03:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A01:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_15

    .line 70062
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0D:Lcom/facebook/ads/redexgen/X/3z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3z;->A03()V

    .line 70063
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/be;->A0D:Lcom/facebook/ads/redexgen/X/3z;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0C:Z

    xor-int/2addr v1, v0

    iput-boolean v1, v5, Lcom/facebook/ads/redexgen/X/3z;->A02:Z

    .line 70064
    invoke-direct {p0, p1, p2, v5}, Lcom/facebook/ads/redexgen/X/be;->A0g(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/3z;)V

    .line 70065
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/be;->A0D:Lcom/facebook/ads/redexgen/X/3z;

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_17

    sget-object v5, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "pP9DXN24lJAGcvrzmJLzNvbz"

    const/4 v0, 0x0

    aput-object v1, v5, v0

    iput-boolean v2, v6, Lcom/facebook/ads/redexgen/X/3z;->A03:Z

    .line 70066
    :cond_4
    :goto_0
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/be;->A0C(Lcom/facebook/ads/redexgen/X/4b;)I

    move-result v7

    .line 70067
    .local v0, "extra":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/41;->A04:I

    if-ltz v0, :cond_14

    .line 70068
    .local v0, "extraForEnd":I
    const/4 v6, 0x0

    .line 70069
    .local v0, "extraForStart":I
    .restart local v0    # "extraForStart":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0A()I

    move-result v0

    add-int/2addr v6, v0

    .line 70070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A08()I

    move-result v0

    add-int/2addr v7, v0

    .line 70071
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4b;->A07()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v8, p0, Lcom/facebook/ads/redexgen/X/be;->A01:I

    sget-object v5, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v5, v0

    const/4 v0, 0x7

    aget-object v0, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_13

    sget-object v5, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "HnPzY03honFOjhYT25K5WFAFMhFIclok"

    const/4 v0, 0x1

    aput-object v1, v5, v0

    if-eq v8, v4, :cond_5

    :goto_2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/be;->A02:I

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_5

    .line 70072
    invoke-virtual {p0, v8}, Lcom/facebook/ads/redexgen/X/be;->A1q(I)Landroid/view/View;

    move-result-object v1

    .line 70073
    .local v0, "existing":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 70074
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    if-eqz v0, :cond_12

    .line 70075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A07()I

    move-result v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 70076
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/46;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v8, v0

    sget-object v5, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v5, v0

    const/4 v0, 0x4

    aget-object v5, v5, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_11

    .line 70077
    .local v0, "current":I
    sget-object v5, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "r3FnQil1r32czyLALUutLd0XCkxYZ4G"

    const/4 v0, 0x5

    aput-object v1, v5, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A02:I

    sub-int/2addr v8, v0

    .line 70078
    .local v0, "upcomingOffset":I
    .restart local v0    # "upcomingOffset":I
    :goto_3
    if-lez v8, :cond_10

    .line 70079
    add-int/2addr v6, v8

    .line 70080
    .end local v0    # "upcomingOffset":I
    .end local v0
    .end local v0
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0D:Lcom/facebook/ads/redexgen/X/3z;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A02:Z

    if-eqz v0, :cond_e

    .line 70081
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    if-eqz v0, :cond_6

    const/4 v4, 0x1

    .line 70082
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/4U;
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0D:Lcom/facebook/ads/redexgen/X/3z;

    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/facebook/ads/redexgen/X/be;->A2G(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/3z;I)V

    .line 70083
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A1H(Lcom/facebook/ads/redexgen/X/4U;)V

    .line 70084
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/be;->A0i()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/41;->A09:Z

    .line 70085
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4b;->A07()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/41;->A0A:Z

    .line 70086
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0D:Lcom/facebook/ads/redexgen/X/3z;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A02:Z

    if-eqz v0, :cond_c

    .line 70087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0D:Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/be;->A0a(Lcom/facebook/ads/redexgen/X/3z;)V

    .line 70088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iput v6, v0, Lcom/facebook/ads/redexgen/X/41;->A02:I

    .line 70089
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/be;->A08(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/41;Lcom/facebook/ads/redexgen/X/4b;Z)I

    .line 70090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/41;->A06:I

    .line 70091
    .local v0, "startOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/41;->A01:I

    .line 70092
    .local v0, "firstElement":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/41;->A00:I

    if-lez v0, :cond_7

    .line 70093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/41;->A00:I

    add-int/2addr v7, v0

    .line 70094
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0D:Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/be;->A0Z(Lcom/facebook/ads/redexgen/X/3z;)V

    .line 70095
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iput v7, v5, Lcom/facebook/ads/redexgen/X/41;->A02:I

    .line 70096
    iget v1, v5, Lcom/facebook/ads/redexgen/X/41;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/41;->A03:I

    add-int/2addr v1, v0

    iput v1, v5, Lcom/facebook/ads/redexgen/X/41;->A01:I

    .line 70097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/be;->A08(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/41;Lcom/facebook/ads/redexgen/X/4b;Z)I

    .line 70098
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/41;->A06:I

    .line 70099
    .local v0, "endOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/41;->A00:I

    if-lez v0, :cond_8

    .line 70100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/41;->A00:I

    .line 70101
    invoke-direct {p0, v4, v6}, Lcom/facebook/ads/redexgen/X/be;->A0X(II)V

    .line 70102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/41;->A02:I

    .line 70103
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/be;->A08(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/41;Lcom/facebook/ads/redexgen/X/4b;Z)I

    .line 70104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/41;->A06:I

    .line 70105
    .end local v0    # "endOffset":I
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    if-lez v0, :cond_9

    .line 70106
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0C:Z

    xor-int/2addr v1, v0

    if-eqz v1, :cond_b

    .line 70107
    invoke-direct {p0, v5, p1, p2, v2}, Lcom/facebook/ads/redexgen/X/be;->A05(ILcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Z)I

    move-result v0

    .line 70108
    .local v4, "fixOffset":I
    add-int/2addr v6, v0

    .line 70109
    add-int/2addr v5, v0

    .line 70110
    invoke-direct {p0, v6, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/be;->A06(ILcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Z)I

    move-result v0

    .line 70111
    .end local v4    # "fixOffset":I
    .local p2, "fixOffset":I
    add-int/2addr v6, v0

    .line 70112
    add-int/2addr v5, v0

    .line 70113
    .end local p2    # "fixOffset":I
    .end local p2
    :cond_9
    :goto_7
    invoke-direct {p0, p1, p2, v6, v5}, Lcom/facebook/ads/redexgen/X/be;->A0f(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;II)V

    .line 70114
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4b;->A07()Z

    move-result v0

    if-nez v0, :cond_a

    .line 70115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0I()V

    .line 70116
    :goto_8
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0C:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A08:Z

    .line 70117
    return-void

    .line 70118
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0D:Lcom/facebook/ads/redexgen/X/3z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3z;->A03()V

    goto :goto_8

    .line 70119
    :cond_b
    invoke-direct {p0, v6, p1, p2, v2}, Lcom/facebook/ads/redexgen/X/be;->A06(ILcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Z)I

    move-result v0

    .line 70120
    .restart local v4    # "fixOffset":I
    add-int/2addr v6, v0

    .line 70121
    add-int/2addr v5, v0

    .line 70122
    invoke-direct {p0, v5, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/be;->A05(ILcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Z)I

    move-result v0

    .line 70123
    .end local v4    # "fixOffset":I
    .restart local p2    # "fixOffset":I
    add-int/2addr v6, v0

    .line 70124
    add-int/2addr v5, v0

    goto :goto_7

    .line 70125
    .end local v0
    .end local v0
    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0D:Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/be;->A0Z(Lcom/facebook/ads/redexgen/X/3z;)V

    .line 70126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iput v7, v0, Lcom/facebook/ads/redexgen/X/41;->A02:I

    .line 70127
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/be;->A08(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/41;Lcom/facebook/ads/redexgen/X/4b;Z)I

    .line 70128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/41;->A06:I

    .line 70129
    .restart local v0    # "endOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/41;->A01:I

    .line 70130
    .local v0, "lastElement":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/41;->A00:I

    if-lez v0, :cond_d

    .line 70131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/41;->A00:I

    add-int/2addr v6, v0

    .line 70132
    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0D:Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/be;->A0a(Lcom/facebook/ads/redexgen/X/3z;)V

    .line 70133
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iput v6, v7, Lcom/facebook/ads/redexgen/X/41;->A02:I

    .line 70134
    iget v1, v7, Lcom/facebook/ads/redexgen/X/41;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/41;->A03:I

    add-int/2addr v1, v0

    iput v1, v7, Lcom/facebook/ads/redexgen/X/41;->A01:I

    .line 70135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/be;->A08(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/41;Lcom/facebook/ads/redexgen/X/4b;Z)I

    .line 70136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/41;->A06:I

    .line 70137
    .local v0, "startOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/41;->A00:I

    if-lez v0, :cond_8

    .line 70138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/41;->A00:I

    .line 70139
    invoke-direct {p0, v4, v5}, Lcom/facebook/ads/redexgen/X/be;->A0W(II)V

    .line 70140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/41;->A02:I

    .line 70141
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/be;->A08(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/41;Lcom/facebook/ads/redexgen/X/4b;Z)I

    .line 70142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/41;->A06:I

    goto/16 :goto_6

    .line 70143
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/4U;
    :cond_e
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    if-eqz v0, :cond_f

    goto/16 :goto_5

    .line 70144
    :cond_f
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 70145
    :cond_10
    sub-int/2addr v7, v8

    goto/16 :goto_4

    .line 70146
    .local v0, "current":I
    :cond_11
    sget-object v5, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "sdmiyO1ExKOYMO2wbr6XNnW0K6t4WoaH"

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const-string v1, "ty9AfnxQn4ghzZPCSImQPyrccPhuEwJu"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A02:I

    sub-int/2addr v8, v0

    .local v0, "upcomingOffset":I
    goto/16 :goto_3

    .line 70147
    .end local v0    # "upcomingOffset":I
    .end local v0
    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/46;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 70148
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    .line 70149
    .restart local v0    # "upcomingOffset":I
    iget v8, p0, Lcom/facebook/ads/redexgen/X/be;->A02:I

    sub-int/2addr v8, v1

    goto/16 :goto_3

    :cond_13
    sget-object v5, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "wwbDuuRcKwQkcLvBFtW9wuMbOUuGYFzY"

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const-string v1, "YequbpJjhMyIl9uyXvP2gytASLo9xZ7L"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    if-eq v8, v4, :cond_5

    goto/16 :goto_2

    .line 70150
    .end local v0    # "upcomingOffset":I
    .end local v0
    :cond_14
    move v6, v7

    .line 70151
    .restart local v0    # "upcomingOffset":I
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 70152
    :cond_15
    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/46;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 70153
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A07()I

    move-result v0

    if-ge v1, v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 70154
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/46;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 70155
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0A()I

    move-result v0

    if-gt v1, v0, :cond_4

    .line 70156
    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0D:Lcom/facebook/ads/redexgen/X/3z;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/3z;->A05(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1z(Lcom/facebook/ads/redexgen/X/4b;)V
    .locals 1

    .line 70157
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A1z(Lcom/facebook/ads/redexgen/X/4b;)V

    .line 70158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    .line 70159
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/be;->A01:I

    .line 70160
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/be;->A02:I

    .line 70161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0D:Lcom/facebook/ads/redexgen/X/3z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3z;->A03()V

    .line 70162
    return-void
.end method

.method public final A20(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4U;)V
    .locals 1

    .line 70163
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4M;->A20(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4U;)V

    .line 70164
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A09:Z

    if-eqz v0, :cond_0

    .line 70165
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/4M;->A1I(Lcom/facebook/ads/redexgen/X/4U;)V

    .line 70166
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4U;->A0P()V

    .line 70167
    :cond_0
    return-void
.end method

.method public A21(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4b;I)V
    .locals 2

    .line 70168
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bd;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/bd;-><init>(Landroid/content/Context;)V

    .line 70169
    .local p0, "linearSmoothScroller":Lcom/facebook/ads/redexgen/X/bd;
    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/4Z;->A0A(I)V

    .line 70170
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4M;->A1L(Lcom/facebook/ads/redexgen/X/4Z;)V

    .line 70171
    return-void
.end method

.method public final A22(Ljava/lang/String;)V
    .locals 1

    .line 70172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 70173
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A22(Ljava/lang/String;)V

    .line 70174
    :cond_0
    return-void
.end method

.method public final A23()Z
    .locals 4

    .line 70175
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0Y()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 70176
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0i()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 70177
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A1W()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "ZYU5Lu8KJdo1W8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 70178
    :goto_0
    return v0

    .line 70179
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A24()Z
    .locals 1

    .line 70180
    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A25()Z
    .locals 2

    .line 70181
    iget v1, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public A26()Z
    .locals 2

    .line 70182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/be;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A0C:Z

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A27()I
    .locals 3

    .line 70183
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/be;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 70184
    .local p0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0p(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public final A28()I
    .locals 3

    .line 70185
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/be;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 70186
    .local p0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0p(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public final A29()I
    .locals 4

    .line 70187
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v3

    const/4 v2, 0x1

    sub-int/2addr v3, v2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/be;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 70188
    .local p0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0p(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public final A2A()I
    .locals 1

    .line 70189
    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    return v0
.end method

.method public final A2B(I)I
    .locals 7

    .line 70190
    const/4 v6, -0x1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/16 v5, 0x11

    const/high16 v4, -0x80000000

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "6DQtaB3lJkGKNvmH8s9QQc68TsOBLDE"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq p1, v5, :cond_8

    const/16 v0, 0x21

    if-eq p1, v0, :cond_6

    const/16 v0, 0x42

    if-eq p1, v0, :cond_3

    const/16 v0, 0x82

    if-eq p1, v0, :cond_1

    .line 70191
    return v4

    .line 70192
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    if-ne v0, v3, :cond_2

    :goto_0
    return v3

    .line 70193
    :cond_2
    const/high16 v3, -0x80000000

    goto :goto_0

    .line 70194
    :cond_3
    iget v4, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "iK4U0ZRXzEtdW2fzfe8Bf3AGjQ0TqpV"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v4, :cond_5

    :goto_1
    return v3

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "iGul3AgWfaQLWccPz7lC"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v4, :cond_5

    goto :goto_1

    .line 70195
    :cond_5
    const/high16 v3, -0x80000000

    goto :goto_1

    .line 70196
    :cond_6
    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    if-ne v0, v3, :cond_7

    :goto_2
    return v6

    .line 70197
    :cond_7
    const/high16 v6, -0x80000000

    goto :goto_2

    .line 70198
    :cond_8
    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    if-nez v0, :cond_9

    :goto_3
    return v6

    .line 70199
    :cond_9
    const/high16 v6, -0x80000000

    goto :goto_3

    .line 70200
    :cond_a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    if-ne v0, v3, :cond_b

    .line 70201
    return v3

    .line 70202
    :cond_b
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A2J()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c

    if-eqz v4, :cond_d

    .line 70203
    :goto_4
    return v6

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "RrOYqAD7qkiKfoMMpmv8yvTfnugso6lX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "bATvX0yF7VRTLnTu9UqtYEiONslIi7NA"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_d

    goto :goto_4

    .line 70204
    :cond_d
    return v3

    .line 70205
    :cond_e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    if-ne v0, v3, :cond_f

    .line 70206
    return v6

    .line 70207
    :cond_f
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A2J()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_10

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "oHMhsTCUvi8O8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_11

    .line 70208
    :goto_5
    return v3

    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "cASVkZ3y2DetEF9G8otARsSwnjimgRtg"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "wDGntkgp6XogcOY7rYz8EKhCse1aHWOv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_11

    goto :goto_5

    .line 70209
    :cond_11
    return v6
.end method

.method public A2C(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;III)Landroid/view/View;
    .locals 7

    .line 70210
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A2D()V

    .line 70211
    const/4 v6, 0x0

    .line 70212
    .local p0, "invalidMatch":Landroid/view/View;
    const/4 v5, 0x0

    .line 70213
    .local p1, "outOfBoundsMatch":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A0A()I

    move-result v4

    .line 70214
    .local p2, "boundsStart":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/46;->A07()I

    move-result v3

    .line 70215
    .local p3, "boundsEnd":I
    if-le p4, p3, :cond_3

    const/4 v2, 0x1

    .line 70216
    .local p5, "i":I
    :goto_0
    if-eq p3, p4, :cond_5

    .line 70217
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v1

    .line 70218
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4M;->A0p(Landroid/view/View;)I

    move-result v0

    .line 70219
    .local v5, "position":I
    if-ltz v0, :cond_0

    if-ge v0, p5, :cond_0

    .line 70220
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A02()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70221
    if-nez v6, :cond_0

    .line 70222
    move-object v6, v1

    .line 70223
    .end local v6    # "view":Landroid/view/View;
    .end local v5    # "position":I
    :cond_0
    :goto_1
    add-int/2addr p3, v2

    goto :goto_0

    .line 70224
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/46;->A0F(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 70225
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/46;->A0C(Landroid/view/View;)I

    move-result v0

    if-ge v0, v4, :cond_4

    .line 70226
    :cond_2
    if-nez v5, :cond_0

    .line 70227
    move-object v5, v1

    goto :goto_1

    .line 70228
    :cond_3
    const/4 v2, -0x1

    goto :goto_0

    .line 70229
    :cond_4
    return-object v1

    .line 70230
    .end local p5    # "i":I
    :cond_5
    if-eqz v5, :cond_6

    :goto_2
    return-object v5

    :cond_6
    move-object v5, v6

    goto :goto_2
.end method

.method public final A2D()V
    .locals 1

    .line 70231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    if-nez v0, :cond_0

    .line 70232
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/be;->A0S()Lcom/facebook/ads/redexgen/X/41;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A07:Lcom/facebook/ads/redexgen/X/41;

    .line 70233
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    if-nez v0, :cond_1

    .line 70234
    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/46;->A02(Lcom/facebook/ads/redexgen/X/4M;I)Lcom/facebook/ads/redexgen/X/46;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 70235
    :cond_1
    return-void
.end method

.method public final A2E(I)V
    .locals 4

    .line 70236
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 70237
    :cond_0
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "wMuOUB68W5cmyVCUMue198JFnL9Wkeot"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/be;->A22(Ljava/lang/String;)V

    .line 70238
    iget v0, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    if-ne p1, v0, :cond_2

    .line 70239
    return-void

    .line 70240
    :cond_2
    iput p1, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    .line 70241
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    .line 70242
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0y()V

    .line 70243
    return-void

    .line 70244
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/be;->A0T(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A2F(II)V
    .locals 3

    .line 70245
    iput p1, p0, Lcom/facebook/ads/redexgen/X/be;->A01:I

    .line 70246
    iput p2, p0, Lcom/facebook/ads/redexgen/X/be;->A02:I

    .line 70247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 70248
    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    .line 70249
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0y()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 70250
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "tDl3kZGUKMTs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void
.end method

.method public A2G(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/3z;I)V
    .locals 0

    .line 70251
    return-void
.end method

.method public A2H(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/41;Lcom/facebook/ads/redexgen/X/40;)V
    .locals 14

    .line 70252
    move-object v7, p0

    move-object/from16 v5, p3

    invoke-virtual {v5, p1}, Lcom/facebook/ads/redexgen/X/41;->A03(Lcom/facebook/ads/redexgen/X/4U;)Landroid/view/View;

    move-result-object v9

    .line 70253
    .local v3, "view":Landroid/view/View;
    const/4 v3, 0x1

    move-object/from16 v4, p4

    if-nez v9, :cond_0

    .line 70254
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/40;->A01:Z

    .line 70255
    return-void

    .line 70256
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4N;

    .line 70257
    .local v2, "params":Lcom/facebook/ads/redexgen/X/4N;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/41;->A08:Ljava/util/List;

    const/4 v6, -0x1

    const/4 v8, 0x0

    if-nez v0, :cond_9

    .line 70258
    iget-boolean v1, v7, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    iget v0, v5, Lcom/facebook/ads/redexgen/X/41;->A05:I

    if-ne v0, v6, :cond_8

    const/4 v0, 0x1

    :goto_0
    if-ne v1, v0, :cond_7

    .line 70259
    invoke-virtual {v7, v9}, Lcom/facebook/ads/redexgen/X/4M;->A17(Landroid/view/View;)V

    .line 70260
    :goto_1
    invoke-virtual {v7, v9, v8, v8}, Lcom/facebook/ads/redexgen/X/4M;->A1A(Landroid/view/View;II)V

    .line 70261
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/46;->A0D(Landroid/view/View;)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/40;->A00:I

    .line 70262
    iget v0, v7, Lcom/facebook/ads/redexgen/X/be;->A00:I

    if-ne v0, v3, :cond_5

    .line 70263
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/be;->A2J()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70264
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0h()I

    move-result v12

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0f()I

    move-result v0

    sub-int/2addr v12, v0

    .line 70265
    .local p0, "right":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/46;->A0E(Landroid/view/View;)I

    move-result v0

    sub-int v10, v12, v0

    .line 70266
    .local p2, "left":I
    .restart local p0    # "right":I
    :goto_2
    iget v0, v5, Lcom/facebook/ads/redexgen/X/41;->A05:I

    if-ne v0, v6, :cond_3

    .line 70267
    iget v13, v5, Lcom/facebook/ads/redexgen/X/41;->A06:I

    .line 70268
    .local p1, "bottom":I
    iget v11, v5, Lcom/facebook/ads/redexgen/X/41;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/40;->A00:I

    sub-int/2addr v11, v0

    .line 70269
    .local v5, "top":I
    .end local p0    # "right":I
    .end local p1    # "bottom":I
    .end local p2    # "left":I
    .local v2, "left":I
    .local v0, "top":I
    .local v6, "right":I
    .local v8, "bottom":I
    :goto_3
    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/4M;->A1B(Landroid/view/View;IIII)V

    .line 70270
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4N;->A02()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4N;->A01()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70271
    :cond_1
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/40;->A03:Z

    .line 70272
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/40;->A02:Z

    .line 70273
    return-void

    .line 70274
    .end local p1
    .end local v5    # "top":I
    :cond_3
    iget v11, v5, Lcom/facebook/ads/redexgen/X/41;->A06:I

    .line 70275
    .local p1, "top":I
    iget v13, v5, Lcom/facebook/ads/redexgen/X/41;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/40;->A00:I

    add-int/2addr v13, v0

    .local v5, "bottom":I
    goto :goto_3

    .line 70276
    .end local p0
    .end local p2
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0e()I

    move-result v10

    .line 70277
    .restart local p2    # "left":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/46;->A0E(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v10

    goto :goto_2

    .line 70278
    .end local p0
    .end local p1    # "top":I
    .end local p2    # "left":I
    .end local v5    # "bottom":I
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0g()I

    move-result v11

    .line 70279
    .local p0, "top":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/46;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/46;->A0E(Landroid/view/View;)I

    move-result v13

    add-int/2addr v13, v11

    .line 70280
    .local p2, "bottom":I
    iget v0, v5, Lcom/facebook/ads/redexgen/X/41;->A05:I

    if-ne v0, v6, :cond_6

    .line 70281
    iget v12, v5, Lcom/facebook/ads/redexgen/X/41;->A06:I

    .line 70282
    .local p1, "right":I
    iget v10, v5, Lcom/facebook/ads/redexgen/X/41;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/40;->A00:I

    sub-int/2addr v10, v0

    .local v5, "left":I
    goto :goto_3

    .line 70283
    .end local p1    # "right":I
    .end local v5    # "left":I
    :cond_6
    iget v10, v5, Lcom/facebook/ads/redexgen/X/41;->A06:I

    .line 70284
    .local p1, "left":I
    iget v12, v5, Lcom/facebook/ads/redexgen/X/41;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/40;->A00:I

    add-int/2addr v12, v0

    goto :goto_3

    .line 70285
    :cond_7
    invoke-virtual {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/4M;->A19(Landroid/view/View;I)V

    goto :goto_1

    .line 70286
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 70287
    :cond_9
    iget-boolean v1, v7, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    iget v0, v5, Lcom/facebook/ads/redexgen/X/41;->A05:I

    if-ne v0, v6, :cond_a

    const/4 v0, 0x1

    :goto_4
    if-ne v1, v0, :cond_b

    .line 70288
    invoke-virtual {v7, v9}, Lcom/facebook/ads/redexgen/X/4M;->A16(Landroid/view/View;)V

    goto/16 :goto_1

    .line 70289
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 70290
    :cond_b
    invoke-virtual {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/4M;->A18(Landroid/view/View;I)V

    goto/16 :goto_1
.end method

.method public A2I(Lcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/41;Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 3

    .line 70291
    iget v2, p2, Lcom/facebook/ads/redexgen/X/41;->A01:I

    .line 70292
    .local p0, "pos":I
    if-ltz v2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4b;->A03()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 70293
    const/4 v1, 0x0

    iget v0, p2, Lcom/facebook/ads/redexgen/X/41;->A07:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p3, v2, v0}, Lcom/facebook/ads/redexgen/X/4K;->A3F(II)V

    .line 70294
    :cond_0
    return-void
.end method

.method public final A2J()Z
    .locals 2

    .line 70295
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0a()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A43(I)Landroid/graphics/PointF;
    .locals 6

    .line 70296
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    if-nez v0, :cond_0

    .line 70297
    const/4 v0, 0x0

    return-object v0

    .line 70298
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0p(Landroid/view/View;)I

    move-result v0

    .line 70299
    .local p1, "firstChildPos":I
    const/4 v5, 0x1

    if-ge p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/be;->A05:Z

    if-eq v1, v0, :cond_2

    const/4 v5, -0x1

    .line 70300
    .local p0, "direction":I
    :cond_2
    iget v4, p0, Lcom/facebook/ads/redexgen/X/be;->A00:I

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A0G:[Ljava/lang/String;

    const-string v1, "5EjIyJt0kzQOvAP28HqeuGPqaebz9kN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v4, :cond_3

    .line 70301
    int-to-float v1, v5

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 70302
    :cond_3
    int-to-float v1, v5

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
