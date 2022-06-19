.class public final Lcom/facebook/ads/redexgen/X/US;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HR;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/HR;

.field public final A02:Lcom/facebook/ads/redexgen/X/IZ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HR;Lcom/facebook/ads/redexgen/X/IZ;I)V
    .locals 1

    .line 56797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56798
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HR;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/US;->A01:Lcom/facebook/ads/redexgen/X/HR;

    .line 56799
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IZ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/US;->A02:Lcom/facebook/ads/redexgen/X/IZ;

    .line 56800
    iput p3, p0, Lcom/facebook/ads/redexgen/X/US;->A00:I

    .line 56801
    return-void
.end method


# virtual methods
.method public final A7d()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 56802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/US;->A01:Lcom/facebook/ads/redexgen/X/HR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HR;->A7d()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final ACf(Lcom/facebook/ads/redexgen/X/HV;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56803
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/US;->A02:Lcom/facebook/ads/redexgen/X/IZ;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/US;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IZ;->A02(I)V

    .line 56804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/US;->A01:Lcom/facebook/ads/redexgen/X/HR;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/HR;->ACf(Lcom/facebook/ads/redexgen/X/HV;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/US;->A01:Lcom/facebook/ads/redexgen/X/HR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HR;->close()V

    .line 56806
    return-void
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56807
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/US;->A02:Lcom/facebook/ads/redexgen/X/IZ;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/US;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IZ;->A02(I)V

    .line 56808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/US;->A01:Lcom/facebook/ads/redexgen/X/HR;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/HR;->read([BII)I

    move-result v0

    return v0
.end method
