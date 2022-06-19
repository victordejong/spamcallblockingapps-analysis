.class public final Lcom/facebook/ads/redexgen/X/UZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HQ;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Hm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Hm<",
            "-",
            "Lcom/facebook/ads/redexgen/X/Ua;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56859
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/UZ;-><init>(Lcom/facebook/ads/redexgen/X/Hm;)V

    .line 56860
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hm<",
            "-",
            "Lcom/facebook/ads/redexgen/X/Ua;",
            ">;)V"
        }
    .end annotation

    .line 56861
    .local p1, "listener":Lcom/facebook/ads/redexgen/X/Hm;, "Lcom/facebook/ads/internal/exoplayer2/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/upstream/FileDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56862
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UZ;->A00:Lcom/facebook/ads/redexgen/X/Hm;

    .line 56863
    return-void
.end method


# virtual methods
.method public final A4C()Lcom/facebook/ads/redexgen/X/HR;
    .locals 2

    .line 56864
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UZ;->A00:Lcom/facebook/ads/redexgen/X/Hm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Lcom/facebook/ads/redexgen/X/Hm;)V

    return-object v0
.end method
