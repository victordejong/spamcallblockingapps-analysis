.class public final Lcom/facebook/ads/redexgen/X/YC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YA;->A0G(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YA;

.field public final synthetic A01:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Ljava/util/List;)V
    .locals 0

    .line 66719
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YC;->A00:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/YC;->A01:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 4

    .line 66720
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 66721
    .local p0, "systemPropertiesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/internal/botdetection/signals/library/nativesignals/SystemPropertiesSignalCollector$SystemProperty;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YC;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/6j;

    .line 66722
    .local v0, "bundledSignalMetadata":Lcom/facebook/ads/redexgen/X/6j;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/6j;->A02()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66723
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/6j;->A01()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66724
    .local v2, "systemPropertyKey":Ljava/lang/String;
    new-instance v0, Lcom/facebook/ads/redexgen/X/YB;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/YB;-><init>(Ljava/lang/String;)V

    .line 66725
    .local v0, "systemProperty":Lcom/facebook/ads/redexgen/X/YB;
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 66726
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YC;->A00:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/YA;->A01(Lcom/facebook/ads/redexgen/X/YA;Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0
.end method
