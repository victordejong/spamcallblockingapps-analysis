.class public final Lcom/facebook/ads/redexgen/X/DO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodeBook"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:Z

.field public final A04:[J


# direct methods
.method public constructor <init>(II[JIZ)V
    .locals 0

    .line 27398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27399
    iput p1, p0, Lcom/facebook/ads/redexgen/X/DO;->A00:I

    .line 27400
    iput p2, p0, Lcom/facebook/ads/redexgen/X/DO;->A01:I

    .line 27401
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/DO;->A04:[J

    .line 27402
    iput p4, p0, Lcom/facebook/ads/redexgen/X/DO;->A02:I

    .line 27403
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/DO;->A03:Z

    .line 27404
    return-void
.end method
