.class public final Lcom/facebook/ads/redexgen/X/IZ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/IY;
    }
.end annotation


# instance fields
.field public A00:I

.field public final A01:Ljava/lang/Object;

.field public final A02:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IZ;->A01:Ljava/lang/Object;

    .line 39157
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    const/16 v1, 0xa

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IZ;->A02:Ljava/util/PriorityQueue;

    .line 39158
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IZ;->A00:I

    .line 39159
    return-void
.end method


# virtual methods
.method public final A00(I)V
    .locals 3

    .line 39160
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IZ;->A01:Ljava/lang/Object;

    monitor-enter v2

    .line 39161
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IZ;->A02:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 39162
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IZ;->A00:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IZ;->A00:I

    .line 39163
    monitor-exit v2

    .line 39164
    return-void

    .line 39165
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final A01(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 39166
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IZ;->A01:Ljava/lang/Object;

    monitor-enter v1

    .line 39167
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IZ;->A00:I

    if-eq v0, p1, :cond_0

    .line 39168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IZ;->A01:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 39169
    :cond_0
    monitor-exit v1

    .line 39170
    return-void

    .line 39171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final A02(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/IY;
        }
    .end annotation

    .line 39172
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IZ;->A01:Ljava/lang/Object;

    monitor-enter v2

    .line 39173
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IZ;->A00:I

    if-ne v0, p1, :cond_0

    .line 39174
    monitor-exit v2

    .line 39175
    return-void

    .line 39176
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IZ;->A00:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/IY;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/IY;-><init>(II)V

    .end local v1
    throw v0

    .line 39177
    .restart local v1
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final A03(I)V
    .locals 3

    .line 39178
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IZ;->A01:Ljava/lang/Object;

    monitor-enter v2

    .line 39179
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IZ;->A02:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 39180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IZ;->A02:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IZ;->A02:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/IZ;->A00:I

    .line 39181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IZ;->A01:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 39182
    monitor-exit v2

    .line 39183
    return-void

    .line 39184
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
