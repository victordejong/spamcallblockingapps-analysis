.class public Lio/agora/rtc/gl/SurfaceTextureHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/SurfaceTextureHelper;-><init>(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

.field public final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/SurfaceTextureHelper;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    iput-object p2, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$3;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->access$302(Lio/agora/rtc/gl/SurfaceTextureHelper;Z)Z

    .line 2
    iget-object p1, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-static {p1}, Lio/agora/rtc/gl/SurfaceTextureHelper;->access$500(Lio/agora/rtc/gl/SurfaceTextureHelper;)V

    return-void
.end method
