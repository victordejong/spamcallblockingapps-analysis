.class public final Lcom/facebook/ads/redexgen/X/RI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/RH;
    }
.end annotation


# instance fields
.field public final A00:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 50637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50638
    iput p1, p0, Lcom/facebook/ads/redexgen/X/RI;->A00:I

    .line 50639
    return-void
.end method

.method public synthetic constructor <init>(ILcom/facebook/ads/redexgen/X/RG;)V
    .locals 0

    .line 50640
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/RI;-><init>(I)V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/RH;
    .locals 2

    .line 50641
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/RH;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/RH;-><init>(Lcom/facebook/ads/redexgen/X/RG;)V

    return-object v0
.end method


# virtual methods
.method public final A01()I
    .locals 1

    .line 50642
    iget v0, p0, Lcom/facebook/ads/redexgen/X/RI;->A00:I

    return v0
.end method
