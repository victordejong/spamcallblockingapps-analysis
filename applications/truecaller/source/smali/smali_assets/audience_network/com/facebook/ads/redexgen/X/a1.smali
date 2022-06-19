.class public final Lcom/facebook/ads/redexgen/X/a1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Zw;->A0I()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Zw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zw;)V
    .locals 0

    .line 67821
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/a1;->A00:Lcom/facebook/ads/redexgen/X/Zw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 2

    .line 67822
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a1;->A00:Lcom/facebook/ads/redexgen/X/Zw;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Zw;->A01(Lcom/facebook/ads/redexgen/X/Zw;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A0F(Z)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0
.end method
