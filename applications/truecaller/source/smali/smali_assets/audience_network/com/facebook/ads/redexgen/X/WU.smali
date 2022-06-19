.class public final Lcom/facebook/ads/redexgen/X/WU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/C8;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/ads/redexgen/X/CA;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/C8<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/C6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/C6;)V
    .locals 1

    .line 63146
    .local p1, "this":Lcom/facebook/ads/redexgen/X/WU;, "Lcom/facebook/ads/internal/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63147
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/C6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WU;->A00:Lcom/facebook/ads/redexgen/X/C6;

    .line 63148
    return-void
.end method


# virtual methods
.method public final A6U()Lcom/facebook/ads/redexgen/X/C6;
    .locals 1

    .line 63149
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WU;, "Lcom/facebook/ads/internal/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WU;->A00:Lcom/facebook/ads/redexgen/X/C6;

    return-object v0
.end method

.method public final A6s()Lcom/facebook/ads/redexgen/X/CA;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 63150
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WU;, "Lcom/facebook/ads/internal/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A7Q()I
    .locals 1

    .line 63151
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WU;, "Lcom/facebook/ads/internal/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final AD9()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63152
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WU;, "Lcom/facebook/ads/internal/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method
