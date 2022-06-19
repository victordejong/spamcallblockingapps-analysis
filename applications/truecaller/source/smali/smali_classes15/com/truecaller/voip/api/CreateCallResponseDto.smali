.class public final Lcom/truecaller/voip/api/CreateCallResponseDto;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ.\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u0011H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u000c\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u0007R\u0019\u0010\r\u001a\u00020\u00088\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u001a\u001a\u0004\u0008\u001b\u0010\nR\u001c\u0010\u000b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u0004\u00a8\u0006 "
    }
    d2 = {
        "Lcom/truecaller/voip/api/CreateCallResponseDto;",
        "",
        "",
        "component1",
        "()Ljava/lang/String;",
        "Lcom/truecaller/voip/api/AgoraInfoDto;",
        "component2",
        "()Lcom/truecaller/voip/api/AgoraInfoDto;",
        "Lcom/truecaller/voip/api/CallInfoDto;",
        "component3",
        "()Lcom/truecaller/voip/api/CallInfoDto;",
        "channelId",
        "agoraInfo",
        "callInfo",
        "copy",
        "(Ljava/lang/String;Lcom/truecaller/voip/api/AgoraInfoDto;Lcom/truecaller/voip/api/CallInfoDto;)Lcom/truecaller/voip/api/CreateCallResponseDto;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/truecaller/voip/api/AgoraInfoDto;",
        "getAgoraInfo",
        "Lcom/truecaller/voip/api/CallInfoDto;",
        "getCallInfo",
        "Ljava/lang/String;",
        "getChannelId",
        "<init>",
        "(Ljava/lang/String;Lcom/truecaller/voip/api/AgoraInfoDto;Lcom/truecaller/voip/api/CallInfoDto;)V",
        "voip_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final agoraInfo:Lcom/truecaller/voip/api/AgoraInfoDto;
    .annotation runtime Le/m/e/d0/b;
        value = "agora"
    .end annotation
.end field

.field private final callInfo:Lcom/truecaller/voip/api/CallInfoDto;

.field private final channelId:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "channel"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/voip/api/AgoraInfoDto;Lcom/truecaller/voip/api/CallInfoDto;)V
    .locals 1

    const-string v0, "channelId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "agoraInfo"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfo"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->channelId:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->agoraInfo:Lcom/truecaller/voip/api/AgoraInfoDto;

    iput-object p3, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->callInfo:Lcom/truecaller/voip/api/CallInfoDto;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/voip/api/CreateCallResponseDto;Ljava/lang/String;Lcom/truecaller/voip/api/AgoraInfoDto;Lcom/truecaller/voip/api/CallInfoDto;ILjava/lang/Object;)Lcom/truecaller/voip/api/CreateCallResponseDto;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->channelId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->agoraInfo:Lcom/truecaller/voip/api/AgoraInfoDto;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->callInfo:Lcom/truecaller/voip/api/CallInfoDto;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/truecaller/voip/api/CreateCallResponseDto;->copy(Ljava/lang/String;Lcom/truecaller/voip/api/AgoraInfoDto;Lcom/truecaller/voip/api/CallInfoDto;)Lcom/truecaller/voip/api/CreateCallResponseDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/truecaller/voip/api/AgoraInfoDto;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->agoraInfo:Lcom/truecaller/voip/api/AgoraInfoDto;

    return-object v0
.end method

.method public final component3()Lcom/truecaller/voip/api/CallInfoDto;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->callInfo:Lcom/truecaller/voip/api/CallInfoDto;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/truecaller/voip/api/AgoraInfoDto;Lcom/truecaller/voip/api/CallInfoDto;)Lcom/truecaller/voip/api/CreateCallResponseDto;
    .locals 1

    const-string v0, "channelId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "agoraInfo"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfo"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/voip/api/CreateCallResponseDto;

    invoke-direct {v0, p1, p2, p3}, Lcom/truecaller/voip/api/CreateCallResponseDto;-><init>(Ljava/lang/String;Lcom/truecaller/voip/api/AgoraInfoDto;Lcom/truecaller/voip/api/CallInfoDto;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/voip/api/CreateCallResponseDto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/voip/api/CreateCallResponseDto;

    iget-object v0, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->channelId:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/voip/api/CreateCallResponseDto;->channelId:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->agoraInfo:Lcom/truecaller/voip/api/AgoraInfoDto;

    iget-object v1, p1, Lcom/truecaller/voip/api/CreateCallResponseDto;->agoraInfo:Lcom/truecaller/voip/api/AgoraInfoDto;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->callInfo:Lcom/truecaller/voip/api/CallInfoDto;

    iget-object p1, p1, Lcom/truecaller/voip/api/CreateCallResponseDto;->callInfo:Lcom/truecaller/voip/api/CallInfoDto;

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

.method public final getAgoraInfo()Lcom/truecaller/voip/api/AgoraInfoDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->agoraInfo:Lcom/truecaller/voip/api/AgoraInfoDto;

    return-object v0
.end method

.method public final getCallInfo()Lcom/truecaller/voip/api/CallInfoDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->callInfo:Lcom/truecaller/voip/api/CallInfoDto;

    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->channelId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->agoraInfo:Lcom/truecaller/voip/api/AgoraInfoDto;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/truecaller/voip/api/AgoraInfoDto;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->callInfo:Lcom/truecaller/voip/api/CallInfoDto;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/truecaller/voip/api/CallInfoDto;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CreateCallResponseDto(channelId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", agoraInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->agoraInfo:Lcom/truecaller/voip/api/AgoraInfoDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/voip/api/CreateCallResponseDto;->callInfo:Lcom/truecaller/voip/api/CallInfoDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
