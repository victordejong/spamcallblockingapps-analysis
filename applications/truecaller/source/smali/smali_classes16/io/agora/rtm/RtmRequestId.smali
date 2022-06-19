.class public Lio/agora/rtm/RtmRequestId;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private requestId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lio/agora/rtm/RtmRequestId;->requestId:J

    return-void
.end method


# virtual methods
.method public getRequestId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/RtmRequestId;->requestId:J

    return-wide v0
.end method

.method public setRequestId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/agora/rtm/RtmRequestId;->requestId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "RtmRequestId: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/agora/rtm/RtmRequestId;->requestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
