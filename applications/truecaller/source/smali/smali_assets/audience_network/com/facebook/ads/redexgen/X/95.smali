.class public final Lcom/facebook/ads/redexgen/X/95;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0G:[B

.field public static final A0H:Lcom/facebook/ads/internal/protocol/AdPlacementType;

.field public static final A0I:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:Lcom/facebook/ads/internal/protocol/AdPlacementType;

.field public A0C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/93;",
            ">;"
        }
    .end annotation
.end field

.field public A0D:Z

.field public A0E:Z

.field public final A0F:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 19745
    invoke-static {}, Lcom/facebook/ads/redexgen/X/95;->A02()V

    const-class v0, Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/95;->A0I:Ljava/lang/String;

    .line 19746
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->UNKNOWN:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sput-object v0, Lcom/facebook/ads/redexgen/X/95;->A0H:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19747
    .local p2, "placementData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19748
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A01:I

    .line 19749
    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A00:I

    .line 19750
    sget-object v0, Lcom/facebook/ads/redexgen/X/95;->A0H:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0B:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 19751
    const/4 v5, 0x1

    iput v5, p0, Lcom/facebook/ads/redexgen/X/95;->A03:I

    .line 19752
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/95;->A0A:I

    .line 19753
    iput v1, p0, Lcom/facebook/ads/redexgen/X/95;->A04:I

    .line 19754
    const/16 v0, 0x14

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A05:I

    .line 19755
    iput v1, p0, Lcom/facebook/ads/redexgen/X/95;->A08:I

    .line 19756
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A09:I

    .line 19757
    const/16 v0, 0x2710

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A06:I

    .line 19758
    const/16 v4, 0xc8

    iput v4, p0, Lcom/facebook/ads/redexgen/X/95;->A07:I

    .line 19759
    const/16 v0, 0xe10

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A02:I

    .line 19760
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/95;->A0D:Z

    .line 19761
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/95;->A0E:Z

    .line 19762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0C:Ljava/util/List;

    .line 19763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0F:J

    .line 19764
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 19765
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 19766
    :pswitch_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A01(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0C:Ljava/util/List;

    .line 19767
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v6

    .line 19768
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v6}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v3

    .line 19769
    .local v0, "acceptCookie":Z
    invoke-virtual {v6, v5}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 19770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/93;

    .line 19771
    .local v4, "cookie":Lcom/facebook/ads/redexgen/X/93;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/93;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19772
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/93;->A00:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    const/4 v1, 0x1

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/93;->A02:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/93;->A01:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    const/16 v1, 0x9

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19773
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/93;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    const/4 v1, 0x7

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19774
    .local v0, "cookieString":Ljava/lang/String;
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/93;->A01:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 19775
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_3

    .line 19776
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 19777
    :cond_3
    invoke-virtual {v6, v3}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    goto/16 :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19778
    :catch_0
    move-exception v6

    .line 19779
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/ads/redexgen/X/95;->A0I:Ljava/lang/String;

    const/16 v2, 0x19

    const/16 v1, 0x15

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19780
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 19781
    :pswitch_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A06:I

    .line 19782
    goto/16 :goto_0

    .line 19783
    :pswitch_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A09:I

    .line 19784
    goto/16 :goto_0

    .line 19785
    :pswitch_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A08:I

    .line 19786
    goto/16 :goto_0

    .line 19787
    :pswitch_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A00:I

    .line 19788
    goto/16 :goto_0

    .line 19789
    :pswitch_5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A01:I

    .line 19790
    goto/16 :goto_0

    .line 19791
    :pswitch_6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0E:Z

    .line 19792
    goto/16 :goto_0

    .line 19793
    :pswitch_7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0D:Z

    .line 19794
    goto/16 :goto_0

    .line 19795
    :pswitch_8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A02:I

    .line 19796
    goto/16 :goto_0

    .line 19797
    :pswitch_9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A05:I

    .line 19798
    goto/16 :goto_0

    .line 19799
    :pswitch_a
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A04:I

    .line 19800
    goto/16 :goto_0

    .line 19801
    :pswitch_b
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0A:I

    .line 19802
    goto/16 :goto_0

    .line 19803
    :pswitch_c
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:I

    .line 19804
    goto/16 :goto_0

    .line 19805
    :pswitch_d
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->fromString(Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0B:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 19806
    goto/16 :goto_0

    .line 19807
    :pswitch_e
    :try_start_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A07:I

    goto/16 :goto_0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 19808
    .local v0, "e":Ljava/lang/NumberFormatException;
    :catch_1
    iput v4, p0, Lcom/facebook/ads/redexgen/X/95;->A07:I

    .line 19809
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 19810
    :sswitch_0
    const/16 v2, 0xa7

    const/16 v1, 0xf

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const/16 v2, 0x97

    const/16 v1, 0x10

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const/16 v2, 0x83

    const/16 v1, 0x14

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_3
    const/16 v2, 0xfc

    const/16 v1, 0x1f

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_4
    const/16 v2, 0xb6

    const/4 v1, 0x7

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_5
    const/16 v2, 0xe1

    const/16 v1, 0x1b

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_6
    const/16 v2, 0x135

    const/16 v1, 0x18

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_7
    const/16 v2, 0x69

    const/16 v1, 0x1a

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_8
    const/16 v2, 0xdd

    const/4 v1, 0x4

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_9
    const/16 v2, 0x2e

    const/16 v1, 0x9

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_a
    const/16 v2, 0x49

    const/16 v1, 0x20

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_b
    const/16 v2, 0xce

    const/16 v1, 0xf

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_c
    const/16 v2, 0x11b

    const/16 v1, 0x1a

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_d
    const/16 v2, 0xbd

    const/16 v1, 0x11

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_e
    const/16 v2, 0x37

    const/16 v1, 0x12

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    .line 19811
    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x71370599 -> :sswitch_e
        -0x5d1423f9 -> :sswitch_d
        -0x3311a54a -> :sswitch_c
        -0x2b4a184f -> :sswitch_b
        -0x25d25571 -> :sswitch_a
        -0x20f94c24 -> :sswitch_9
        0x368f3a -> :sswitch_8
        0x29c58cc1 -> :sswitch_7
        0x332da93b -> :sswitch_6
        0x3ad0882f -> :sswitch_5
        0x40b292db -> :sswitch_4
        0x468b8977 -> :sswitch_3
        0x495c9c2d -> :sswitch_2
        0x599f5fc1 -> :sswitch_1
        0x775623ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public static A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/95;
    .locals 4

    .line 19812
    if-nez p0, :cond_0

    .line 19813
    const/4 v0, 0x0

    return-object v0

    .line 19814
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 19815
    .local p0, "definitionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 19816
    .local v0, "definitionParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19817
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 19818
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 19819
    .local v2, "val":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19820
    .end local v3    # "key":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 19821
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/95;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/95;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/95;->A0G:[B

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

.method public static A02()V
    .locals 1

    const/16 v0, 0x14d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/95;->A0G:[B

    return-void

    :array_0
    .array-data 1
        0x2ft
        0x50t
        0x7bt
        0x79t
        0x75t
        0x7dt
        0x7at
        0x29t
        0x1et
        0x60t
        0x5dt
        0x55t
        0x4ct
        0x57t
        0x40t
        0x56t
        0x18t
        0x1t
        0x4at
        0x5bt
        0x4et
        0x52t
        0x7t
        0x15t
        0x4ct
        0xft
        0x28t
        0x20t
        0x25t
        0x2ct
        0x2dt
        0x69t
        0x3dt
        0x26t
        0x69t
        0x3at
        0x2ct
        0x3dt
        0x69t
        0x2at
        0x26t
        0x26t
        0x22t
        0x20t
        0x2ct
        0x67t
        0x2ft
        0x2dt
        0x2ft
        0x24t
        0x29t
        0x2dt
        0x2et
        0x20t
        0x29t
        0x57t
        0x5bt
        0x5at
        0x42t
        0x6bt
        0x40t
        0x46t
        0x55t
        0x57t
        0x5ft
        0x5dt
        0x5at
        0x53t
        0x6bt
        0x50t
        0x55t
        0x40t
        0x55t
        0x38t
        0x3ft
        0x27t
        0x30t
        0x3dt
        0x38t
        0x35t
        0x30t
        0x25t
        0x38t
        0x3et
        0x3ft
        0xet
        0x35t
        0x24t
        0x23t
        0x30t
        0x25t
        0x38t
        0x3et
        0x3ft
        0xet
        0x38t
        0x3ft
        0xet
        0x22t
        0x34t
        0x32t
        0x3et
        0x3ft
        0x35t
        0x22t
        0xet
        0xat
        0xdt
        0x3ct
        0x15t
        0xat
        0x6t
        0x14t
        0x2t
        0x1t
        0xat
        0xft
        0xat
        0x17t
        0x1at
        0x3ct
        0x13t
        0x6t
        0x11t
        0x0t
        0x6t
        0xdt
        0x17t
        0x2t
        0x4t
        0x6t
        0x54t
        0x55t
        0x48t
        0x52t
        0x4ft
        0x5et
        0x64t
        0x5at
        0x5ft
        0x64t
        0x5et
        0x43t
        0x4bt
        0x5et
        0x49t
        0x52t
        0x5et
        0x55t
        0x58t
        0x5et
        0x4bt
        0x57t
        0x5at
        0x58t
        0x5et
        0x56t
        0x5et
        0x55t
        0x4ft
        0x64t
        0x53t
        0x5et
        0x52t
        0x5ct
        0x53t
        0x4ft
        0x42t
        0x5et
        0x53t
        0x51t
        0x57t
        0x5ft
        0x57t
        0x5ct
        0x46t
        0x6dt
        0x45t
        0x5bt
        0x56t
        0x46t
        0x5at
        0x5et
        0x49t
        0x4at
        0x5et
        0x49t
        0x5ft
        0x44t
        0x4bt
        0x5ct
        0x5ft
        0x4bt
        0x5ct
        0x4at
        0x51t
        0x66t
        0x4dt
        0x51t
        0x4bt
        0x5ct
        0x4at
        0x51t
        0x56t
        0x55t
        0x5dt
        0x68t
        0x7ft
        0x6bt
        0x6ft
        0x7ft
        0x69t
        0x6et
        0x45t
        0x6et
        0x73t
        0x77t
        0x7ft
        0x75t
        0x6ft
        0x6et
        0x25t
        0x28t
        0x21t
        0x34t
        0x59t
        0x46t
        0x4bt
        0x4at
        0x40t
        0x70t
        0x5bt
        0x46t
        0x42t
        0x4at
        0x70t
        0x5ft
        0x40t
        0x43t
        0x43t
        0x46t
        0x41t
        0x48t
        0x70t
        0x46t
        0x41t
        0x5bt
        0x4at
        0x5dt
        0x59t
        0x4et
        0x43t
        0x40t
        0x5ft
        0x53t
        0x41t
        0x57t
        0x54t
        0x5ft
        0x5at
        0x5ft
        0x42t
        0x4ft
        0x69t
        0x55t
        0x5et
        0x53t
        0x55t
        0x5dt
        0x69t
        0x5ft
        0x58t
        0x5ft
        0x42t
        0x5ft
        0x57t
        0x5at
        0x69t
        0x52t
        0x53t
        0x5at
        0x57t
        0x4ft
        0x42t
        0x5dt
        0x51t
        0x43t
        0x55t
        0x56t
        0x5dt
        0x58t
        0x5dt
        0x40t
        0x4dt
        0x6bt
        0x57t
        0x5ct
        0x51t
        0x57t
        0x5ft
        0x6bt
        0x5dt
        0x5at
        0x40t
        0x51t
        0x46t
        0x42t
        0x55t
        0x58t
        0x75t
        0x6at
        0x66t
        0x74t
        0x62t
        0x61t
        0x6at
        0x6ft
        0x6at
        0x77t
        0x7at
        0x5ct
        0x60t
        0x6bt
        0x66t
        0x60t
        0x68t
        0x5ct
        0x77t
        0x6at
        0x60t
        0x68t
        0x66t
        0x71t
    .end array-data
.end method


# virtual methods
.method public final A03()I
    .locals 1

    .line 19822
    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A02:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public final A04()I
    .locals 1

    .line 19823
    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:I

    return v0
.end method

.method public final A05()I
    .locals 1

    .line 19824
    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A06:I

    return v0
.end method

.method public final A06()I
    .locals 1

    .line 19825
    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A07:I

    return v0
.end method

.method public final A07()I
    .locals 1

    .line 19826
    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A08:I

    return v0
.end method

.method public final A08()I
    .locals 1

    .line 19827
    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A09:I

    return v0
.end method

.method public final A09()I
    .locals 1

    .line 19828
    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0A:I

    return v0
.end method

.method public final A0A()J
    .locals 2

    .line 19829
    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A04:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method public final A0B()J
    .locals 2

    .line 19830
    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A05:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method public final A0C()J
    .locals 2

    .line 19831
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0F:J

    return-wide v0
.end method

.method public final A0D()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 19832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0B:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final A0E()Z
    .locals 1

    .line 19833
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0D:Z

    return v0
.end method

.method public final A0F()Z
    .locals 1

    .line 19834
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0E:Z

    return v0
.end method
