.class public final Lcom/facebook/ads/redexgen/X/2G;
.super Lcom/facebook/ads/redexgen/X/B3;
.source ""


# instance fields
.field public final A00:I

.field public final A01:I

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

.field public final A03:Ljava/lang/String;

.field public final A04:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Hm;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Hm<",
            "-",
            "Lcom/facebook/ads/redexgen/X/HR;",
            ">;)V"
        }
    .end annotation

    .line 5022
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Hm;, "Lcom/facebook/ads/internal/exoplayer2/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/upstream/DataSource;>;"
    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/2G;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Hm;IIZ)V

    .line 5023
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Hm;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Hm<",
            "-",
            "Lcom/facebook/ads/redexgen/X/HR;",
            ">;IIZ)V"
        }
    .end annotation

    .line 5024
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Hm;, "Lcom/facebook/ads/internal/exoplayer2/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/upstream/DataSource;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/B3;-><init>()V

    .line 5025
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2G;->A03:Ljava/lang/String;

    .line 5026
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2G;->A02:Lcom/facebook/ads/redexgen/X/Hm;

    .line 5027
    iput p3, p0, Lcom/facebook/ads/redexgen/X/2G;->A00:I

    .line 5028
    iput p4, p0, Lcom/facebook/ads/redexgen/X/2G;->A01:I

    .line 5029
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/2G;->A04:Z

    .line 5030
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Hb;)Lcom/facebook/ads/redexgen/X/B4;
    .locals 8

    .line 5031
    new-instance v0, Lcom/facebook/ads/redexgen/X/B4;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2G;->A03:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2G;->A02:Lcom/facebook/ads/redexgen/X/Hm;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/2G;->A00:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/2G;->A01:I

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/2G;->A04:Z

    const/4 v2, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/B4;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/IX;Lcom/facebook/ads/redexgen/X/Hm;IIZLcom/facebook/ads/redexgen/X/Hb;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A01(Lcom/facebook/ads/redexgen/X/Hb;)Lcom/facebook/ads/redexgen/X/UU;
    .locals 1

    .line 5032
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2G;->A00(Lcom/facebook/ads/redexgen/X/Hb;)Lcom/facebook/ads/redexgen/X/B4;

    move-result-object v0

    return-object v0
.end method
