.class public final Lcom/criteo/publisher/model/AdSize;
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0087\u0008\u0018\u0000B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0002\u001a\u00020\u0001H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u0001H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0003J$\u0010\u0007\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\n\u001a\u00020\tH\u00d6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\u0001H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u001a\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u00d6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0005\u001a\u00020\u00018\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0003R\u0013\u0010\u0015\u001a\u00020\t8F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u000bR\u0019\u0010\u0006\u001a\u00020\u00018\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0012\u001a\u0004\u0008\u0016\u0010\u0003\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/criteo/publisher/model/AdSize;",
        "",
        "component1",
        "()I",
        "component2",
        "width",
        "height",
        "copy",
        "(II)Lcom/criteo/publisher/model/AdSize;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getWidth",
        "getFormattedSize",
        "formattedSize",
        "getHeight",
        "<init>",
        "(II)V",
        "publisher-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/criteo/publisher/model/AdSize;->width:I

    iput p2, p0, Lcom/criteo/publisher/model/AdSize;->height:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/criteo/publisher/model/AdSize;IIILjava/lang/Object;)Lcom/criteo/publisher/model/AdSize;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/criteo/publisher/model/AdSize;->width:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/criteo/publisher/model/AdSize;->height:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/criteo/publisher/model/AdSize;->copy(II)Lcom/criteo/publisher/model/AdSize;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/criteo/publisher/model/AdSize;->width:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/criteo/publisher/model/AdSize;->height:I

    return v0
.end method

.method public final copy(II)Lcom/criteo/publisher/model/AdSize;
    .locals 1

    new-instance v0, Lcom/criteo/publisher/model/AdSize;

    invoke-direct {v0, p1, p2}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/criteo/publisher/model/AdSize;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/criteo/publisher/model/AdSize;

    iget v0, p0, Lcom/criteo/publisher/model/AdSize;->width:I

    iget v1, p1, Lcom/criteo/publisher/model/AdSize;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/criteo/publisher/model/AdSize;->height:I

    iget p1, p1, Lcom/criteo/publisher/model/AdSize;->height:I

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

.method public final getFormattedSize()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/criteo/publisher/model/AdSize;->width:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/criteo/publisher/model/AdSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/criteo/publisher/model/AdSize;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/criteo/publisher/model/AdSize;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/criteo/publisher/model/AdSize;->width:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/criteo/publisher/model/AdSize;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AdSize(width="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/criteo/publisher/model/AdSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/criteo/publisher/model/AdSize;->height:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
