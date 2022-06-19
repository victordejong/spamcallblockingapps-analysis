.class public final Lcom/facebook/ads/redexgen/X/48;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Eq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 0

    .line 10762
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/48;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 10763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/48;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A05:Lcom/facebook/ads/redexgen/X/4I;

    if-eqz v0, :cond_0

    .line 10764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/48;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4I;->A0J()V

    .line 10765
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/48;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Eq;->A0K:Z

    .line 10766
    return-void
.end method
