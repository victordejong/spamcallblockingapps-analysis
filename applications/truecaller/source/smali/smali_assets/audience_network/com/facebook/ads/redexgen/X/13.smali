.class public final Lcom/facebook/ads/redexgen/X/13;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/co;

.field public A01:Lcom/facebook/ads/redexgen/X/12;

.field public A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JgmY627JJ4fVvMUsUI7dBJzvca"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2Fivc7ze9Y6M7vLBAhVCw66dd2zEUTp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oqNyJxLxp23hnAfKGRpFUMlaCTnSy4au"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HRO7fC4J0U3bXqsrOiWljP6J940cuLTJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rhEs9JkkityiMJcgD18RNPKtdGmllPs6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "c8I5EiJJKjWgwuyghylYWruaZ4nXJiut"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YeKDqRnNq5JcEGU0HYsnt6sxK1D4K6hE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zIQMBMVVQmczFglCifMrZtV9RNUhKeCf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/13;->A03:[Ljava/lang/String;

    .line 2615
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/co;Lcom/facebook/ads/redexgen/X/12;)V
    .locals 0

    .line 2616
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2617
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/13;->A00:Lcom/facebook/ads/redexgen/X/co;

    .line 2618
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    .line 2619
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2620
    return-void
.end method


# virtual methods
.method public final A00()Landroid/content/IntentFilter;
    .locals 3

    .line 2621
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2622
    .local p0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A06:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2623
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2624
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2625
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A09:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2626
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2627
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2628
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A04:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2629
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2630
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2631
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A0A:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2632
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2633
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2634
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A05:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2635
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2636
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2637
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A0C:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2638
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2639
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2640
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A0B:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2641
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2642
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2643
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A03:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2644
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2645
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2646
    return-object v2
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 2647
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 2648
    .local p0, "action":Ljava/lang/String;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A06:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2649
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2650
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2651
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/13;->A00:Lcom/facebook/ads/redexgen/X/co;

    sget-object v1, Lcom/facebook/ads/redexgen/X/13;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/13;->A03:[Ljava/lang/String;

    const-string v1, "z37hhVYNur1y5njE4t22VYTMbB"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/12;->ABz(Lcom/facebook/ads/redexgen/X/co;)V

    .line 2652
    :cond_0
    :goto_0
    return-void

    .line 2653
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A09:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2654
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2655
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2656
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/JD;->A1C(Landroid/content/Context;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/13;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/13;->A03:[Ljava/lang/String;

    const-string v1, "a2nbOp8yH430aeg70B0MHQFnwN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 2657
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/13;->A00:Lcom/facebook/ads/redexgen/X/co;

    sget-object v3, Lcom/facebook/ads/AdError;->AD_PRESENTATION_ERROR:Lcom/facebook/ads/AdError;

    sget-object v2, Lcom/facebook/ads/redexgen/X/13;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/13;->A03:[Ljava/lang/String;

    const-string v1, "Smm3aT6IchFgLH9ob00fwQqxHFnPPG6O"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "wzZfDEncWZ9M4YUYJFr8Gzf2lfnMb6hd"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/12;->AC0(Lcom/facebook/ads/redexgen/X/co;Lcom/facebook/ads/AdError;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/13;->A03:[Ljava/lang/String;

    const-string v1, "douVyTcHxmEKv1YyJqQbVTsvWWCOpXBn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "x6yn97aV8hj96Z0WREVv4HAdEeLr9VIY"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/12;->AC0(Lcom/facebook/ads/redexgen/X/co;Lcom/facebook/ads/AdError;)V

    goto :goto_0

    .line 2658
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/13;->A00:Lcom/facebook/ads/redexgen/X/co;

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->AC0(Lcom/facebook/ads/redexgen/X/co;Lcom/facebook/ads/AdError;)V

    goto :goto_0

    .line 2659
    :cond_4
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A04:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2660
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2661
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2662
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A00:Lcom/facebook/ads/redexgen/X/co;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABw(Lcom/facebook/ads/redexgen/X/co;)V

    goto/16 :goto_0

    .line 2663
    :cond_5
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A0A:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2664
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2665
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2666
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A00:Lcom/facebook/ads/redexgen/X/co;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABy(Lcom/facebook/ads/redexgen/X/co;)V

    goto/16 :goto_0

    .line 2667
    :cond_6
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A05:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2668
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2669
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/12;->onRewardedVideoClosed()V

    goto/16 :goto_0

    .line 2671
    :cond_7
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A0B:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2672
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2673
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2674
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A00:Lcom/facebook/ads/redexgen/X/co;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABu(Lcom/facebook/ads/redexgen/X/co;)V

    goto/16 :goto_0

    .line 2675
    :cond_8
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A0C:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2676
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2677
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2678
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A00:Lcom/facebook/ads/redexgen/X/co;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABv(Lcom/facebook/ads/redexgen/X/co;)V

    goto/16 :goto_0

    .line 2679
    :cond_9
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A03:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2680
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2681
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/12;->onRewardedVideoActivityDestroyed()V

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
