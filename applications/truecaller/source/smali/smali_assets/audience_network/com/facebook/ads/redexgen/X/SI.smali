.class public final Lcom/facebook/ads/redexgen/X/SI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Nt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaceholderDownloadListener"
.end annotation


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/9m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9m;)V
    .locals 1

    .line 51462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51463
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A00:Ljava/lang/ref/WeakReference;

    .line 51464
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/9m;Lcom/facebook/ads/redexgen/X/9s;)V
    .locals 0

    .line 51465
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/SI;-><init>(Lcom/facebook/ads/redexgen/X/9m;)V

    return-void
.end method


# virtual methods
.method public final AAi(Z)V
    .locals 1

    .line 51466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9m;

    .line 51467
    .local p0, "cardLayout":Lcom/facebook/ads/redexgen/X/9m;
    if-eqz v0, :cond_0

    .line 51468
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/9m;->A05(Lcom/facebook/ads/redexgen/X/9m;Z)Z

    .line 51469
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9m;->A03(Lcom/facebook/ads/redexgen/X/9m;)V

    .line 51470
    :cond_0
    return-void
.end method
