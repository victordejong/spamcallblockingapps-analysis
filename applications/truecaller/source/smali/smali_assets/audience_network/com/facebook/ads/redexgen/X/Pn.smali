.class public final Lcom/facebook/ads/redexgen/X/Pn;
.super Lcom/facebook/ads/redexgen/X/9P;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/9P<",
        "Lcom/facebook/ads/redexgen/X/KQ;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7x;)V
    .locals 0

    .line 49016
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pn;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9P;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KQ;)V
    .locals 3

    .line 49017
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Pn;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ms;->A0U()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pn;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0U()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0e(II)V

    .line 49018
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/KQ;",
            ">;"
        }
    .end annotation

    .line 49019
    const-class v0, Lcom/facebook/ads/redexgen/X/KQ;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 49020
    check-cast p1, Lcom/facebook/ads/redexgen/X/KQ;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Pn;->A00(Lcom/facebook/ads/redexgen/X/KQ;)V

    return-void
.end method
