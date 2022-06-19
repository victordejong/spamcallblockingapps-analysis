.class public final Lcom/truecaller/voip/manager/rtm/RtmMsg;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J$\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0019\u0010\u0008\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0007R\"\u0010\u0018\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0016\u001a\u0004\u0008\u0019\u0010\u0007\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/voip/manager/rtm/RtmMsg;",
        "",
        "Lcom/truecaller/voip/manager/rtm/RtmMsgAction;",
        "component1",
        "()Lcom/truecaller/voip/manager/rtm/RtmMsgAction;",
        "",
        "component2",
        "()Ljava/lang/String;",
        "action",
        "channelId",
        "copy",
        "(Lcom/truecaller/voip/manager/rtm/RtmMsgAction;Ljava/lang/String;)Lcom/truecaller/voip/manager/rtm/RtmMsg;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/truecaller/voip/manager/rtm/RtmMsgAction;",
        "getAction",
        "Ljava/lang/String;",
        "getChannelId",
        "senderId",
        "getSenderId",
        "setSenderId",
        "(Ljava/lang/String;)V",
        "<init>",
        "(Lcom/truecaller/voip/manager/rtm/RtmMsgAction;Ljava/lang/String;)V",
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
.field private final action:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

.field private final channelId:Ljava/lang/String;

.field private transient senderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/manager/rtm/RtmMsgAction;Ljava/lang/String;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/voip/manager/rtm/RtmMsg;->action:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    iput-object p2, p0, Lcom/truecaller/voip/manager/rtm/RtmMsg;->channelId:Ljava/lang/String;

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/truecaller/voip/manager/rtm/RtmMsg;->senderId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/voip/manager/rtm/RtmMsg;Lcom/truecaller/voip/manager/rtm/RtmMsgAction;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/voip/manager/rtm/RtmMsg;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/truecaller/voip/manager/rtm/RtmMsg;->action:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/truecaller/voip/manager/rtm/RtmMsg;->channelId:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->copy(Lcom/truecaller/voip/manager/rtm/RtmMsgAction;Ljava/lang/String;)Lcom/truecaller/voip/manager/rtm/RtmMsg;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/truecaller/voip/manager/rtm/RtmMsgAction;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/manager/rtm/RtmMsg;->action:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/manager/rtm/RtmMsg;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/truecaller/voip/manager/rtm/RtmMsgAction;Ljava/lang/String;)Lcom/truecaller/voip/manager/rtm/RtmMsg;
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/voip/manager/rtm/RtmMsg;

    invoke-direct {v0, p1, p2}, Lcom/truecaller/voip/manager/rtm/RtmMsg;-><init>(Lcom/truecaller/voip/manager/rtm/RtmMsgAction;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/voip/manager/rtm/RtmMsg;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/voip/manager/rtm/RtmMsg;

    iget-object v0, p0, Lcom/truecaller/voip/manager/rtm/RtmMsg;->action:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    iget-object v1, p1, Lcom/truecaller/voip/manager/rtm/RtmMsg;->action:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/voip/manager/rtm/RtmMsg;->channelId:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/voip/manager/rtm/RtmMsg;->channelId:Ljava/lang/String;

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

.method public final getAction()Lcom/truecaller/voip/manager/rtm/RtmMsgAction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/manager/rtm/RtmMsg;->action:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/manager/rtm/RtmMsg;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSenderId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/manager/rtm/RtmMsg;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/voip/manager/rtm/RtmMsg;->action:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/voip/manager/rtm/RtmMsg;->channelId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setSenderId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/voip/manager/rtm/RtmMsg;->senderId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "RtmMsg(action="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/voip/manager/rtm/RtmMsg;->action:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", channelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/voip/manager/rtm/RtmMsg;->channelId:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
