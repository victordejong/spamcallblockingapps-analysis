.class public final Lcom/facebook/ads/redexgen/X/Sf;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Sd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewabilityCheckerPostRunnable"
.end annotation


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/QZ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QZ;)V
    .locals 1

    .line 52443
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    .line 52444
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sf;->A00:Ljava/lang/ref/WeakReference;

    .line 52445
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/QZ;",
            ">;)V"
        }
    .end annotation

    .line 52446
    .local p1, "viewabilityChecker":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/viewability/AdViewabilityChecker;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    .line 52447
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sf;->A00:Ljava/lang/ref/WeakReference;

    .line 52448
    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 1

    .line 52449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sf;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/QZ;

    .line 52450
    .local p0, "viewabilityChecker":Lcom/facebook/ads/redexgen/X/QZ;
    if-eqz v0, :cond_0

    .line 52451
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0U()V

    .line 52452
    :cond_0
    return-void
.end method
