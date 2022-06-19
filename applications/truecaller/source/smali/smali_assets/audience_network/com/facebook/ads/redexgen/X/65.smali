.class public final Lcom/facebook/ads/redexgen/X/65;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntervalRunnable"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/6l;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/ad;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ad;Lcom/facebook/ads/redexgen/X/6l;)V
    .locals 0

    .line 14756
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/65;->A01:Lcom/facebook/ads/redexgen/X/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14757
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/65;->A00:Lcom/facebook/ads/redexgen/X/6l;

    .line 14758
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v5, p0

    .line 14759
    .local p0, "this":Lcom/facebook/ads/redexgen/X/65;
    :try_start_0
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/65;->A01:Lcom/facebook/ads/redexgen/X/ad;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ad;->A01(Lcom/facebook/ads/redexgen/X/ad;)Lcom/facebook/ads/redexgen/X/6W;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/6n;->A03:Lcom/facebook/ads/redexgen/X/6n;

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/65;->A00:Lcom/facebook/ads/redexgen/X/6l;

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6W;->A04(Lcom/facebook/ads/redexgen/X/6n;Lcom/facebook/ads/redexgen/X/6l;Ljava/lang/String;)V

    .line 14760
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/65;->A01:Lcom/facebook/ads/redexgen/X/ad;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ad;->A02(Lcom/facebook/ads/redexgen/X/ad;)Lcom/facebook/ads/redexgen/X/79;

    move-result-object v4

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/65;->A01:Lcom/facebook/ads/redexgen/X/ad;

    .line 14761
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ad;->A03(Lcom/facebook/ads/redexgen/X/ad;)Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v3

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/65;->A01:Lcom/facebook/ads/redexgen/X/ad;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ad;->A00(Lcom/facebook/ads/redexgen/X/ad;)Lcom/facebook/ads/redexgen/X/61;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/61;->A0T()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 14762
    invoke-virtual {v4, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/79;->A02(Lcom/facebook/ads/redexgen/X/7A;J)Z

    .line 14763
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/65;
    :catchall_0
    move-exception v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
