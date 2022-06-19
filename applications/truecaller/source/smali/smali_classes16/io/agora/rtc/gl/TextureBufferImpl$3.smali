.class public Lio/agora/rtc/gl/TextureBufferImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/TextureBufferImpl;->applyTransformMatrix(Landroid/graphics/Matrix;II)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/gl/TextureBufferImpl;


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/TextureBufferImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/TextureBufferImpl$3;->this$0:Lio/agora/rtc/gl/TextureBufferImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl$3;->this$0:Lio/agora/rtc/gl/TextureBufferImpl;

    invoke-virtual {v0}, Lio/agora/rtc/gl/TextureBufferImpl;->release()V

    return-void
.end method
