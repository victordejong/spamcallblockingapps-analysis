.class public final Lcom/truecaller/ads/adsrouter/model/Size;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J$\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u001a\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0006\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0004R\u001c\u0010\u0007\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0012\u001a\u0004\u0008\u0014\u0010\u0004\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/truecaller/ads/adsrouter/model/Size;",
        "",
        "",
        "component1",
        "()I",
        "component2",
        "height",
        "width",
        "copy",
        "(II)Lcom/truecaller/ads/adsrouter/model/Size;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getHeight",
        "getWidth",
        "<init>",
        "(II)V",
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
.field private final height:I
    .annotation runtime Le/m/e/d0/b;
        value = "height"
    .end annotation
.end field

.field private final width:I
    .annotation runtime Le/m/e/d0/b;
        value = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/truecaller/ads/adsrouter/model/Size;->height:I

    iput p2, p0, Lcom/truecaller/ads/adsrouter/model/Size;->width:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/ads/adsrouter/model/Size;IIILjava/lang/Object;)Lcom/truecaller/ads/adsrouter/model/Size;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/truecaller/ads/adsrouter/model/Size;->height:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/truecaller/ads/adsrouter/model/Size;->width:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/ads/adsrouter/model/Size;->copy(II)Lcom/truecaller/ads/adsrouter/model/Size;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/truecaller/ads/adsrouter/model/Size;->height:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/truecaller/ads/adsrouter/model/Size;->width:I

    return v0
.end method

.method public final copy(II)Lcom/truecaller/ads/adsrouter/model/Size;
    .locals 1

    new-instance v0, Lcom/truecaller/ads/adsrouter/model/Size;

    invoke-direct {v0, p1, p2}, Lcom/truecaller/ads/adsrouter/model/Size;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/ads/adsrouter/model/Size;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/ads/adsrouter/model/Size;

    iget v0, p0, Lcom/truecaller/ads/adsrouter/model/Size;->height:I

    iget v1, p1, Lcom/truecaller/ads/adsrouter/model/Size;->height:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/ads/adsrouter/model/Size;->width:I

    iget p1, p1, Lcom/truecaller/ads/adsrouter/model/Size;->width:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/ads/adsrouter/model/Size;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/ads/adsrouter/model/Size;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/truecaller/ads/adsrouter/model/Size;->height:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/ads/adsrouter/model/Size;->width:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Size(height="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/truecaller/ads/adsrouter/model/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/ads/adsrouter/model/Size;->width:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
