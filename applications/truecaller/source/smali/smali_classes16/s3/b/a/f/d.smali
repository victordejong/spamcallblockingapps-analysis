.class public Ls3/b/a/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/opengl/EGLDisplay;

.field public b:Landroid/opengl/EGLContext;

.field public c:Landroid/opengl/EGLSurface;

.field public d:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Ls3/b/a/f/d;->a:Landroid/opengl/EGLDisplay;

    .line 3
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Ls3/b/a/f/d;->b:Landroid/opengl/EGLContext;

    .line 4
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Ls3/b/a/f/d;->c:Landroid/opengl/EGLSurface;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Ls3/b/a/f/d;->d:Landroid/view/Surface;

    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Ls3/b/a/f/d;->a:Landroid/opengl/EGLDisplay;

    .line 8
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    .line 9
    invoke-static {v0, v1, p1, v1, v2}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xb

    new-array v4, v0, [I

    .line 10
    fill-array-data v4, :array_0

    new-array v0, v2, [Landroid/opengl/EGLConfig;

    new-array v9, v2, [I

    .line 11
    iget-object v3, p0, Ls3/b/a/f/d;->a:Landroid/opengl/EGLDisplay;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    move-object v6, v0

    invoke-static/range {v3 .. v10}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 12
    fill-array-data v1, :array_1

    .line 13
    iget-object v3, p0, Ls3/b/a/f/d;->a:Landroid/opengl/EGLDisplay;

    aget-object v4, v0, p1

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v4, v5, v1, p1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Ls3/b/a/f/d;->b:Landroid/opengl/EGLContext;

    const-string v1, "eglCreateContext"

    .line 14
    invoke-virtual {p0, v1}, Ls3/b/a/f/d;->a(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Ls3/b/a/f/d;->b:Landroid/opengl/EGLContext;

    if-eqz v1, :cond_1

    new-array v1, v2, [I

    const/16 v2, 0x3038

    aput v2, v1, p1

    .line 16
    iget-object v2, p0, Ls3/b/a/f/d;->a:Landroid/opengl/EGLDisplay;

    aget-object v0, v0, p1

    iget-object v3, p0, Ls3/b/a/f/d;->d:Landroid/view/Surface;

    invoke-static {v2, v0, v3, v1, p1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Ls3/b/a/f/d;->c:Landroid/opengl/EGLSurface;

    const-string p1, "eglCreateWindowSurface"

    .line 17
    invoke-virtual {p0, p1}, Ls3/b/a/f/d;->a(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Ls3/b/a/f/d;->c:Landroid/opengl/EGLSurface;

    if-eqz p1, :cond_0

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "surface was null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "null context"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Ls3/b/a/f/d;->a:Landroid/opengl/EGLDisplay;

    .line 23
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unable to initialize EGL14"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unable to get EGL14 display"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, ": EGL error: 0x"

    invoke-static {p1, v2}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0, p1}, Le/d/c/a/a;->S1(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
