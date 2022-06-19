.class public Lio/agora/rtc/gl/EglRenderer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/EglRenderer;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/gl/EglRenderer;


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/EglRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$700(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$700(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    move-result-object v0

    invoke-interface {v0}, Lio/agora/rtc/gl/RendererCommon$GlDrawer;->release()V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v0, v1}, Lio/agora/rtc/gl/EglRenderer;->access$702(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/RendererCommon$GlDrawer;)Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$800(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/VideoFrameDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/rtc/gl/VideoFrameDrawer;->release()V

    .line 5
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    const-string v2, "eglBase detach and release."

    invoke-static {v0, v2}, Lio/agora/rtc/gl/EglRenderer;->access$600(Lio/agora/rtc/gl/EglRenderer;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->detachCurrent()V

    .line 8
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->release()V

    .line 9
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v0, v1}, Lio/agora/rtc/gl/EglRenderer;->access$002(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/EglBase;)Lio/agora/rtc/gl/EglBase;

    :cond_1
    return-void
.end method
