.class public final Lcom/facebook/ads/redexgen/X/IP;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/IR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PpsData"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 38525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38526
    iput p1, p0, Lcom/facebook/ads/redexgen/X/IP;->A00:I

    .line 38527
    iput p2, p0, Lcom/facebook/ads/redexgen/X/IP;->A01:I

    .line 38528
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/IP;->A02:Z

    .line 38529
    return-void
.end method
