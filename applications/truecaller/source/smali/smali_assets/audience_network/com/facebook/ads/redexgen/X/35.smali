.class public final Lcom/facebook/ads/redexgen/X/35;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3F;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3F;)V
    .locals 0

    .line 7645
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/35;->A00:Lcom/facebook/ads/redexgen/X/3F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 7646
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/35;->A00:Lcom/facebook/ads/redexgen/X/3F;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3F;->setScrollState(I)V

    .line 7647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/35;->A00:Lcom/facebook/ads/redexgen/X/3F;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3F;->A0f()V

    .line 7648
    return-void
.end method
