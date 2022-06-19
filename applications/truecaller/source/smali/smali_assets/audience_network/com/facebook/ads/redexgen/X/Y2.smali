.class public final Lcom/facebook/ads/redexgen/X/Y2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xw;->A0K()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Xw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xw;)V
    .locals 0

    .line 66611
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y2;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 2

    .line 66612
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_0

    .line 66613
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y2;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A05:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0

    .line 66614
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y2;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xw;->A03(Lcom/facebook/ads/redexgen/X/Xw;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66615
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y2;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Xw;->A03(Lcom/facebook/ads/redexgen/X/Xw;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A04(I)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    .line 66616
    :goto_0
    return-object v0

    .line 66617
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y2;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A07:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    goto :goto_0
.end method
