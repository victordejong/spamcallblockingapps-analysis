.class public Lcom/mopub/nativeads/IntInterval;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mopub/nativeads/IntInterval;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/mopub/nativeads/IntInterval;->a:I

    .line 3
    iput p2, p0, Lcom/mopub/nativeads/IntInterval;->b:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mopub/nativeads/IntInterval;)I
    .locals 2

    .line 2
    iget v0, p0, Lcom/mopub/nativeads/IntInterval;->a:I

    iget v1, p1, Lcom/mopub/nativeads/IntInterval;->a:I

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/mopub/nativeads/IntInterval;->b:I

    iget p1, p1, Lcom/mopub/nativeads/IntInterval;->b:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/mopub/nativeads/IntInterval;

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/IntInterval;->compareTo(Lcom/mopub/nativeads/IntInterval;)I

    move-result p1

    return p1
.end method

.method public equals(II)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/mopub/nativeads/IntInterval;->a:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lcom/mopub/nativeads/IntInterval;->b:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2
    :cond_0
    instance-of v1, p1, Lcom/mopub/nativeads/IntInterval;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 3
    :cond_1
    check-cast p1, Lcom/mopub/nativeads/IntInterval;

    .line 4
    iget v1, p0, Lcom/mopub/nativeads/IntInterval;->a:I

    iget v3, p1, Lcom/mopub/nativeads/IntInterval;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/mopub/nativeads/IntInterval;->b:I

    iget p1, p1, Lcom/mopub/nativeads/IntInterval;->b:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mopub/nativeads/IntInterval;->b:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mopub/nativeads/IntInterval;->a:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/mopub/nativeads/IntInterval;->a:I

    const/16 v1, 0x383

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget v0, p0, Lcom/mopub/nativeads/IntInterval;->b:I

    add-int/2addr v1, v0

    return v1
.end method

.method public setLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mopub/nativeads/IntInterval;->b:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mopub/nativeads/IntInterval;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "{start : "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mopub/nativeads/IntInterval;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/nativeads/IntInterval;->b:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
