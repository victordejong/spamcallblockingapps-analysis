.class public final Lcom/facebook/ads/redexgen/X/bU;
.super Lcom/facebook/ads/redexgen/X/4C;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Eq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 0

    .line 69281
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bU;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4C;-><init>()V

    .line 69282
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 69283
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bU;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1p(Ljava/lang/String;)V

    .line 69284
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bU;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4b;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/4b;->A0D:Z

    .line 69285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bU;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1Q()V

    .line 69286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bU;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A00:Lcom/facebook/ads/redexgen/X/bg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bg;->A0J()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bU;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->requestLayout()V

    .line 69288
    :cond_0
    return-void
.end method
