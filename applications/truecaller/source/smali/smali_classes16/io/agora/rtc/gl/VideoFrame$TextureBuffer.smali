.class public interface abstract Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/gl/VideoFrame$Buffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/gl/VideoFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TextureBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TEXBUF"


# virtual methods
.method public abstract flip(Z)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
.end method

.method public abstract getEglBaseContext()Lio/agora/rtc/gl/EglBase$Context;
.end method

.method public abstract getEglType()I
.end method

.method public abstract getGlTransformMatrix()[F
.end method

.method public abstract getNativeBuffer()J
.end method

.method public abstract getNativeEglContext()J
.end method

.method public abstract getRealEglContext()Ljava/lang/Object;
.end method

.method public abstract getSequence()I
.end method

.method public abstract getTextureId()I
.end method

.method public abstract getTextureType()I
.end method

.method public abstract getToI420Handler()Landroid/os/Handler;
.end method

.method public abstract getTransformMatrix()Landroid/graphics/Matrix;
.end method

.method public abstract getType()Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;
.end method

.method public abstract getYuvConverter()Lio/agora/rtc/gl/YuvConverter;
.end method

.method public abstract infoString()Ljava/lang/String;
.end method

.method public abstract isNativeBufferSupported()Z
.end method

.method public abstract isValidNativeBuffer()Z
.end method

.method public abstract rotate(I)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
.end method

.method public abstract toAGraphicBufferEx()Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
.end method

.method public abstract toTextureBuffer()Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
.end method
