.class public final Lcom/facebook/ads/redexgen/X/Y4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xw;->A0S()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Xw;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YvgwWocx1FADdeAzbpsmJqKucTKVrLw8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IN5yo6alVzQxSBDS0LSAMVLc9G2MRZFn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HAZTu6IPNZsD1qj0M1i9utr9DJx5S0QZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "N5cGJfQ0ESKW2WKzc5hPaTPWXOaKWBwf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tNMXMhxZjOCLmtsXwerOChNpJkA4NIz8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qe3nCZLHllYVPimtyVQbZz0eRg0vYsPF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hksQgw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nUQ4NN4k5WyfvhfMBfttwidjpDAXB5K7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Y4;->A01:[Ljava/lang/String;

    .line 66623
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xw;)V
    .locals 0

    .line 66624
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y4;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 5

    .line 66625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xw;->A03(Lcom/facebook/ads/redexgen/X/Xw;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66626
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y4;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A07:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0

    .line 66627
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_1

    .line 66628
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y4;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Xw;->A03(Lcom/facebook/ads/redexgen/X/Xw;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A04(I)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0

    .line 66629
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Y4;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Xw;->A03(Lcom/facebook/ads/redexgen/X/Xw;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y4;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y4;->A01:[Ljava/lang/String;

    const-string v1, "ynGeEoYIomGmDWEGPoJ89qRpE67tUZnz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/6b;->A04(I)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
