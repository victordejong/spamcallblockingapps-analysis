.class public final Lcom/facebook/ads/redexgen/X/YO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YM;->A0G()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YM;)V
    .locals 0

    .line 66895
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/YM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 2

    .line 66896
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_0

    .line 66897
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/YM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A05:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0

    .line 66898
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YM;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/os/PowerManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66899
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/YM;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A0F(Z)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    .line 66900
    :goto_0
    return-object v0

    .line 66901
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/YM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A07:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    goto :goto_0
.end method
