.class public Lio/agora/rtc/gl/EglBase10$Context;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/gl/EglBase$Context;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/gl/EglBase10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field private final eglContext:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/agora/rtc/gl/EglBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-void
.end method

.method public static synthetic access$000(Lio/agora/rtc/gl/EglBase10$Context;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/gl/EglBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method


# virtual methods
.method public getEglType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNativeEglContext()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRealEglContext()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method
