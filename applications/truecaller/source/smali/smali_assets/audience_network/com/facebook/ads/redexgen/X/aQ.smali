.class public final Lcom/facebook/ads/redexgen/X/aQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aO;->A0H()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aO;)V
    .locals 0

    .line 68063
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aQ;->A00:Lcom/facebook/ads/redexgen/X/aO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 2

    .line 68064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aQ;->A00:Lcom/facebook/ads/redexgen/X/aO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aO;->A01(Lcom/facebook/ads/redexgen/X/aO;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68065
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aQ;->A00:Lcom/facebook/ads/redexgen/X/aO;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/aO;->A01(Lcom/facebook/ads/redexgen/X/aO;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A08(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    .line 68066
    :goto_0
    return-object v0

    .line 68067
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aQ;->A00:Lcom/facebook/ads/redexgen/X/aO;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A07:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    goto :goto_0
.end method
