.class public final Lcom/facebook/ads/redexgen/X/EX;
.super Lcom/facebook/ads/redexgen/X/KM;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5E;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5E;)V
    .locals 0

    .line 30197
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EX;->A00:Lcom/facebook/ads/redexgen/X/5E;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KM;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KN;)V
    .locals 1

    .line 30198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EX;->A00:Lcom/facebook/ads/redexgen/X/5E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5E;->A00(Lcom/facebook/ads/redexgen/X/5E;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onVolumeChanged()V

    .line 30199
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 30200
    check-cast p1, Lcom/facebook/ads/redexgen/X/KN;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EX;->A00(Lcom/facebook/ads/redexgen/X/KN;)V

    return-void
.end method
