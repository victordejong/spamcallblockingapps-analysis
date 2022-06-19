.class public final Lcom/facebook/ads/redexgen/X/T0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MS;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Sw;->A06()Lcom/facebook/ads/redexgen/X/MT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sw;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "h2gmCgzeOSwPpQadyubORmPME"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "FUsicmE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hn4NyL1W4e9kqLwlHKvUfsHZQMREJpya"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eHNPFabCzKzaRImgdDwbhByrCj67ZmIn"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6elmdBIgNV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KYWsfvA8UKVAEYMYl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OScpkLbA9Akq1WCCJj9B2P18mljyrRf1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CLPqh0UltEqIAscKXF8yE5GQF7q0sxf27"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/T0;->A01:[Ljava/lang/String;

    .line 53514
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sw;)V
    .locals 0

    .line 53515
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T0;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AA8()V
    .locals 4

    .line 53516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0h(Lcom/facebook/ads/redexgen/X/Sw;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T0;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    sget-object v1, Lcom/facebook/ads/redexgen/X/T0;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/T0;->A01:[Ljava/lang/String;

    const-string v1, "BQfapZ2cL00AEaaE3FSFtmiC2NvNVd8B"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "2Eilcj8Fw7KGtRQsL0qtkyDrsBY20NGQL"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Sw;->A0F(Lcom/facebook/ads/redexgen/X/Sw;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0B(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/O8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O8;->A07(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 53518
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0b(Lcom/facebook/ads/redexgen/X/Sw;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0F(Lcom/facebook/ads/redexgen/X/Sw;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/T0;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/T0;->A01:[Ljava/lang/String;

    const-string v1, "H8RzDb7PgK43jKvxQ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0g(Lcom/facebook/ads/redexgen/X/Sw;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MT;->setToolbarActionMode(I)V

    .line 53520
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T0;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    sget-object v2, Lcom/facebook/ads/redexgen/X/T0;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/T0;->A01:[Ljava/lang/String;

    const-string v1, "HnGIws8hCrqNeUOcBeXjDBOXn0GrcMNy"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Sw;->A0T(Lcom/facebook/ads/redexgen/X/Sw;)V

    .line 53521
    :goto_0
    return-void

    .line 53522
    :cond_2
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Sw;->A0T(Lcom/facebook/ads/redexgen/X/Sw;)V

    goto :goto_0

    .line 53523
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A04(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ja;->A07:Lcom/facebook/ads/redexgen/X/Ja;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 53524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A07(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A08(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A6Q()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->A3q(Ljava/lang/String;)V

    goto :goto_0

    .line 53525
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
