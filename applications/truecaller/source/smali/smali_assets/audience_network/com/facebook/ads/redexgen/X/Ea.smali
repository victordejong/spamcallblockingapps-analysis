.class public final Lcom/facebook/ads/redexgen/X/Ea;
.super Lcom/facebook/ads/redexgen/X/L3;
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

    .line 30209
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ea;->A00:Lcom/facebook/ads/redexgen/X/5E;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/L3;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7u;)V
    .locals 1

    .line 30210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ea;->A00:Lcom/facebook/ads/redexgen/X/5E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5E;->A00(Lcom/facebook/ads/redexgen/X/5E;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onPaused()V

    .line 30211
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 30212
    check-cast p1, Lcom/facebook/ads/redexgen/X/7u;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ea;->A00(Lcom/facebook/ads/redexgen/X/7u;)V

    return-void
.end method
