.class public final Lcom/facebook/ads/redexgen/X/Bw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Bv;
    }
.end annotation


# instance fields
.field public final A00:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/ads/redexgen/X/Bv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24810
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24811
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 4

    .line 24812
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bv;

    .line 24813
    .local v0, "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bv;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bv;->A01:Lcom/facebook/ads/redexgen/X/Bx;

    .line 24814
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Bx;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bv;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Br;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/Br;-><init>(Lcom/facebook/ads/redexgen/X/Bw;Lcom/facebook/ads/redexgen/X/Bx;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24815
    .end local v0    # "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bv;
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Bx;
    goto :goto_0

    .line 24816
    :cond_0
    return-void
.end method

.method public final A01()V
    .locals 4

    .line 24817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bv;

    .line 24818
    .local v0, "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bv;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bv;->A01:Lcom/facebook/ads/redexgen/X/Bx;

    .line 24819
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Bx;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bv;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bu;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/Bu;-><init>(Lcom/facebook/ads/redexgen/X/Bw;Lcom/facebook/ads/redexgen/X/Bx;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24820
    .end local v0    # "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bv;
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Bx;
    goto :goto_0

    .line 24821
    :cond_0
    return-void
.end method

.method public final A02()V
    .locals 4

    .line 24822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bv;

    .line 24823
    .local v0, "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bv;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bv;->A01:Lcom/facebook/ads/redexgen/X/Bx;

    .line 24824
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Bx;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bv;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bt;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/Bt;-><init>(Lcom/facebook/ads/redexgen/X/Bw;Lcom/facebook/ads/redexgen/X/Bx;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24825
    .end local v0    # "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bv;
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Bx;
    goto :goto_0

    .line 24826
    :cond_0
    return-void
.end method

.method public final A03(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Bx;)V
    .locals 2

    .line 24827
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A03(Z)V

    .line 24828
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bw;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bv;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Bv;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Bx;)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 24829
    return-void

    .line 24830
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A04(Ljava/lang/Exception;)V
    .locals 4

    .line 24831
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bv;

    .line 24832
    .local p1, "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bv;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bv;->A01:Lcom/facebook/ads/redexgen/X/Bx;

    .line 24833
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Bx;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bv;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bs;

    invoke-direct {v0, p0, v2, p1}, Lcom/facebook/ads/redexgen/X/Bs;-><init>(Lcom/facebook/ads/redexgen/X/Bw;Lcom/facebook/ads/redexgen/X/Bx;Ljava/lang/Exception;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24834
    .end local p1    # "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bv;
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Bx;
    goto :goto_0

    .line 24835
    :cond_0
    return-void
.end method
