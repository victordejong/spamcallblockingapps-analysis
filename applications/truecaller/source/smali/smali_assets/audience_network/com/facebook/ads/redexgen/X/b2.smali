.class public final Lcom/facebook/ads/redexgen/X/b2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/7B;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdCacheListenerImpl"
.end annotation


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cy;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/b1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/b1;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cy;",
            ">;)V"
        }
    .end annotation

    .line 68467
    .local p2, "nativeAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b2;->A01:Lcom/facebook/ads/redexgen/X/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68468
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/b2;->A00:Ljava/util/List;

    .line 68469
    return-void
.end method

.method private A00()V
    .locals 10

    .line 68470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A01:Lcom/facebook/ads/redexgen/X/b1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b1;->A00(Lcom/facebook/ads/redexgen/X/b1;)Lcom/facebook/ads/redexgen/X/5J;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A07(Z)V

    .line 68471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A01:Lcom/facebook/ads/redexgen/X/b1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b1;->A00(Lcom/facebook/ads/redexgen/X/b1;)Lcom/facebook/ads/redexgen/X/5J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5J;->A04()V

    .line 68472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A01:Lcom/facebook/ads/redexgen/X/b1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b1;->A00(Lcom/facebook/ads/redexgen/X/b1;)Lcom/facebook/ads/redexgen/X/5J;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(I)V

    .line 68473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/cy;

    .line 68474
    .local v0, "nativeAdapter":Lcom/facebook/ads/redexgen/X/cy;
    new-instance v4, Lcom/facebook/ads/redexgen/X/Tj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A01:Lcom/facebook/ads/redexgen/X/b1;

    .line 68475
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b1;->A01(Lcom/facebook/ads/redexgen/X/b1;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v5

    const/4 v7, 0x0

    .line 68476
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tj;->A0I()Lcom/facebook/ads/redexgen/X/Jq;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A01:Lcom/facebook/ads/redexgen/X/b1;

    .line 68477
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b1;->A00(Lcom/facebook/ads/redexgen/X/b1;)Lcom/facebook/ads/redexgen/X/5J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5J;->A03()Lcom/facebook/ads/redexgen/X/cM;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Tj;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/cy;Lcom/facebook/ads/redexgen/X/95;Lcom/facebook/ads/redexgen/X/Jq;Lcom/facebook/ads/redexgen/X/cM;)V

    .line 68478
    .local v1, "nativeAdBaseApi":Lcom/facebook/ads/internal/api/NativeAdBaseApi;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A01:Lcom/facebook/ads/redexgen/X/b1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b1;->A00(Lcom/facebook/ads/redexgen/X/b1;)Lcom/facebook/ads/redexgen/X/5J;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A01:Lcom/facebook/ads/redexgen/X/b1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b1;->A01(Lcom/facebook/ads/redexgen/X/b1;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/5J;->A06(Lcom/facebook/ads/NativeAd;)V

    .line 68479
    .end local v0    # "nativeAdapter":Lcom/facebook/ads/redexgen/X/cy;
    .end local v1    # "nativeAdBaseApi":Lcom/facebook/ads/internal/api/NativeAdBaseApi;
    goto :goto_0

    .line 68480
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/b3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/b3;-><init>(Lcom/facebook/ads/redexgen/X/b2;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Km;->A00(Lcom/facebook/ads/redexgen/X/Ki;)V

    .line 68481
    return-void
.end method


# virtual methods
.method public final AA5()V
    .locals 0

    .line 68482
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b2;->A00()V

    .line 68483
    return-void
.end method

.method public final AAC()V
    .locals 0

    .line 68484
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b2;->A00()V

    .line 68485
    return-void
.end method
