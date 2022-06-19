.class public final Lcom/facebook/ads/redexgen/X/bE;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/b8;->A0I(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/b8;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Tj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/b8;Lcom/facebook/ads/redexgen/X/Tj;)V
    .locals 0

    .line 68945
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/b8;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bE;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 68946
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bE;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Tj;->A1a(ZZ)V

    .line 68947
    return-void
.end method
