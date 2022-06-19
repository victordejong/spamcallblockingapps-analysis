.class public final Lcom/facebook/ads/redexgen/X/X8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8N;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/X7;->A7E()Lcom/facebook/ads/redexgen/X/8N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/X7;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/X7;Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;)V
    .locals 0

    .line 65898
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/X8;->A01:Lcom/facebook/ads/redexgen/X/X7;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/X8;->A00:Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A8Q()Z
    .locals 1

    .line 65899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A00:Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;->isLimitAdTracking()Z

    move-result v0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 65900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A00:Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
