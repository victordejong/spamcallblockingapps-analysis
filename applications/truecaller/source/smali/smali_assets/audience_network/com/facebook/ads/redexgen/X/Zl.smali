.class public final Lcom/facebook/ads/redexgen/X/Zl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Zi;->A0I()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Zi;

.field public final synthetic A01:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zi;Ljava/util/HashMap;)V
    .locals 0

    .line 67740
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zl;->A00:Lcom/facebook/ads/redexgen/X/Zi;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Zl;->A01:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 2

    .line 67741
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zl;->A00:Lcom/facebook/ads/redexgen/X/Zi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zl;->A01:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zi;->A0U(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0
.end method
