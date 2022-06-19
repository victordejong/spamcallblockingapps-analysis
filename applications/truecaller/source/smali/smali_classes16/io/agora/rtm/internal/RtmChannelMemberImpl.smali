.class public Lio/agora/rtm/internal/RtmChannelMemberImpl;
.super Lio/agora/rtm/RtmChannelMember;
.source "SourceFile"


# instance fields
.field public mChannelId:Ljava/lang/String;

.field public mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/agora/rtm/jni/IChannelMember;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/agora/rtm/RtmChannelMember;-><init>()V

    .line 2
    invoke-virtual {p1}, Lio/agora/rtm/jni/IChannelMember;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtm/internal/RtmChannelMemberImpl;->mUserId:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lio/agora/rtm/jni/IChannelMember;->getChannelId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtm/internal/RtmChannelMemberImpl;->mChannelId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lio/agora/rtm/RtmChannelMember;-><init>()V

    .line 5
    iput-object p1, p0, Lio/agora/rtm/internal/RtmChannelMemberImpl;->mUserId:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lio/agora/rtm/internal/RtmChannelMemberImpl;->mChannelId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelMemberImpl;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelMemberImpl;->mUserId:Ljava/lang/String;

    return-object v0
.end method
