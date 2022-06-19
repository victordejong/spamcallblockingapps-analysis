.class public final Lcom/facebook/ads/redexgen/X/9Y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9X;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/9X;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9X;III)V
    .locals 0

    .line 20328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20329
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9Y;->A03:Lcom/facebook/ads/redexgen/X/9X;

    .line 20330
    iput p2, p0, Lcom/facebook/ads/redexgen/X/9Y;->A01:I

    .line 20331
    iput p3, p0, Lcom/facebook/ads/redexgen/X/9Y;->A00:I

    .line 20332
    iput p4, p0, Lcom/facebook/ads/redexgen/X/9Y;->A02:I

    .line 20333
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 20334
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 20335
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 20336
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A02:I

    return v0
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/9X;
    .locals 1

    .line 20337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A03:Lcom/facebook/ads/redexgen/X/9X;

    return-object v0
.end method
