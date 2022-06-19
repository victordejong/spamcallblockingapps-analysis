.class public final Lcom/facebook/ads/redexgen/X/J3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/J8;->A04(Lcom/facebook/ads/internal/exoplayer2/Format;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/J8;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/J8;Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 0

    .line 39882
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/J3;->A01:Lcom/facebook/ads/redexgen/X/J8;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/J3;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 39883
    .local p0, "this":Lcom/facebook/ads/redexgen/X/J3;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/J3;->A01:Lcom/facebook/ads/redexgen/X/J8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J8;->A00(Lcom/facebook/ads/redexgen/X/J8;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/J3;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/J9;->ACU(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 39884
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/J3;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
