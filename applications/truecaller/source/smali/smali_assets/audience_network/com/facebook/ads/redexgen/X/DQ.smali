.class public final Lcom/facebook/ads/redexgen/X/DQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:Z


# direct methods
.method public constructor <init>(ZIII)V
    .locals 0

    .line 27410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27411
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A03:Z

    .line 27412
    iput p2, p0, Lcom/facebook/ads/redexgen/X/DQ;->A02:I

    .line 27413
    iput p3, p0, Lcom/facebook/ads/redexgen/X/DQ;->A01:I

    .line 27414
    iput p4, p0, Lcom/facebook/ads/redexgen/X/DQ;->A00:I

    .line 27415
    return-void
.end method
