.class public Lio/agora/rtc/video/AgoraVideoFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BUFFER_TYPE_ARRAY:I = 0x2

.field public static final BUFFER_TYPE_BUFFER:I = 0x1

.field public static final BUFFER_TYPE_NONE:I = -0x1

.field public static final BUFFER_TYPE_TEXTURE:I = 0x3

.field public static final FORMAT_ARGB:I = 0x7

.field public static final FORMAT_BGRA:I = 0x2

.field public static final FORMAT_I420:I = 0x1

.field public static final FORMAT_I422:I = 0x10

.field public static final FORMAT_IMC2:I = 0x5

.field public static final FORMAT_NONE:I = -0x1

.field public static final FORMAT_NV12:I = 0x8

.field public static final FORMAT_NV21:I = 0x3

.field public static final FORMAT_RGBA:I = 0x4

.field public static final FORMAT_TEXTURE_2D:I = 0xa

.field public static final FORMAT_TEXTURE_OES:I = 0xb


# instance fields
.field public buf:[B

.field public cropBottom:I

.field public cropLeft:I

.field public cropRight:I

.field public cropTop:I

.field public eglContext11:Ljavax/microedition/khronos/egl/EGLContext;

.field public eglContext14:Landroid/opengl/EGLContext;

.field public format:I

.field public height:I

.field public rotation:I

.field public stride:I

.field public syncMode:Z

.field public textureID:I

.field public timeStamp:J

.field public transform:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->format:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->timeStamp:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->stride:I

    .line 5
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->height:I

    .line 6
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->textureID:I

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lio/agora/rtc/video/AgoraVideoFrame;->syncMode:Z

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lio/agora/rtc/video/AgoraVideoFrame;->transform:[F

    .line 9
    iput-object v1, p0, Lio/agora/rtc/video/AgoraVideoFrame;->eglContext11:Ljavax/microedition/khronos/egl/EGLContext;

    .line 10
    iput-object v1, p0, Lio/agora/rtc/video/AgoraVideoFrame;->eglContext14:Landroid/opengl/EGLContext;

    .line 11
    iput-object v1, p0, Lio/agora/rtc/video/AgoraVideoFrame;->buf:[B

    .line 12
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->cropLeft:I

    .line 13
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->cropTop:I

    .line 14
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->cropRight:I

    .line 15
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->cropBottom:I

    .line 16
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->rotation:I

    return-void
.end method
