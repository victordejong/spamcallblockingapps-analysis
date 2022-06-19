.class public final Lcom/facebook/ads/redexgen/X/Uu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GL;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GK;",
            ">;)V"
        }
    .end annotation

    .line 57528
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57529
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uu;->A00:Ljava/util/List;

    .line 57530
    return-void
.end method


# virtual methods
.method public final A67(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GK;",
            ">;"
        }
    .end annotation

    .line 57531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A00:Ljava/util/List;

    return-object v0
.end method

.method public final A6X(I)J
    .locals 2

    .line 57532
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final A6Y()I
    .locals 1

    .line 57533
    const/4 v0, 0x1

    return v0
.end method

.method public final A6v(J)I
    .locals 1

    .line 57534
    const/4 v0, -0x1

    return v0
.end method
