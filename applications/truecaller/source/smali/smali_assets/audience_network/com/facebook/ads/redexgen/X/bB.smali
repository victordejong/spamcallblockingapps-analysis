.class public final Lcom/facebook/ads/redexgen/X/bB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Nt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/b8;->A0H(Lcom/facebook/ads/NativeAd;)V
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

    .line 68936
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bB;->A00:Lcom/facebook/ads/redexgen/X/b8;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bB;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAi(Z)V
    .locals 2

    .line 68937
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bB;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Tj;->A1a(ZZ)V

    .line 68938
    return-void
.end method
