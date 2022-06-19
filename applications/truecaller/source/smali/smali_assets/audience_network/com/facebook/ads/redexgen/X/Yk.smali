.class public final Lcom/facebook/ads/redexgen/X/Yk;
.super Lcom/facebook/ads/redexgen/X/6b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Yl;,
        Lcom/facebook/ads/internal/botdetection/signals/library/nativesignals/NetworkManagerSignalCollector$AddressType;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V
    .locals 0

    .line 67150
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6b;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V

    .line 67151
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Yk;Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6z;
    .locals 0

    .line 67152
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yk;->A02(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object p0

    return-object p0
.end method

.method private A02(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6z;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Nullable Dereference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Yl;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/6z;"
        }
    .end annotation

    .line 67153
    .local v4, "ipAddressValueObjectHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/internal/botdetection/signals/library/nativesignals/NetworkManagerSignalCollector$IpAddressValueObject;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xc;

    .line 67154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 67155
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6b;->A02()Lcom/facebook/ads/redexgen/X/6x;

    move-result-object v3

    sget-object v5, Lcom/facebook/ads/redexgen/X/6y;->A0C:Lcom/facebook/ads/redexgen/X/6y;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Xc;-><init>(JLcom/facebook/ads/redexgen/X/6x;Ljava/util/HashMap;Lcom/facebook/ads/redexgen/X/6y;)V

    .line 67156
    return-object v0
.end method


# virtual methods
.method public final A0G()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67157
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ym;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ym;-><init>(Lcom/facebook/ads/redexgen/X/Yk;)V

    .line 67158
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method
