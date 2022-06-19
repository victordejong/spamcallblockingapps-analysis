.class public final synthetic Ln3/e/a/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/a/e/z0$c;


# instance fields
.field public final synthetic a:Ln3/e/a/f/h;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/f/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/f/c;->a:Ln3/e/a/f/h;

    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 3

    iget-object v0, p0, Ln3/e/a/f/c;->a:Ln3/e/a/f/h;

    .line 1
    iget-object v1, v0, Ln3/e/a/f/h;->g:Ln3/h/a/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v1, p1, Ln3/e/b/j1/o1;

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Ln3/e/b/j1/o1;

    .line 5
    iget-object p1, p1, Ln3/e/b/j1/o1;->a:Ljava/util/Map;

    const-string v1, "Camera2CameraControl"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 6
    iget-object v1, v0, Ln3/e/a/f/h;->g:Ln3/h/a/b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, v0, Ln3/e/a/f/h;->g:Ln3/h/a/b;

    .line 8
    iput-object v2, v0, Ln3/e/a/f/h;->g:Ln3/h/a/b;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1, v2}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
