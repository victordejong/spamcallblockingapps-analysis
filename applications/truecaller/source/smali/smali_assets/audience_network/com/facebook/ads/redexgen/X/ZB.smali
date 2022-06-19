.class public final Lcom/facebook/ads/redexgen/X/ZB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Z9;->A0G(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Z9;

.field public final synthetic A01:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "IDUzbTXfLYpZDU4pK2kXQil8tMhG7RY8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Z5d5k39m9crHDopO6AEw9f8SoKMTT7ix"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "IveabQPx2elzsPaafQdxf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DTCFkmk3oZJb2r35tHvEOgJ8FwtFSJKN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "oJAEAa909Y4vXdHyK3IPvCd4oyzp37cQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "4smqyHOTFll606jIQbjCa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GdFqyjY9JjKZ3ZH3Nsuny0jnLefl3EYG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "u7DTPzY4ZnL64vf2BaZ33uVh1ryYgEua"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZB;->A02:[Ljava/lang/String;

    .line 67427
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Z9;Ljava/util/List;)V
    .locals 0

    .line 67428
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZB;->A00:Lcom/facebook/ads/redexgen/X/Z9;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ZB;->A01:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 6

    .line 67429
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 67430
    .local p0, "deviceFeaturesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/internal/botdetection/signals/library/nativesignals/DeviceFeaturesSignalCollector$DeviceFeature;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZB;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZB;->A02:[Ljava/lang/String;

    const-string v1, "Um1XGSBPp3z3NkeiC1bP7QkPe7DiDluX"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "6eK8uyM5uh6d0JMEhPLz83VmKAM97iIF"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/6j;

    .line 67431
    .local v0, "bundledSignalMetadata":Lcom/facebook/ads/redexgen/X/6j;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/6j;->A02()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67432
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/6j;->A01()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67433
    .local v5, "deviceFeatureKey":Ljava/lang/String;
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ZA;-><init>(Ljava/lang/String;)V

    .line 67434
    .local v4, "deviceFeatures":Lcom/facebook/ads/redexgen/X/ZA;
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67435
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A00:Lcom/facebook/ads/redexgen/X/Z9;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Z9;->A02(Lcom/facebook/ads/redexgen/X/Z9;Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
