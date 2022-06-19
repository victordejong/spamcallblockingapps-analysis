.class public final Lcom/facebook/ads/redexgen/X/Vr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnseekableOggSeeker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/DJ;)V
    .locals 0

    .line 60332
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vr;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4Q()Lcom/facebook/ads/redexgen/X/CY;
    .locals 3

    .line 60333
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/WN;-><init>(J)V

    return-object v0
.end method

.method public final ADE(Lcom/facebook/ads/redexgen/X/CQ;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60334
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final AEp(J)J
    .locals 2

    .line 60335
    const-wide/16 v0, 0x0

    return-wide v0
.end method
