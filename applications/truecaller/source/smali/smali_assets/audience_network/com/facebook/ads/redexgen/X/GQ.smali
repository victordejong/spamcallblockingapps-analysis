.class public final Lcom/facebook/ads/redexgen/X/GQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/GR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CueStyle"
.end annotation


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:Z


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 34154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34155
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GQ;->A01:I

    .line 34156
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/GQ;->A02:Z

    .line 34157
    iput p3, p0, Lcom/facebook/ads/redexgen/X/GQ;->A00:I

    .line 34158
    return-void
.end method
