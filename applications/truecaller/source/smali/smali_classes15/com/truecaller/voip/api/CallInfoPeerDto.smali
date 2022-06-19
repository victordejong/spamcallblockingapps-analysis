.class public final Lcom/truecaller/voip/api/CallInfoPeerDto;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ.\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\nJ\u001a\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0004R\u0019\u0010\u000c\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u0007R\u0019\u0010\r\u001a\u00020\u00088\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u001a\u001a\u0004\u0008\u001b\u0010\n\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/voip/api/CallInfoPeerDto;",
        "",
        "",
        "component1",
        "()Ljava/lang/String;",
        "",
        "component2",
        "()J",
        "",
        "component3",
        "()I",
        "voipId",
        "phone",
        "rtcUid",
        "copy",
        "(Ljava/lang/String;JI)Lcom/truecaller/voip/api/CallInfoPeerDto;",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getVoipId",
        "J",
        "getPhone",
        "I",
        "getRtcUid",
        "<init>",
        "(Ljava/lang/String;JI)V",
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
.field private final phone:J

.field private final rtcUid:I

.field private final voipId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 1

    const-string v0, "voipId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->voipId:Ljava/lang/String;

    iput-wide p2, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->phone:J

    iput p4, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->rtcUid:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/voip/api/CallInfoPeerDto;Ljava/lang/String;JIILjava/lang/Object;)Lcom/truecaller/voip/api/CallInfoPeerDto;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->voipId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-wide p2, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->phone:J

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget p4, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->rtcUid:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/truecaller/voip/api/CallInfoPeerDto;->copy(Ljava/lang/String;JI)Lcom/truecaller/voip/api/CallInfoPeerDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->voipId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->phone:J

    return-wide v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->rtcUid:I

    return v0
.end method

.method public final copy(Ljava/lang/String;JI)Lcom/truecaller/voip/api/CallInfoPeerDto;
    .locals 1

    const-string v0, "voipId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/voip/api/CallInfoPeerDto;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/truecaller/voip/api/CallInfoPeerDto;-><init>(Ljava/lang/String;JI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/voip/api/CallInfoPeerDto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/voip/api/CallInfoPeerDto;

    iget-object v0, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->voipId:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/voip/api/CallInfoPeerDto;->voipId:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->phone:J

    iget-wide v2, p1, Lcom/truecaller/voip/api/CallInfoPeerDto;->phone:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->rtcUid:I

    iget p1, p1, Lcom/truecaller/voip/api/CallInfoPeerDto;->rtcUid:I

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

.method public final getPhone()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->phone:J

    return-wide v0
.end method

.method public final getRtcUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->rtcUid:I

    return v0
.end method

.method public final getVoipId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->voipId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->voipId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->phone:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->rtcUid:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "CallInfoPeerDto(voipId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->voipId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->phone:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rtcUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/voip/api/CallInfoPeerDto;->rtcUid:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
