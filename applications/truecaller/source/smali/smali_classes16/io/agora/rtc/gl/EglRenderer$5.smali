.class public Lio/agora/rtc/gl/EglRenderer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/EglRenderer;->addFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;FLio/agora/rtc/gl/RendererCommon$GlDrawer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/gl/EglRenderer;

.field public final synthetic val$applyFpsReduction:Z

.field public final synthetic val$drawerParam:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

.field public final synthetic val$listener:Lio/agora/rtc/gl/EglRenderer$FrameListener;

.field public final synthetic val$scale:F


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/RendererCommon$GlDrawer;Lio/agora/rtc/gl/EglRenderer$FrameListener;FZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer$5;->this$0:Lio/agora/rtc/gl/EglRenderer;

    iput-object p2, p0, Lio/agora/rtc/gl/EglRenderer$5;->val$drawerParam:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    iput-object p3, p0, Lio/agora/rtc/gl/EglRenderer$5;->val$listener:Lio/agora/rtc/gl/EglRenderer$FrameListener;

    iput p4, p0, Lio/agora/rtc/gl/EglRenderer$5;->val$scale:F

    iput-boolean p5, p0, Lio/agora/rtc/gl/EglRenderer$5;->val$applyFpsReduction:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$5;->val$drawerParam:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$5;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$700(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    move-result-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer$5;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v1}, Lio/agora/rtc/gl/EglRenderer;->access$900(Lio/agora/rtc/gl/EglRenderer;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lio/agora/rtc/gl/EglRenderer$FrameListenerAndParams;

    iget-object v3, p0, Lio/agora/rtc/gl/EglRenderer$5;->val$listener:Lio/agora/rtc/gl/EglRenderer$FrameListener;

    iget v4, p0, Lio/agora/rtc/gl/EglRenderer$5;->val$scale:F

    iget-boolean v5, p0, Lio/agora/rtc/gl/EglRenderer$5;->val$applyFpsReduction:Z

    invoke-direct {v2, v3, v4, v0, v5}, Lio/agora/rtc/gl/EglRenderer$FrameListenerAndParams;-><init>(Lio/agora/rtc/gl/EglRenderer$FrameListener;FLio/agora/rtc/gl/RendererCommon$GlDrawer;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
