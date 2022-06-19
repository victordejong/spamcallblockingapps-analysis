.class public Lio/agora/rtc/video/ViETextureView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/ViETextureView;->releaseOpenGLResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/video/ViETextureView;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/ViETextureView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/video/ViETextureView$2;->this$0:Lio/agora/rtc/video/ViETextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lio/agora/rtc/video/ViETextureView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "releaseOpenGLResource, value = "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/agora/rtc/video/ViETextureView$2;->this$0:Lio/agora/rtc/video/ViETextureView;

    .line 2
    invoke-static {v2}, Lio/agora/rtc/video/ViETextureView;->access$300(Lio/agora/rtc/video/ViETextureView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/agora/rtc/video/ViETextureView$2;->this$0:Lio/agora/rtc/video/ViETextureView;

    invoke-static {v3}, Lio/agora/rtc/video/ViETextureView;->access$400(Lio/agora/rtc/video/ViETextureView;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/agora/rtc/video/ViETextureView$2;->this$0:Lio/agora/rtc/video/ViETextureView;

    invoke-static {v3}, Lio/agora/rtc/video/ViETextureView;->access$400(Lio/agora/rtc/video/ViETextureView;)[I

    move-result-object v3

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/video/ViETextureView$2;->this$0:Lio/agora/rtc/video/ViETextureView;

    invoke-static {v2}, Lio/agora/rtc/video/ViETextureView;->access$400(Lio/agora/rtc/video/ViETextureView;)[I

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/video/ViETextureView$2;->this$0:Lio/agora/rtc/video/ViETextureView;

    .line 3
    invoke-static {v2}, Lio/agora/rtc/video/ViETextureView;->access$500(Lio/agora/rtc/video/ViETextureView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureView$2;->this$0:Lio/agora/rtc/video/ViETextureView;

    invoke-static {v0}, Lio/agora/rtc/video/ViETextureView;->access$300(Lio/agora/rtc/video/ViETextureView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureView$2;->this$0:Lio/agora/rtc/video/ViETextureView;

    invoke-static {v0}, Lio/agora/rtc/video/ViETextureView;->access$300(Lio/agora/rtc/video/ViETextureView;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureView$2;->this$0:Lio/agora/rtc/video/ViETextureView;

    invoke-static {v0}, Lio/agora/rtc/video/ViETextureView;->access$400(Lio/agora/rtc/video/ViETextureView;)[I

    move-result-object v0

    aget v0, v0, v4

    if-lez v0, :cond_1

    const/4 v0, 0x3

    .line 8
    iget-object v1, p0, Lio/agora/rtc/video/ViETextureView$2;->this$0:Lio/agora/rtc/video/ViETextureView;

    invoke-static {v1}, Lio/agora/rtc/video/ViETextureView;->access$400(Lio/agora/rtc/video/ViETextureView;)[I

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 9
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureView$2;->this$0:Lio/agora/rtc/video/ViETextureView;

    invoke-static {v0}, Lio/agora/rtc/video/ViETextureView;->access$500(Lio/agora/rtc/video/ViETextureView;)I

    move-result v0

    if-lez v0, :cond_2

    .line 10
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureView$2;->this$0:Lio/agora/rtc/video/ViETextureView;

    invoke-static {v0}, Lio/agora/rtc/video/ViETextureView;->access$500(Lio/agora/rtc/video/ViETextureView;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 11
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-static {}, Lio/agora/rtc/video/ViETextureView;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glDelete error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
