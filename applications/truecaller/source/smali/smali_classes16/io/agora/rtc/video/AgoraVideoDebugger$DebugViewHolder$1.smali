.class public Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->setupViewUI(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;

.field public final synthetic val$srcHeight:I

.field public final synthetic val$srcRotation:I

.field public final synthetic val$srcWidth:I


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder$1;->this$0:Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;

    iput p2, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder$1;->val$srcRotation:I

    iput p3, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder$1;->val$srcHeight:I

    iput p4, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder$1;->val$srcWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder$1;->this$0:Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;

    iget-boolean v1, v0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->applyRotation:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder$1;->val$srcRotation:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v0, v0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->agoraSurfaceView:Lio/agora/rtc/mediaio/AgoraSurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v1, :cond_2

    iget v2, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder$1;->val$srcHeight:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder$1;->val$srcWidth:I

    :goto_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder$1;->this$0:Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;

    iget-object v0, v0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;->agoraSurfaceView:Lio/agora/rtc/mediaio/AgoraSurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v1, :cond_3

    iget v1, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder$1;->val$srcWidth:I

    goto :goto_2

    :cond_3
    iget v1, p0, Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder$1;->val$srcHeight:I

    :goto_2
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
