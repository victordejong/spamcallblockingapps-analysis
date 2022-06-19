.class public final Lcom/facebook/ads/redexgen/X/Ej;
.super Lcom/facebook/ads/redexgen/X/Kk;
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

    .line 30270
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ej;->A00:Lcom/facebook/ads/redexgen/X/5E;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kk;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Ko;)V
    .locals 1

    .line 30271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ej;->A00:Lcom/facebook/ads/redexgen/X/5E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5E;->A00(Lcom/facebook/ads/redexgen/X/5E;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onPrepared()V

    .line 30272
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 30273
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ko;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ej;->A00(Lcom/facebook/ads/redexgen/X/Ko;)V

    return-void
.end method
