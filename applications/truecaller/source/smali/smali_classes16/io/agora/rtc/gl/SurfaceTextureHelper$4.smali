.class public Lio/agora/rtc/gl/SurfaceTextureHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/SurfaceTextureHelper;->stopListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$4;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$4;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/agora/rtc/gl/SurfaceTextureHelper;->access$202(Lio/agora/rtc/gl/SurfaceTextureHelper;Lio/agora/rtc/gl/SurfaceTextureHelper$OnTextureFrameAvailableListener;)Lio/agora/rtc/gl/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$4;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-static {v0, v1}, Lio/agora/rtc/gl/SurfaceTextureHelper;->access$102(Lio/agora/rtc/gl/SurfaceTextureHelper;Lio/agora/rtc/gl/SurfaceTextureHelper$OnTextureFrameAvailableListener;)Lio/agora/rtc/gl/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    return-void
.end method
