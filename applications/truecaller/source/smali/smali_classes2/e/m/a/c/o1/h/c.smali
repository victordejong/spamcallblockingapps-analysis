.class public final synthetic Le/m/a/c/o1/h/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/c/o1/h/h;

.field public final synthetic b:Landroid/graphics/SurfaceTexture;


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/o1/h/h;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/o1/h/c;->a:Le/m/a/c/o1/h/h;

    iput-object p2, p0, Le/m/a/c/o1/h/c;->b:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Le/m/a/c/o1/h/c;->a:Le/m/a/c/o1/h/h;

    iget-object v1, p0, Le/m/a/c/o1/h/c;->b:Landroid/graphics/SurfaceTexture;

    .line 1
    iget-object v2, v0, Le/m/a/c/o1/h/h;->g:Landroid/graphics/SurfaceTexture;

    .line 2
    iget-object v3, v0, Le/m/a/c/o1/h/h;->h:Landroid/view/Surface;

    .line 3
    iput-object v1, v0, Le/m/a/c/o1/h/h;->g:Landroid/graphics/SurfaceTexture;

    .line 4
    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v4, v0, Le/m/a/c/o1/h/h;->h:Landroid/view/Surface;

    .line 5
    iget-object v0, v0, Le/m/a/c/o1/h/h;->i:Le/m/a/c/q0$e;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, v4}, Le/m/a/c/q0$e;->setVideoSurface(Landroid/view/Surface;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_1
    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    :cond_2
    return-void
.end method
