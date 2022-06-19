.class public abstract Lcom/facebook/ads/redexgen/X/Cd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/WG;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Cb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cb;)V
    .locals 0

    .line 25072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25073
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cd;->A00:Lcom/facebook/ads/redexgen/X/Cb;

    .line 25074
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/IV;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 25075
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Cd;->A0C(Lcom/facebook/ads/redexgen/X/IV;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25076
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Cd;->A0B(Lcom/facebook/ads/redexgen/X/IV;J)V

    .line 25077
    :cond_0
    return-void
.end method

.method public abstract A0B(Lcom/facebook/ads/redexgen/X/IV;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation
.end method

.method public abstract A0C(Lcom/facebook/ads/redexgen/X/IV;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation
.end method
