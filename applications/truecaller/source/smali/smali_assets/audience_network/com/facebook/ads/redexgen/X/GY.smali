.class public final Lcom/facebook/ads/redexgen/X/GY;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectData"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Z

.field public final A02:[B

.field public final A03:[B


# direct methods
.method public constructor <init>(IZ[B[B)V
    .locals 0

    .line 34544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34545
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GY;->A00:I

    .line 34546
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/GY;->A01:Z

    .line 34547
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/GY;->A03:[B

    .line 34548
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/GY;->A02:[B

    .line 34549
    return-void
.end method
