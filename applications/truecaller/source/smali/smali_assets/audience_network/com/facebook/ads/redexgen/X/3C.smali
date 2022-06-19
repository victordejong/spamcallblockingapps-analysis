.class public final Lcom/facebook/ads/redexgen/X/3C;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PagerObserver"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3F;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3F;)V
    .locals 0

    .line 8199
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3C;->A00:Lcom/facebook/ads/redexgen/X/3F;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 8200
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 8201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A00:Lcom/facebook/ads/redexgen/X/3F;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3F;->A0e()V

    .line 8202
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .line 8203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A00:Lcom/facebook/ads/redexgen/X/3F;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3F;->A0e()V

    .line 8204
    return-void
.end method
