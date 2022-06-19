.class public final Lcom/facebook/ads/redexgen/X/GF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/R8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/GE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4A(Lcom/facebook/ads/redexgen/X/R9;)Lcom/facebook/ads/redexgen/X/RA;
    .locals 2

    .line 34041
    new-instance v1, Lcom/facebook/ads/redexgen/X/Gn;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Gn;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/GE;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/GE;-><init>(Lcom/facebook/ads/redexgen/X/R9;Lcom/facebook/ads/redexgen/X/RF;)V

    return-object v0
.end method
