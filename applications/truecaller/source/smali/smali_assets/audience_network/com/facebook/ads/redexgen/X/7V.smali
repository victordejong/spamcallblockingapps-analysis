.class public final Lcom/facebook/ads/redexgen/X/7V;
.super Lcom/facebook/ads/redexgen/X/Kq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7T;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7T;)V
    .locals 0

    .line 17239
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7V;->A00:Lcom/facebook/ads/redexgen/X/7T;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kq;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Kr;)V
    .locals 2

    .line 17240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7V;->A00:Lcom/facebook/ads/redexgen/X/7T;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(Lcom/facebook/ads/redexgen/X/7T;)Lcom/facebook/ads/redexgen/X/Q4;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Q4;->setChecked(Z)V

    .line 17241
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 17242
    check-cast p1, Lcom/facebook/ads/redexgen/X/Kr;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7V;->A00(Lcom/facebook/ads/redexgen/X/Kr;)V

    return-void
.end method
