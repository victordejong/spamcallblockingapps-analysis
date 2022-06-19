.class public abstract Lcom/facebook/ads/redexgen/X/cW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/7B;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RVCacheListener"
.end annotation


# instance fields
.field public final A00:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 71951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71952
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/cW;->A00:Z

    .line 71953
    return-void
.end method


# virtual methods
.method public abstract A00()V
.end method

.method public abstract A01(Z)V
.end method

.method public final AA5()V
    .locals 1

    .line 71954
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cW;->A00:Z

    if-eqz v0, :cond_0

    .line 71955
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cW;->A00()V

    .line 71956
    :goto_0
    return-void

    .line 71957
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/cW;->A01(Z)V

    goto :goto_0
.end method

.method public final AAC()V
    .locals 1

    .line 71958
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/cW;->A01(Z)V

    .line 71959
    return-void
.end method
