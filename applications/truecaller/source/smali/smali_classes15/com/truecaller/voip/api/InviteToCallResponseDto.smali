.class public final Lcom/truecaller/voip/api/InviteToCallResponseDto;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001c\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ0\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\n\u001a\u00020\u00022\u0014\u0008\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0006H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001a\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R%\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0017\u001a\u0004\u0008\u0018\u0010\tR\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0004\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/truecaller/voip/api/InviteToCallResponseDto;",
        "",
        "Lcom/truecaller/voip/api/CallInfoDto;",
        "component1",
        "()Lcom/truecaller/voip/api/CallInfoDto;",
        "",
        "",
        "Lcom/truecaller/voip/api/InviteToCallResult;",
        "component2",
        "()Ljava/util/Map;",
        "callInfo",
        "results",
        "copy",
        "(Lcom/truecaller/voip/api/CallInfoDto;Ljava/util/Map;)Lcom/truecaller/voip/api/InviteToCallResponseDto;",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/util/Map;",
        "getResults",
        "Lcom/truecaller/voip/api/CallInfoDto;",
        "getCallInfo",
        "<init>",
        "(Lcom/truecaller/voip/api/CallInfoDto;Ljava/util/Map;)V",
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
.field private final callInfo:Lcom/truecaller/voip/api/CallInfoDto;

.field private final results:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/voip/api/InviteToCallResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/api/CallInfoDto;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/voip/api/CallInfoDto;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/truecaller/voip/api/InviteToCallResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "results"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/voip/api/InviteToCallResponseDto;->callInfo:Lcom/truecaller/voip/api/CallInfoDto;

    iput-object p2, p0, Lcom/truecaller/voip/api/InviteToCallResponseDto;->results:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/voip/api/InviteToCallResponseDto;Lcom/truecaller/voip/api/CallInfoDto;Ljava/util/Map;ILjava/lang/Object;)Lcom/truecaller/voip/api/InviteToCallResponseDto;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/truecaller/voip/api/InviteToCallResponseDto;->callInfo:Lcom/truecaller/voip/api/CallInfoDto;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/truecaller/voip/api/InviteToCallResponseDto;->results:Ljava/util/Map;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/voip/api/InviteToCallResponseDto;->copy(Lcom/truecaller/voip/api/CallInfoDto;Ljava/util/Map;)Lcom/truecaller/voip/api/InviteToCallResponseDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/truecaller/voip/api/CallInfoDto;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/api/InviteToCallResponseDto;->callInfo:Lcom/truecaller/voip/api/CallInfoDto;

    return-object v0
.end method

.method public final component2()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/voip/api/InviteToCallResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/voip/api/InviteToCallResponseDto;->results:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Lcom/truecaller/voip/api/CallInfoDto;Ljava/util/Map;)Lcom/truecaller/voip/api/InviteToCallResponseDto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/voip/api/CallInfoDto;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/truecaller/voip/api/InviteToCallResult;",
            ">;)",
            "Lcom/truecaller/voip/api/InviteToCallResponseDto;"
        }
    .end annotation

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "results"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/voip/api/InviteToCallResponseDto;

    invoke-direct {v0, p1, p2}, Lcom/truecaller/voip/api/InviteToCallResponseDto;-><init>(Lcom/truecaller/voip/api/CallInfoDto;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/voip/api/InviteToCallResponseDto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/voip/api/InviteToCallResponseDto;

    iget-object v0, p0, Lcom/truecaller/voip/api/InviteToCallResponseDto;->callInfo:Lcom/truecaller/voip/api/CallInfoDto;

    iget-object v1, p1, Lcom/truecaller/voip/api/InviteToCallResponseDto;->callInfo:Lcom/truecaller/voip/api/CallInfoDto;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/voip/api/InviteToCallResponseDto;->results:Ljava/util/Map;

    iget-object p1, p1, Lcom/truecaller/voip/api/InviteToCallResponseDto;->results:Ljava/util/Map;

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

.method public final getCallInfo()Lcom/truecaller/voip/api/CallInfoDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/api/InviteToCallResponseDto;->callInfo:Lcom/truecaller/voip/api/CallInfoDto;

    return-object v0
.end method

.method public final getResults()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/voip/api/InviteToCallResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/api/InviteToCallResponseDto;->results:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/voip/api/InviteToCallResponseDto;->callInfo:Lcom/truecaller/voip/api/CallInfoDto;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/voip/api/CallInfoDto;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/voip/api/InviteToCallResponseDto;->results:Ljava/util/Map;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "InviteToCallResponseDto(callInfo="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/voip/api/InviteToCallResponseDto;->callInfo:Lcom/truecaller/voip/api/CallInfoDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", results="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/voip/api/InviteToCallResponseDto;->results:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
