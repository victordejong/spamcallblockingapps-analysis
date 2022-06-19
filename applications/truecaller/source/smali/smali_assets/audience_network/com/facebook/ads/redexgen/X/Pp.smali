.class public final Lcom/facebook/ads/redexgen/X/Pp;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Po;->A0a(Lcom/facebook/ads/redexgen/X/Pf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Po;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Po;)V
    .locals 0

    .line 49231
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pp;->A00:Lcom/facebook/ads/redexgen/X/Po;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 49232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pp;->A00:Lcom/facebook/ads/redexgen/X/Po;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Po;->A0D()Lcom/facebook/ads/redexgen/X/KR;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9O;->A02(Lcom/facebook/ads/redexgen/X/9N;)V

    .line 49233
    return-void
.end method
