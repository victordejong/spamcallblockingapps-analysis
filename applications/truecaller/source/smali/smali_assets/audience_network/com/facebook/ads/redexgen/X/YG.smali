.class public final Lcom/facebook/ads/redexgen/X/YG;
.super Lcom/facebook/ads/redexgen/X/6b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/YH;,
        Lcom/facebook/ads/redexgen/X/6g;
    }
.end annotation


# instance fields
.field public final A00:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V
    .locals 0

    .line 66737
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6b;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V

    .line 66738
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YG;->A00:Landroid/content/Context;

    .line 66739
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/YG;)Landroid/content/Context;
    .locals 0

    .line 66740
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YG;->A00:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/YG;Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6z;
    .locals 0

    .line 66741
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YG;->A03(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object p0

    return-object p0
.end method

.method private A03(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6z;
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
            "Lcom/facebook/ads/redexgen/X/YH;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/6z;"
        }
    .end annotation

    .line 66742
    .local v4, "streamFileInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/internal/botdetection/signals/library/nativesignals/SettingsManagerSignalCollector$SystemSetting;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xc;

    .line 66743
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 66744
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6b;->A02()Lcom/facebook/ads/redexgen/X/6x;

    move-result-object v3

    sget-object v5, Lcom/facebook/ads/redexgen/X/6y;->A0C:Lcom/facebook/ads/redexgen/X/6y;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Xc;-><init>(JLcom/facebook/ads/redexgen/X/6x;Ljava/util/HashMap;Lcom/facebook/ads/redexgen/X/6y;)V

    .line 66745
    return-object v0
.end method


# virtual methods
.method public final A0G(Ljava/util/List;Lcom/facebook/ads/redexgen/X/6g;)Lcom/facebook/ads/redexgen/X/6k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/6j;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/6g;",
            ")",
            "Lcom/facebook/ads/redexgen/X/6k;"
        }
    .end annotation

    .line 66746
    .local p2, "bundledSignalMetadataList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/model/BundledSignalMetadata;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/YI;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/YI;-><init>(Lcom/facebook/ads/redexgen/X/YG;Ljava/util/List;Lcom/facebook/ads/redexgen/X/6g;)V

    .line 66747
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method
