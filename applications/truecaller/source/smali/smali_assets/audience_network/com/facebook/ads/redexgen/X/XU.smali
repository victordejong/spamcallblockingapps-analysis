.class public final Lcom/facebook/ads/redexgen/X/XU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/QM;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7E;->A03(Lcom/facebook/ads/redexgen/X/7I;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7E;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7E;)V
    .locals 0

    .line 66218
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/7E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAM()V
    .locals 2

    .line 66219
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/7E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A01(Lcom/facebook/ads/redexgen/X/7E;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66220
    :catch_0
    return-void
.end method

.method public final AAV()V
    .locals 2

    .line 66221
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/7E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A01(Lcom/facebook/ads/redexgen/X/7E;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66222
    :catch_0
    return-void
.end method
