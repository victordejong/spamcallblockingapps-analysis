.class public Lio/agora/rtm/jni/RtmServiceContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->new_RtmServiceContext()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lio/agora/rtm/jni/RtmServiceContext;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lio/agora/rtm/jni/RtmServiceContext;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lio/agora/rtm/jni/RtmServiceContext;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lio/agora/rtm/jni/RtmServiceContext;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-wide v0, p0, Lio/agora/rtm/jni/RtmServiceContext;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtm/jni/RtmServiceContext;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-boolean v4, p0, Lio/agora/rtm/jni/RtmServiceContext;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 3
    iput-boolean v4, p0, Lio/agora/rtm/jni/RtmServiceContext;->swigCMemOwn:Z

    .line 4
    invoke-static {v0, v1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->delete_RtmServiceContext(J)V

    .line 5
    :cond_0
    iput-wide v2, p0, Lio/agora/rtm/jni/RtmServiceContext;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/agora/rtm/jni/RtmServiceContext;->delete()V

    return-void
.end method

.method public getAreaCode()Lio/agora/rtm/jni/RTM_AREA_CODE;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/RtmServiceContext;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->RtmServiceContext_areaCode_get(JLio/agora/rtm/jni/RtmServiceContext;)I

    move-result v0

    invoke-static {v0}, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigToEnum(I)Lio/agora/rtm/jni/RTM_AREA_CODE;

    move-result-object v0

    return-object v0
.end method

.method public setAreaCode(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/RtmServiceContext;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->RtmServiceContext_areaCode_set(JLio/agora/rtm/jni/RtmServiceContext;I)V

    return-void
.end method
