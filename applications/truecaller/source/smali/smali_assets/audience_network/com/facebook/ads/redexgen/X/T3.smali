.class public final Lcom/facebook/ads/redexgen/X/T3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/50;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Sw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sw;)V
    .locals 0

    .line 53542
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T3;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A8E()Z
    .locals 1

    .line 53543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0a(Lcom/facebook/ads/redexgen/X/Sw;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
