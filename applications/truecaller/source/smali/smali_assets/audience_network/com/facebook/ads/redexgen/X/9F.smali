.class public final Lcom/facebook/ads/redexgen/X/9F;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterFilters"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/9E;
    .locals 1

    .line 20021
    new-instance v0, Lcom/facebook/ads/redexgen/X/X2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/X2;-><init>()V

    return-object v0
.end method

.method public static varargs A01([Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/9E;
    .locals 1

    .line 20022
    new-instance v0, Lcom/facebook/ads/redexgen/X/X1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/X1;-><init>([Ljava/lang/String;)V

    return-object v0
.end method
