.class public Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/AgoraVideoDebugger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugViewHolder"
.end annotation


# instance fields
.field public agoraSurfaceView:Lio/agora/rtc/mediaio/AgoraSurfaceView;

.field public applyRotation:Z

.field public followSourceDimension:Z

.field public isInitialized:Z

.field public lastSourceHeight:I

.field public lastSourceWidth:I

.field public mirror:Z


# direct methods
.method public constructor <init>(Lio/agora/rtc/mediaio/AgoraSurfaceView;ZZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->isInitialized:Z

    .line 3
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->lastSourceWidth:I

    .line 4
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->lastSourceHeight:I

    .line 5
    iput-object p1, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->agoraSurfaceView:Lio/agora/rtc/mediaio/AgoraSurfaceView;

    .line 6
    iput-boolean p2, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->followSourceDimension:Z

    .line 7
    iput-boolean p3, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->mirror:Z

    .line 8
    iput-boolean p4, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->applyRotation:Z

    return-void
.end method


# virtual methods
.method public init(Lio/agora/rtc/gl/EglBase$Context;Lio/agora/rtc/mediaio/MediaIO$BufferType;Lio/agora/rtc/mediaio/MediaIO$PixelFormat;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->isInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->agoraSurfaceView:Lio/agora/rtc/mediaio/AgoraSurfaceView;

    invoke-virtual {v0, p1}, Lio/agora/rtc/mediaio/AgoraSurfaceView;->init(Lio/agora/rtc/gl/EglBase$Context;)V

    .line 3
    iget-object p1, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->agoraSurfaceView:Lio/agora/rtc/mediaio/AgoraSurfaceView;

    invoke-virtual {p1, p2}, Lio/agora/rtc/mediaio/AgoraSurfaceView;->setBufferType(Lio/agora/rtc/mediaio/MediaIO$BufferType;)V

    .line 4
    iget-object p1, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->agoraSurfaceView:Lio/agora/rtc/mediaio/AgoraSurfaceView;

    invoke-virtual {p1, p3}, Lio/agora/rtc/mediaio/AgoraSurfaceView;->setPixelFormat(Lio/agora/rtc/mediaio/MediaIO$PixelFormat;)V

    .line 5
    iget-object p1, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->agoraSurfaceView:Lio/agora/rtc/mediaio/AgoraSurfaceView;

    iget-boolean p2, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->mirror:Z

    invoke-virtual {p1, p2}, Lio/agora/rtc/mediaio/AgoraSurfaceView;->setMirror(Z)V

    .line 6
    iget-object p1, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->agoraSurfaceView:Lio/agora/rtc/mediaio/AgoraSurfaceView;

    invoke-virtual {p1}, Lio/agora/rtc/mediaio/AgoraSurfaceView;->onInitialize()Z

    .line 7
    iget-object p1, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->agoraSurfaceView:Lio/agora/rtc/mediaio/AgoraSurfaceView;

    invoke-virtual {p1}, Lio/agora/rtc/mediaio/AgoraSurfaceView;->onStart()Z

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->isInitialized:Z

    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->agoraSurfaceView:Lio/agora/rtc/mediaio/AgoraSurfaceView;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->isInitialized:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/agora/rtc/mediaio/AgoraSurfaceView;->onStop()V

    .line 4
    iget-object v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->agoraSurfaceView:Lio/agora/rtc/mediaio/AgoraSurfaceView;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/AgoraSurfaceView;->onDispose()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->agoraSurfaceView:Lio/agora/rtc/mediaio/AgoraSurfaceView;

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->followSourceDimension:Z

    .line 7
    iput-boolean v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->mirror:Z

    .line 8
    iput-boolean v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->applyRotation:Z

    .line 9
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->lastSourceWidth:I

    .line 10
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->lastSourceHeight:I

    .line 11
    iput-boolean v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->isInitialized:Z

    return-void
.end method

.method public setupViewUI(III)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->followSourceDimension:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->lastSourceWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->lastSourceHeight:I

    if-eq v0, p3, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->agoraSurfaceView:Lio/agora/rtc/mediaio/AgoraSurfaceView;

    new-instance v1, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder$1;-><init>(Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;III)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 3
    iput p2, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->lastSourceWidth:I

    .line 4
    iput p3, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->lastSourceHeight:I

    :cond_1
    return-void
.end method
