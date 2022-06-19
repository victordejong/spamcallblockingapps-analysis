.class public final Lcom/facebook/ads/redexgen/X/Y6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xw;->A0G()Lcom/facebook/ads/redexgen/X/6k;
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

    const-string v0, "xn6Y4xiAj5nTE1ZX0fcI9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IuzZJNTC9Fpz"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Zp9uFgGuFlryeSNHyo4T0p"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eRJH2gjtevDtLFu1wMxFEv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pTKacr9NdWTXHSX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3c0ViuxMUKEAC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2WDSEnCYP4spNEJs"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "S3q5Kz3J"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Y6;->A01:[Ljava/lang/String;

    .line 66637
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xw;)V
    .locals 0

    .line 66638
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 4

    .line 66639
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge v1, v0, :cond_1

    .line 66640
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Y6;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y6;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Y6;->A01:[Ljava/lang/String;

    const-string v1, "x95Rh7kgyGSfBF3YHwpGzi"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "73CHLU13D6YvD39ECjSAyL"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A05:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0

    .line 66641
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xw;->A03(Lcom/facebook/ads/redexgen/X/Xw;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66642
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Xw;->A03(Lcom/facebook/ads/redexgen/X/Xw;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A0F(Z)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    .line 66643
    :goto_0
    return-object v0

    .line 66644
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A07:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    goto :goto_0
.end method
