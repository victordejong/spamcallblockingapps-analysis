.class public final Lcom/facebook/ads/redexgen/X/Yq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Yn;->A0G()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Yn;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Yn;)V
    .locals 0

    .line 67244
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yq;->A00:Lcom/facebook/ads/redexgen/X/Yn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 2

    .line 67245
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yq;->A00:Lcom/facebook/ads/redexgen/X/Yn;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A08(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0
.end method
