.class public Lio/agora/rtm/RtmChannelMemberCount;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private channelID:Ljava/lang/String;

.field private memberCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/agora/rtm/RtmChannelMemberCount;->channelID:Ljava/lang/String;

    .line 4
    iput p2, p0, Lio/agora/rtm/RtmChannelMemberCount;->memberCount:I

    return-void
.end method


# virtual methods
.method public getChannelID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/RtmChannelMemberCount;->channelID:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberCount()I
    .locals 1

    .line 1
    iget v0, p0, Lio/agora/rtm/RtmChannelMemberCount;->memberCount:I

    return v0
.end method

.method public setChannelID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtm/RtmChannelMemberCount;->channelID:Ljava/lang/String;

    return-void
.end method

.method public setMemberCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/agora/rtm/RtmChannelMemberCount;->memberCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "rtmChannelMemberCount {channelID: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtm/RtmChannelMemberCount;->channelID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", memberCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtm/RtmChannelMemberCount;->memberCount:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
