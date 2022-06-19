.class public final Lcom/facebook/ads/redexgen/X/Y9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xw;->A0N()Lcom/facebook/ads/redexgen/X/6k;
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

    const-string v0, "1jYE18OinQfv5WLTq2cVBe585KmN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "X325BmovX2W2cAXv5JjOdne9uqamI6Ku"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "itArcmOQ038W2qOxTmWDysJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YLO301mgb0CV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8Iuh4U1kakUbsQ2Nn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "O3ZH7jI89PddtJoXg7iV4O6wtsqjtnrU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1x9H6MAyleaM4oP8QSazbLvKby53Pv0n"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YmZygv2VfDGVkOFuuIE9CAITaRVNY9b1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Y9;->A01:[Ljava/lang/String;

    .line 66663
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xw;)V
    .locals 0

    .line 66664
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y9;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 5

    .line 66665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xw;->A03(Lcom/facebook/ads/redexgen/X/Xw;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66666
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Y9;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Xw;->A03(Lcom/facebook/ads/redexgen/X/Xw;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y9;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Y9;->A01:[Ljava/lang/String;

    const-string v1, "tduom2IhCerqtA7iCB"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/6b;->A08(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    goto :goto_0

    .line 66667
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y9;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A07:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    .line 66668
    :goto_0
    return-object v0
.end method
