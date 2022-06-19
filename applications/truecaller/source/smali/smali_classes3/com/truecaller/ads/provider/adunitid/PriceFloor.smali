.class public final Lcom/truecaller/ads/provider/adunitid/PriceFloor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J$\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0019\u0010\u0008\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0007\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/truecaller/ads/provider/adunitid/PriceFloor;",
        "",
        "",
        "component1",
        "()D",
        "",
        "component2",
        "()Ljava/lang/String;",
        "floor",
        "ladder",
        "copy",
        "(DLjava/lang/String;)Lcom/truecaller/ads/provider/adunitid/PriceFloor;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "D",
        "getFloor",
        "Ljava/lang/String;",
        "getLadder",
        "<init>",
        "(DLjava/lang/String;)V",
        "ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final floor:D

.field private final ladder:Ljava/lang/String;


# direct methods
.method public constructor <init>(DLjava/lang/String;)V
    .locals 1

    const-string v0, "ladder"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/truecaller/ads/provider/adunitid/PriceFloor;->floor:D

    iput-object p3, p0, Lcom/truecaller/ads/provider/adunitid/PriceFloor;->ladder:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/ads/provider/adunitid/PriceFloor;DLjava/lang/String;ILjava/lang/Object;)Lcom/truecaller/ads/provider/adunitid/PriceFloor;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/truecaller/ads/provider/adunitid/PriceFloor;->floor:D

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/truecaller/ads/provider/adunitid/PriceFloor;->ladder:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/truecaller/ads/provider/adunitid/PriceFloor;->copy(DLjava/lang/String;)Lcom/truecaller/ads/provider/adunitid/PriceFloor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/ads/provider/adunitid/PriceFloor;->floor:D

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ads/provider/adunitid/PriceFloor;->ladder:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(DLjava/lang/String;)Lcom/truecaller/ads/provider/adunitid/PriceFloor;
    .locals 1

    const-string v0, "ladder"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/ads/provider/adunitid/PriceFloor;

    invoke-direct {v0, p1, p2, p3}, Lcom/truecaller/ads/provider/adunitid/PriceFloor;-><init>(DLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/ads/provider/adunitid/PriceFloor;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/ads/provider/adunitid/PriceFloor;

    iget-wide v0, p0, Lcom/truecaller/ads/provider/adunitid/PriceFloor;->floor:D

    iget-wide v2, p1, Lcom/truecaller/ads/provider/adunitid/PriceFloor;->floor:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/ads/provider/adunitid/PriceFloor;->ladder:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/ads/provider/adunitid/PriceFloor;->ladder:Ljava/lang/String;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getFloor()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/ads/provider/adunitid/PriceFloor;->floor:D

    return-wide v0
.end method

.method public final getLadder()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/provider/adunitid/PriceFloor;->ladder:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/ads/provider/adunitid/PriceFloor;->floor:D

    invoke-static {v0, v1}, Lc;->a(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/ads/provider/adunitid/PriceFloor;->ladder:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "PriceFloor(floor="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/truecaller/ads/provider/adunitid/PriceFloor;->floor:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", ladder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/ads/provider/adunitid/PriceFloor;->ladder:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
