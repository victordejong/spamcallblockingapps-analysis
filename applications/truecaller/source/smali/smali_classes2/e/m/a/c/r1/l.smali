.class public Le/m/a/c/r1/l;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/c/r1/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Le/m/a/c/r1/n;

    invoke-direct {p1, p0}, Le/m/a/c/r1/n;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object p1, p0, Le/m/a/c/r1/l;->a:Le/m/a/c/r1/n;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method


# virtual methods
.method public getVideoDecoderOutputBufferRenderer()Le/m/a/c/r1/m;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/r1/l;->a:Le/m/a/c/r1/n;

    return-object v0
.end method
