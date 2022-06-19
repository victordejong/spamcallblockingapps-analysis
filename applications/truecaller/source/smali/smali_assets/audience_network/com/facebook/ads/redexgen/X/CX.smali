.class public final Lcom/facebook/ads/redexgen/X/CX;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/CY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeekPoints"
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/CZ;

.field public final A01:Lcom/facebook/ads/redexgen/X/CZ;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/CX;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CZ;)V
    .locals 0

    .line 25022
    invoke-direct {p0, p1, p1}, Lcom/facebook/ads/redexgen/X/CX;-><init>(Lcom/facebook/ads/redexgen/X/CZ;Lcom/facebook/ads/redexgen/X/CZ;)V

    .line 25023
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CZ;Lcom/facebook/ads/redexgen/X/CZ;)V
    .locals 1

    .line 25024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25025
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/CZ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    .line 25026
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/CZ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A01:Lcom/facebook/ads/redexgen/X/CZ;

    .line 25027
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/CX;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4e

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
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/CX;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x36t
        -0x42t
        0x1t
        0x16t
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 25028
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 25029
    return v3

    .line 25030
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 25031
    .end local v3
    :cond_1
    return v2

    .line 25032
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/CX;

    .line 25033
    .local v3, "other":Lcom/facebook/ads/redexgen/X/CX;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CX;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/CX;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/CZ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CX;->A01:Lcom/facebook/ads/redexgen/X/CZ;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/CX;->A01:Lcom/facebook/ads/redexgen/X/CZ;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/CZ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 25034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/CZ;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A01:Lcom/facebook/ads/redexgen/X/CZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/CZ;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 25035
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CX;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CX;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A01:Lcom/facebook/ads/redexgen/X/CZ;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/CZ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CX;->A00(III)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CX;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CX;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A01:Lcom/facebook/ads/redexgen/X/CZ;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
