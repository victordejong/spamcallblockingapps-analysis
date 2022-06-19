.class public final Lcom/facebook/ads/redexgen/X/Zg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Zd;->A0H()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Zd;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zd;)V
    .locals 0

    .line 67673
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zg;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 2

    .line 67674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A01(Lcom/facebook/ads/redexgen/X/Zd;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67675
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zg;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Zd;->A01(Lcom/facebook/ads/redexgen/X/Zd;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A08(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    .line 67676
    :goto_0
    return-object v0

    .line 67677
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zg;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A06:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    goto :goto_0
.end method
