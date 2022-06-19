.class public final Lcom/facebook/ads/redexgen/X/Sr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/N3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/N1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/N1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0i4Wqrqqd8V"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SjjlSsHq4luZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UY2G1G5tdkkQRCLDawUW8PMELrtkam"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "x8YzSsjyce"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sMLSYBAewXVAxhh2DbXf8YHA5QSbjC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Z41BjwW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WlPnbv1jMaDivlCQdRIz8mOz1GWjjHLQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sr;->A02:[Ljava/lang/String;

    .line 52908
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sr;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/N1;)V
    .locals 0

    .line 52909
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sr;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sr;->A01:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sr;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sr;->A02:[Ljava/lang/String;

    const-string v1, "41BFLxMtpa8zSeOoPh8lyezFWRN0z1Os"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x1dt
        -0x11t
        -0x13t
        -0x52t
        -0x1at
        -0x1ft
        -0x1dt
        -0x1bt
        -0x1et
        -0x11t
        -0x11t
        -0x15t
        -0x52t
        -0x1ft
        -0x1ct
        -0xdt
        -0x52t
        -0x1ft
        -0x1ct
        -0xet
        -0x1bt
        -0x10t
        -0x11t
        -0xet
        -0xct
        -0x17t
        -0x12t
        -0x19t
        -0x52t
        -0x3at
        -0x37t
        -0x32t
        -0x37t
        -0x2dt
        -0x38t
        -0x21t
        -0x3ft
        -0x3ct
        -0x21t
        -0x2et
        -0x3bt
        -0x30t
        -0x31t
        -0x2et
        -0x2ct
        -0x37t
        -0x32t
        -0x39t
        -0x21t
        -0x3at
        -0x34t
        -0x31t
        -0x29t
    .end array-data
.end method


# virtual methods
.method public final A40()V
    .locals 4

    .line 52910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A07(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A07(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x35

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sr;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/MU;->A3q(Ljava/lang/String;)V

    .line 52912
    :cond_0
    return-void
.end method

.method public final A41()V
    .locals 2

    .line 52913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0L()V

    .line 52914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A08(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/MV;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A08(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/MV;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MV;->ABt(Z)V

    .line 52916
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0F(Lcom/facebook/ads/redexgen/X/N1;)V

    .line 52917
    return-void
.end method

.method public final A7k()V
    .locals 4

    .line 52918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A05(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52919
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sr;->A41()V

    .line 52920
    return-void

    .line 52921
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A01(Lcom/facebook/ads/redexgen/X/N1;)I

    .line 52922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A05(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A02()Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    if-nez v0, :cond_2

    .line 52923
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sr;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sr;->A02:[Ljava/lang/String;

    const-string v1, "M7aB9yPR9altU9X1FYnvgfaKEANBwcUB"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/N1;->A0E(Lcom/facebook/ads/redexgen/X/N1;)V

    goto :goto_0

    .line 52924
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/N1;->A05(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A02()Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/N1;->A0G(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/2D;)V

    .line 52925
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    .line 52926
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A06(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52927
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    const/16 v1, 0x80

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N1;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 52928
    :cond_3
    return-void
.end method

.method public final A8b()V
    .locals 4

    .line 52929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    .line 52930
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A06(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A0C(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v0

    .line 52931
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52932
    new-instance v3, Lcom/facebook/ads/redexgen/X/LI;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/LI;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    .line 52933
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A06(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    .line 52934
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A06(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A0C(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    .line 52935
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A09(Lcom/facebook/ads/redexgen/X/N1;)Ljava/lang/String;

    move-result-object v0

    .line 52936
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LI;->A08(Lcom/facebook/ads/redexgen/X/LI;Lcom/facebook/ads/redexgen/X/XT;Landroid/net/Uri;Ljava/lang/String;)V

    .line 52937
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A04(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/2C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2C;->A04()V

    .line 52938
    return-void
.end method

.method public final A8c()V
    .locals 4

    .line 52939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0L()V

    .line 52940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A08(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/MV;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A08(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/MV;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MV;->ABt(Z)V

    .line 52942
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A06(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A06(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52943
    new-instance v3, Lcom/facebook/ads/redexgen/X/LI;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/LI;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    .line 52944
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A06(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    .line 52945
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A06(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A06(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    .line 52946
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A09(Lcom/facebook/ads/redexgen/X/N1;)Ljava/lang/String;

    move-result-object v0

    .line 52947
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LI;->A08(Lcom/facebook/ads/redexgen/X/LI;Lcom/facebook/ads/redexgen/X/XT;Landroid/net/Uri;Ljava/lang/String;)V

    .line 52948
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A04(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/2C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2C;->A06()V

    .line 52949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0F(Lcom/facebook/ads/redexgen/X/N1;)V

    .line 52950
    return-void
.end method

.method public final ABH(Lcom/facebook/ads/redexgen/X/2B;)V
    .locals 2

    .line 52951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A00(Lcom/facebook/ads/redexgen/X/N1;)I

    .line 52952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/N1;->A03(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/2B;)Lcom/facebook/ads/redexgen/X/2B;

    .line 52953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A02(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/2B;->A03:Lcom/facebook/ads/redexgen/X/2B;

    if-ne v1, v0, :cond_0

    .line 52954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A06(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A03(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    .line 52955
    .local p0, "menuItem":Lcom/facebook/ads/redexgen/X/2D;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/N1;->A0G(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/2D;)V

    .line 52956
    return-void

    .line 52957
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A06(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A04(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    goto :goto_0
.end method

.method public final ABQ(Lcom/facebook/ads/redexgen/X/2D;)V
    .locals 2

    .line 52958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A00(Lcom/facebook/ads/redexgen/X/N1;)I

    .line 52959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A04(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/2C;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2D;->A01()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A07(I)V

    .line 52960
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2D;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/N1;->A0H(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/2D;)V

    .line 52962
    :goto_0
    return-void

    .line 52963
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/N1;->A0G(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/2D;)V

    goto :goto_0
.end method
