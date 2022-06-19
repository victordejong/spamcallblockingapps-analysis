.class public Ls3/b/a/f/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public a:Landroid/opengl/EGLDisplay;

.field public b:Landroid/opengl/EGLContext;

.field public c:Landroid/opengl/EGLSurface;

.field public d:Landroid/graphics/SurfaceTexture;

.field public e:Landroid/view/Surface;

.field public f:Ljava/lang/Object;

.field public g:Z

.field public h:Ls3/b/a/f/j;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Ls3/b/a/f/g;->a:Landroid/opengl/EGLDisplay;

    .line 3
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Ls3/b/a/f/g;->b:Landroid/opengl/EGLContext;

    .line 4
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Ls3/b/a/f/g;->c:Landroid/opengl/EGLSurface;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ls3/b/a/f/g;->f:Ljava/lang/Object;

    .line 6
    new-instance v0, Ls3/b/a/f/j;

    invoke-direct {v0}, Ls3/b/a/f/j;-><init>()V

    iput-object v0, p0, Ls3/b/a/f/g;->h:Ls3/b/a/f/j;

    const v1, 0x8b31

    const-string v2, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 7
    invoke-virtual {v0, v1, v2}, Ls3/b/a/f/j;->b(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const v4, 0x8b30

    const-string v5, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 8
    invoke-virtual {v0, v4, v5}, Ls3/b/a/f/j;->b(ILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v5

    const-string v6, "glCreateProgram"

    .line 10
    invoke-virtual {v0, v6}, Ls3/b/a/f/j;->a(Ljava/lang/String;)V

    .line 11
    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v1, "glAttachShader"

    .line 12
    invoke-virtual {v0, v1}, Ls3/b/a/f/j;->a(Ljava/lang/String;)V

    .line 13
    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 14
    invoke-virtual {v0, v1}, Ls3/b/a/f/j;->a(Ljava/lang/String;)V

    .line 15
    invoke-static {v5}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v1, v2, [I

    const v4, 0x8b82

    .line 16
    invoke-static {v5, v4, v1, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 17
    aget v1, v1, v3

    if-eq v1, v2, :cond_2

    .line 18
    invoke-static {v5}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    .line 19
    invoke-static {v5}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :goto_0
    move v5, v3

    .line 20
    :cond_2
    iput v5, v0, Ls3/b/a/f/j;->e:I

    if-eqz v5, :cond_7

    const-string v1, "aPosition"

    .line 21
    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Ls3/b/a/f/j;->i:I

    const-string v1, "glGetAttribLocation aPosition"

    .line 22
    invoke-virtual {v0, v1}, Ls3/b/a/f/j;->a(Ljava/lang/String;)V

    .line 23
    iget v1, v0, Ls3/b/a/f/j;->i:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_6

    .line 24
    iget v1, v0, Ls3/b/a/f/j;->e:I

    const-string v5, "aTextureCoord"

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Ls3/b/a/f/j;->j:I

    const-string v1, "glGetAttribLocation aTextureCoord"

    .line 25
    invoke-virtual {v0, v1}, Ls3/b/a/f/j;->a(Ljava/lang/String;)V

    .line 26
    iget v1, v0, Ls3/b/a/f/j;->j:I

    if-eq v1, v4, :cond_5

    .line 27
    iget v1, v0, Ls3/b/a/f/j;->e:I

    const-string v5, "uMVPMatrix"

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Ls3/b/a/f/j;->g:I

    const-string v1, "glGetUniformLocation uMVPMatrix"

    .line 28
    invoke-virtual {v0, v1}, Ls3/b/a/f/j;->a(Ljava/lang/String;)V

    .line 29
    iget v1, v0, Ls3/b/a/f/j;->g:I

    if-eq v1, v4, :cond_4

    .line 30
    iget v1, v0, Ls3/b/a/f/j;->e:I

    const-string v5, "uSTMatrix"

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Ls3/b/a/f/j;->h:I

    const-string v1, "glGetUniformLocation uSTMatrix"

    .line 31
    invoke-virtual {v0, v1}, Ls3/b/a/f/j;->a(Ljava/lang/String;)V

    .line 32
    iget v1, v0, Ls3/b/a/f/j;->h:I

    if-eq v1, v4, :cond_3

    new-array v1, v2, [I

    .line 33
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 34
    aget v1, v1, v3

    iput v1, v0, Ls3/b/a/f/j;->f:I

    const v2, 0x8d65

    .line 35
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v1, "glBindTexture mTextureID"

    .line 36
    invoke-virtual {v0, v1}, Ls3/b/a/f/j;->a(Ljava/lang/String;)V

    const/16 v1, 0x2801

    const v3, 0x46180400    # 9729.0f

    .line 37
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    .line 38
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    const v3, 0x812f

    .line 39
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 40
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v1, "glTexParameter"

    .line 41
    invoke-virtual {v0, v1}, Ls3/b/a/f/j;->a(Ljava/lang/String;)V

    .line 42
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Ls3/b/a/f/g;->h:Ls3/b/a/f/j;

    .line 43
    iget v1, v1, Ls3/b/a/f/j;->f:I

    .line 44
    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Ls3/b/a/f/g;->d:Landroid/graphics/SurfaceTexture;

    .line 45
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 46
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Ls3/b/a/f/g;->d:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Ls3/b/a/f/g;->e:Landroid/view/Surface;

    return-void

    .line 47
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uSTMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ls3/b/a/f/g;->f:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Ls3/b/a/f/g;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ls3/b/a/f/g;->g:Z

    .line 4
    iget-object v0, p0, Ls3/b/a/f/g;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit p1

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
