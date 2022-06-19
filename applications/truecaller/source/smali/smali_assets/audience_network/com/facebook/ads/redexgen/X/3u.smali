.class public final Lcom/facebook/ads/redexgen/X/3u;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoveInfo"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/4e;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4e;IIII)V
    .locals 0

    .line 10348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10349
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3u;->A04:Lcom/facebook/ads/redexgen/X/4e;

    .line 10350
    iput p2, p0, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    .line 10351
    iput p3, p0, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    .line 10352
    iput p4, p0, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 10353
    iput p5, p0, Lcom/facebook/ads/redexgen/X/3u;->A03:I

    .line 10354
    return-void
.end method
