.class public final Lcom/facebook/ads/redexgen/X/BB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/BF;->A03(Lcom/facebook/ads/internal/exoplayer2/Format;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/BF;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/BF;Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 0

    .line 23464
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BB;->A01:Lcom/facebook/ads/redexgen/X/BF;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/BB;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

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

    .line 23465
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BB;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/BB;->A01:Lcom/facebook/ads/redexgen/X/BF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BF;->A00(Lcom/facebook/ads/redexgen/X/BF;)Lcom/facebook/ads/redexgen/X/BG;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/BB;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BG;->A9v(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 23466
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/BB;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
