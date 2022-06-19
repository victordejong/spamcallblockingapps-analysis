.class public Ln3/e/a/e/h2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/a/e/z0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/a/e/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/e/a/e/h2;


# direct methods
.method public constructor <init>(Ln3/e/a/e/h2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/a/e/h2$a;->a:Ln3/e/a/e/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/h2$a;->a:Ln3/e/a/e/h2;

    iget-object v0, v0, Ln3/e/a/e/h2;->f:Ln3/h/a/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 3
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 5
    :goto_0
    iget-object v0, p0, Ln3/e/a/e/h2$a;->a:Ln3/e/a/e/h2;

    iget-boolean v2, v0, Ln3/e/a/e/h2;->g:Z

    if-ne p1, v2, :cond_1

    .line 6
    iget-object p1, v0, Ln3/e/a/e/h2;->f:Ln3/h/a/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Ln3/e/a/e/h2$a;->a:Ln3/e/a/e/h2;

    iput-object v0, p1, Ln3/e/a/e/h2;->f:Ln3/h/a/b;

    :cond_1
    return v1
.end method
