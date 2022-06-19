.class public Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;
.super Lio/agora/rtm/jni/IRtmCallEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtm/internal/RtmCallManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallEventHandlerNative"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;


# direct methods
.method private constructor <init>(Lio/agora/rtm/internal/RtmCallManagerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-direct {p0}, Lio/agora/rtm/jni/IRtmCallEventHandler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/agora/rtm/internal/RtmCallManagerImpl;Lio/agora/rtm/internal/RtmCallManagerImpl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;-><init>(Lio/agora/rtm/internal/RtmCallManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onLocalInvitationAccepted(Lio/agora/rtm/jni/ILocalCallInvitation;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local invite accepted, response: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    iget-object v0, v0, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$200(Lio/agora/rtm/internal/RtmCallManagerImpl;)Lio/agora/common/LruCache;

    move-result-object v1

    invoke-static {p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->getLocalInvitationKey(Lio/agora/rtm/jni/ILocalCallInvitation;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/internal/LocalInvitationWrapper;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$300(Lio/agora/rtm/internal/RtmCallManagerImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/RtmCallEventListener;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1, p2}, Lio/agora/rtm/RtmCallEventListener;->onLocalInvitationAccepted(Lio/agora/rtm/LocalInvitation;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "accepted but callback target lost!"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onLocalInvitationCanceled(Lio/agora/rtm/jni/ILocalCallInvitation;)V
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local invite canceled"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    iget-object v0, v0, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$200(Lio/agora/rtm/internal/RtmCallManagerImpl;)Lio/agora/common/LruCache;

    move-result-object v1

    invoke-static {p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->getLocalInvitationKey(Lio/agora/rtm/jni/ILocalCallInvitation;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/internal/LocalInvitationWrapper;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$300(Lio/agora/rtm/internal/RtmCallManagerImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/RtmCallEventListener;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lio/agora/rtm/RtmCallEventListener;->onLocalInvitationCanceled(Lio/agora/rtm/LocalInvitation;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "canceled but callback target lost!"

    invoke-static {p1, v0}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onLocalInvitationFailure(Lio/agora/rtm/jni/ILocalCallInvitation;Lio/agora/rtm/jni/LOCAL_INVITATION_ERR_CODE;)V
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local invite failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    iget-object v0, v0, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$200(Lio/agora/rtm/internal/RtmCallManagerImpl;)Lio/agora/common/LruCache;

    move-result-object v1

    invoke-static {p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->getLocalInvitationKey(Lio/agora/rtm/jni/ILocalCallInvitation;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/internal/LocalInvitationWrapper;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$300(Lio/agora/rtm/internal/RtmCallManagerImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/RtmCallEventListener;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p2}, Lio/agora/rtm/jni/LOCAL_INVITATION_ERR_CODE;->swigValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lio/agora/rtm/RtmCallEventListener;->onLocalInvitationFailure(Lio/agora/rtm/LocalInvitation;I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "failure but callback target lost!"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onLocalInvitationReceivedByPeer(Lio/agora/rtm/jni/ILocalCallInvitation;)V
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local invite received by peer"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    iget-object v0, v0, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$200(Lio/agora/rtm/internal/RtmCallManagerImpl;)Lio/agora/common/LruCache;

    move-result-object v1

    invoke-static {p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->getLocalInvitationKey(Lio/agora/rtm/jni/ILocalCallInvitation;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/internal/LocalInvitationWrapper;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$300(Lio/agora/rtm/internal/RtmCallManagerImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/RtmCallEventListener;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lio/agora/rtm/RtmCallEventListener;->onLocalInvitationReceivedByPeer(Lio/agora/rtm/LocalInvitation;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "received by peer but callback target lost!"

    invoke-static {p1, v0}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onLocalInvitationRefused(Lio/agora/rtm/jni/ILocalCallInvitation;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local invite refused, response: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    iget-object v0, v0, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$200(Lio/agora/rtm/internal/RtmCallManagerImpl;)Lio/agora/common/LruCache;

    move-result-object v1

    invoke-static {p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->getLocalInvitationKey(Lio/agora/rtm/jni/ILocalCallInvitation;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/internal/LocalInvitationWrapper;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$300(Lio/agora/rtm/internal/RtmCallManagerImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/RtmCallEventListener;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1, p2}, Lio/agora/rtm/RtmCallEventListener;->onLocalInvitationRefused(Lio/agora/rtm/LocalInvitation;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "refused but callback target lost!"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onRemoteInvitationAccepted(Lio/agora/rtm/jni/IRemoteCallInvitation;)V
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remote invite accepted"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    iget-object v0, v0, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$400(Lio/agora/rtm/internal/RtmCallManagerImpl;)Lio/agora/common/LruCache;

    move-result-object v1

    invoke-static {p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->getRemoteInvitationKey(Lio/agora/rtm/jni/IRemoteCallInvitation;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/internal/RemoteInvitationWrapper;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$300(Lio/agora/rtm/internal/RtmCallManagerImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/RtmCallEventListener;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lio/agora/rtm/RtmCallEventListener;->onRemoteInvitationAccepted(Lio/agora/rtm/RemoteInvitation;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "remote accepted but callback target lost!"

    invoke-static {p1, v0}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onRemoteInvitationCanceled(Lio/agora/rtm/jni/IRemoteCallInvitation;)V
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remote invitation canceled"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    iget-object v0, v0, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$400(Lio/agora/rtm/internal/RtmCallManagerImpl;)Lio/agora/common/LruCache;

    move-result-object v1

    invoke-static {p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->getRemoteInvitationKey(Lio/agora/rtm/jni/IRemoteCallInvitation;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/internal/RemoteInvitationWrapper;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$300(Lio/agora/rtm/internal/RtmCallManagerImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/RtmCallEventListener;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lio/agora/rtm/RtmCallEventListener;->onRemoteInvitationCanceled(Lio/agora/rtm/RemoteInvitation;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "remote canceled but callback target lost!"

    invoke-static {p1, v0}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onRemoteInvitationFailure(Lio/agora/rtm/jni/IRemoteCallInvitation;Lio/agora/rtm/jni/REMOTE_INVITATION_ERR_CODE;)V
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remote invite failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    iget-object v0, v0, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$400(Lio/agora/rtm/internal/RtmCallManagerImpl;)Lio/agora/common/LruCache;

    move-result-object v1

    invoke-static {p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->getRemoteInvitationKey(Lio/agora/rtm/jni/IRemoteCallInvitation;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/internal/RemoteInvitationWrapper;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$300(Lio/agora/rtm/internal/RtmCallManagerImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/RtmCallEventListener;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p2}, Lio/agora/rtm/jni/REMOTE_INVITATION_ERR_CODE;->swigValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lio/agora/rtm/RtmCallEventListener;->onRemoteInvitationFailure(Lio/agora/rtm/RemoteInvitation;I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "remote failure but callback target lost!"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onRemoteInvitationReceived(Lio/agora/rtm/jni/IRemoteCallInvitation;)V
    .locals 5

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remote invite received, caller: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/agora/rtm/jni/IRemoteCallInvitation;->getCallerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lio/agora/rtm/internal/RemoteInvitationWrapper;

    invoke-direct {v0, p1}, Lio/agora/rtm/internal/RemoteInvitationWrapper;-><init>(Lio/agora/rtm/jni/IRemoteCallInvitation;)V

    .line 3
    iget-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    iget-object v1, v1, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v2}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$400(Lio/agora/rtm/internal/RtmCallManagerImpl;)Lio/agora/common/LruCache;

    move-result-object v2

    invoke-static {p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->getRemoteInvitationKey(Lio/agora/rtm/jni/IRemoteCallInvitation;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {p1}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$300(Lio/agora/rtm/internal/RtmCallManagerImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/RtmCallEventListener;

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1, v0}, Lio/agora/rtm/RtmCallEventListener;->onRemoteInvitationReceived(Lio/agora/rtm/RemoteInvitation;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "remote received but callback target lost!"

    invoke-static {p1, v0}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onRemoteInvitationRefused(Lio/agora/rtm/jni/IRemoteCallInvitation;)V
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remote invite refused"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    iget-object v0, v0, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$400(Lio/agora/rtm/internal/RtmCallManagerImpl;)Lio/agora/common/LruCache;

    move-result-object v1

    invoke-static {p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->getRemoteInvitationKey(Lio/agora/rtm/jni/IRemoteCallInvitation;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/internal/RemoteInvitationWrapper;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$300(Lio/agora/rtm/internal/RtmCallManagerImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/RtmCallEventListener;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lio/agora/rtm/RtmCallEventListener;->onRemoteInvitationRefused(Lio/agora/rtm/RemoteInvitation;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lio/agora/rtm/internal/RtmCallManagerImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "remote refused but callback target lost!"

    invoke-static {p1, v0}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
