.class public final Lcom/facebook/ads/redexgen/X/aB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/a3;->A0S()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/a3;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pBrDaZa5X5LjOgDS06qrKfvSDyGe8efw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mQEhYUIy596kL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "EIforD6eBYb22Ex4JOKq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "k4SBaaSc1moa84J0CFgFz3nqLP2HVqmu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "u8nSh4T3SaBZfkGp86pLE93qaiXMklcf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jMwuEx2OfYupc0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IfOhRtB8SPti74hSuqBgnsqawc0MdhYN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "25E6wEyieKrSwG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aB;->A01:[Ljava/lang/String;

    .line 67939
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/a3;)V
    .locals 0

    .line 67940
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aB;->A00:Lcom/facebook/ads/redexgen/X/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 4

    .line 67941
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x4

    if-ge v1, v0, :cond_1

    .line 67942
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aB;->A00:Lcom/facebook/ads/redexgen/X/a3;

    sget-object v2, Lcom/facebook/ads/redexgen/X/aB;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x5

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/aB;->A01:[Ljava/lang/String;

    const-string v1, "5uTBAcIF1H8x94"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "w8sP31VUPTTap4"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A05:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0

    .line 67943
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A00:Lcom/facebook/ads/redexgen/X/a3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/a3;->A02(Lcom/facebook/ads/redexgen/X/a3;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 67944
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aB;->A00:Lcom/facebook/ads/redexgen/X/a3;

    sget-object v2, Lcom/facebook/ads/redexgen/X/aB;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/aB;->A01:[Ljava/lang/String;

    const-string v1, "fRLqK3UXRIvALx"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "beY33YfNkspfTw"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/a3;->A02(Lcom/facebook/ads/redexgen/X/a3;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6b;->A04(I)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    .line 67945
    :goto_0
    return-object v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/aB;->A01:[Ljava/lang/String;

    const-string v1, "qWUfrjWL8adA9tG6bFG21ciodwCrSrmB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/a3;->A02(Lcom/facebook/ads/redexgen/X/a3;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6b;->A04(I)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    goto :goto_0

    .line 67946
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aB;->A00:Lcom/facebook/ads/redexgen/X/a3;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A07:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    goto :goto_0
.end method
