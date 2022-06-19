.class public final Lcom/facebook/ads/redexgen/X/EG;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/VH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Id3Header"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Z


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 29990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29991
    iput p1, p0, Lcom/facebook/ads/redexgen/X/EG;->A01:I

    .line 29992
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/EG;->A02:Z

    .line 29993
    iput p3, p0, Lcom/facebook/ads/redexgen/X/EG;->A00:I

    .line 29994
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/EG;)I
    .locals 0

    .line 29995
    iget p0, p0, Lcom/facebook/ads/redexgen/X/EG;->A01:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/EG;)I
    .locals 0

    .line 29996
    iget p0, p0, Lcom/facebook/ads/redexgen/X/EG;->A00:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/EG;)Z
    .locals 0

    .line 29997
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/EG;->A02:Z

    return p0
.end method
