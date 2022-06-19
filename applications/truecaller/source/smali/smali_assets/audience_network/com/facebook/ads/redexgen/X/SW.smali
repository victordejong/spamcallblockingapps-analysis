.class public final Lcom/facebook/ads/redexgen/X/SW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Nt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9v;
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
            "Lcom/facebook/ads/redexgen/X/9v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9v;)V
    .locals 1

    .line 52164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52165
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A00:Ljava/lang/ref/WeakReference;

    .line 52166
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/9v;Lcom/facebook/ads/redexgen/X/A0;)V
    .locals 0

    .line 52167
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/SW;-><init>(Lcom/facebook/ads/redexgen/X/9v;)V

    return-void
.end method


# virtual methods
.method public final AAi(Z)V
    .locals 1

    .line 52168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9v;

    .line 52169
    .local p0, "cardLayout":Lcom/facebook/ads/redexgen/X/9v;
    if-eqz v0, :cond_0

    .line 52170
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/9v;->A09(Lcom/facebook/ads/redexgen/X/9v;Z)Z

    .line 52171
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9v;->A07(Lcom/facebook/ads/redexgen/X/9v;)V

    .line 52172
    :cond_0
    return-void
.end method
