.class public final Lcom/facebook/ads/redexgen/X/5s;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public final A00:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 14357
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 14358
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/5s;->A00:J

    .line 14359
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5s;->start()V

    .line 14360
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

    .line 14361
    :goto_0
    :try_start_0
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/5s;->A00:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14362
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5q;->A01()V

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
