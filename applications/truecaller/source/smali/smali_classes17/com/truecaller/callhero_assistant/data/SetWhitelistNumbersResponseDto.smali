.class public final Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J$\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u001a\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0004R\u0019\u0010\u0006\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0012\u001a\u0004\u0008\u0014\u0010\u0004\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;",
        "",
        "",
        "component1",
        "()I",
        "component2",
        "added",
        "rejected",
        "copy",
        "(II)Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getRejected",
        "getAdded",
        "<init>",
        "(II)V",
        "callhero_assistant_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final added:I

.field private final rejected:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;->added:I

    iput p2, p0, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;->rejected:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;IIILjava/lang/Object;)Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;->added:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;->rejected:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;->copy(II)Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;->added:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;->rejected:I

    return v0
.end method

.method public final copy(II)Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;
    .locals 1

    new-instance v0, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;

    invoke-direct {v0, p1, p2}, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;

    iget v0, p0, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;->added:I

    iget v1, p1, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;->added:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;->rejected:I

    iget p1, p1, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;->rejected:I

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

.method public final getAdded()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;->added:I

    return v0
.end method

.method public final getRejected()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;->rejected:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;->added:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;->rejected:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetWhitelistNumbersResponseDto(added="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;->added:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rejected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;->rejected:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
