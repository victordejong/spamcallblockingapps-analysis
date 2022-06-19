.class public final Lcom/facebook/ads/redexgen/X/Ud;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HQ;


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Lcom/facebook/ads/redexgen/X/HQ;

.field public final A02:Lcom/facebook/ads/redexgen/X/Hm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Hm<",
            "-",
            "Lcom/facebook/ads/redexgen/X/HR;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Hm;Lcom/facebook/ads/redexgen/X/HQ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Hm<",
            "-",
            "Lcom/facebook/ads/redexgen/X/HR;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/HQ;",
            ")V"
        }
    .end annotation

    .line 56925
    .local p3, "listener":Lcom/facebook/ads/redexgen/X/Hm;, "Lcom/facebook/ads/internal/exoplayer2/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/upstream/DataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56926
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ud;->A00:Landroid/content/Context;

    .line 56927
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ud;->A02:Lcom/facebook/ads/redexgen/X/Hm;

    .line 56928
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ud;->A01:Lcom/facebook/ads/redexgen/X/HQ;

    .line 56929
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Hm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Hm<",
            "-",
            "Lcom/facebook/ads/redexgen/X/HR;",
            ">;)V"
        }
    .end annotation

    .line 56930
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Hm;, "Lcom/facebook/ads/internal/exoplayer2/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/upstream/DataSource;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/2G;

    invoke-direct {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/2G;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Hm;)V

    invoke-direct {p0, p1, p3, v0}, Lcom/facebook/ads/redexgen/X/Ud;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Hm;Lcom/facebook/ads/redexgen/X/HQ;)V

    .line 56931
    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/Ue;
    .locals 4

    .line 56932
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ud;->A00:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ud;->A02:Lcom/facebook/ads/redexgen/X/Hm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ud;->A01:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HQ;->A4C()Lcom/facebook/ads/redexgen/X/HR;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ue;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ue;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Hm;Lcom/facebook/ads/redexgen/X/HR;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A4C()Lcom/facebook/ads/redexgen/X/HR;
    .locals 1

    .line 56933
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ud;->A00()Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v0

    return-object v0
.end method
