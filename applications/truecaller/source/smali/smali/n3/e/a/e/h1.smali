.class public final Ln3/e/a/e/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/j1$d;


# static fields
.field public static final a:Ln3/e/a/e/h1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln3/e/a/e/h1;

    invoke-direct {v0}, Ln3/e/a/e/h1;-><init>()V

    sput-object v0, Ln3/e/a/e/h1;->a:Ln3/e/a/e/h1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/e/b/j1/r1;Ln3/e/b/j1/j1$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/r1<",
            "*>;",
            "Ln3/e/b/j1/j1$b;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Ln3/e/b/j1/r1;->i(Ln3/e/b/j1/j1;)Ln3/e/b/j1/j1;

    move-result-object v0

    .line 2
    sget-object v1, Ln3/e/b/j1/d1;->r:Ln3/e/b/j1/d1;

    .line 3
    invoke-static {}, Ln3/e/b/j1/j1;->a()Ln3/e/b/j1/j1;

    move-result-object v2

    .line 4
    iget-object v2, v2, Ln3/e/b/j1/j1;->f:Ln3/e/b/j1/g0;

    .line 5
    iget v2, v2, Ln3/e/b/j1/g0;->c:I

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, v0, Ln3/e/b/j1/j1;->f:Ln3/e/b/j1/g0;

    .line 7
    iget v2, v1, Ln3/e/b/j1/g0;->c:I

    .line 8
    iget-object v1, v0, Ln3/e/b/j1/j1;->b:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 10
    invoke-virtual {p2, v3}, Ln3/e/b/j1/j1$b;->b(Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, v0, Ln3/e/b/j1/j1;->c:Ljava/util/List;

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 13
    invoke-virtual {p2, v3}, Ln3/e/b/j1/j1$b;->c(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v1, v0, Ln3/e/b/j1/j1;->f:Ln3/e/b/j1/g0;

    .line 15
    iget-object v1, v1, Ln3/e/b/j1/g0;->d:Ljava/util/List;

    .line 16
    iget-object v3, p2, Ln3/e/b/j1/j1$a;->b:Ln3/e/b/j1/g0$a;

    invoke-virtual {v3, v1}, Ln3/e/b/j1/g0$a;->a(Ljava/util/Collection;)V

    .line 17
    iget-object v0, v0, Ln3/e/b/j1/j1;->f:Ln3/e/b/j1/g0;

    .line 18
    iget-object v1, v0, Ln3/e/b/j1/g0;->b:Ln3/e/b/j1/j0;

    .line 19
    :cond_2
    iget-object v0, p2, Ln3/e/b/j1/j1$a;->b:Ln3/e/b/j1/g0$a;

    .line 20
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {v1}, Ln3/e/b/j1/a1;->y(Ln3/e/b/j1/j0;)Ln3/e/b/j1/a1;

    move-result-object v1

    iput-object v1, v0, Ln3/e/b/j1/g0$a;->b:Ln3/e/b/j1/z0;

    .line 22
    new-instance v0, Ln3/e/a/d/a;

    invoke-direct {v0, p1}, Ln3/e/a/d/a;-><init>(Ln3/e/b/j1/j0;)V

    .line 23
    sget-object v1, Ln3/e/a/d/a;->r:Ln3/e/b/j1/j0$a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ln3/e/b/j1/j0;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 24
    iget-object v1, p2, Ln3/e/b/j1/j1$a;->b:Ln3/e/b/j1/g0$a;

    .line 25
    iput p1, v1, Ln3/e/b/j1/g0$a;->c:I

    .line 26
    new-instance p1, Ln3/e/a/e/n1;

    invoke-direct {p1}, Ln3/e/a/e/n1;-><init>()V

    .line 27
    iget-object v1, v0, Ln3/e/a/f/i;->q:Ln3/e/b/j1/j0;

    .line 28
    sget-object v2, Ln3/e/a/d/a;->s:Ln3/e/b/j1/j0$a;

    invoke-interface {v1, v2, p1}, Ln3/e/b/j1/j0;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 29
    invoke-virtual {p2, p1}, Ln3/e/b/j1/j1$b;->b(Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    .line 30
    new-instance p1, Ln3/e/a/e/l1;

    invoke-direct {p1}, Ln3/e/a/e/l1;-><init>()V

    .line 31
    iget-object v1, v0, Ln3/e/a/f/i;->q:Ln3/e/b/j1/j0;

    .line 32
    sget-object v2, Ln3/e/a/d/a;->t:Ln3/e/b/j1/j0$a;

    invoke-interface {v1, v2, p1}, Ln3/e/b/j1/j0;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 33
    invoke-virtual {p2, p1}, Ln3/e/b/j1/j1$b;->c(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 34
    new-instance p1, Ln3/e/a/e/e1;

    invoke-direct {p1}, Ln3/e/a/e/e1;-><init>()V

    .line 35
    iget-object v1, v0, Ln3/e/a/f/i;->q:Ln3/e/b/j1/j0;

    .line 36
    sget-object v2, Ln3/e/a/d/a;->u:Ln3/e/b/j1/j0$a;

    invoke-interface {v1, v2, p1}, Ln3/e/b/j1/j0;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 37
    new-instance v1, Ln3/e/a/e/p1;

    invoke-direct {v1, p1}, Ln3/e/a/e/p1;-><init>(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 38
    iget-object p1, p2, Ln3/e/b/j1/j1$a;->b:Ln3/e/b/j1/g0$a;

    invoke-virtual {p1, v1}, Ln3/e/b/j1/g0$a;->b(Ln3/e/b/j1/q;)V

    .line 39
    iget-object p1, p2, Ln3/e/b/j1/j1$a;->f:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-static {}, Ln3/e/b/j1/a1;->x()Ln3/e/b/j1/a1;

    move-result-object p1

    .line 41
    sget-object v1, Ln3/e/a/d/a;->v:Ln3/e/b/j1/j0$a;

    .line 42
    invoke-static {}, Ln3/e/a/d/c;->d()Ln3/e/a/d/c;

    move-result-object v2

    .line 43
    iget-object v3, v0, Ln3/e/a/f/i;->q:Ln3/e/b/j1/j0;

    .line 44
    invoke-interface {v3, v1, v2}, Ln3/e/b/j1/j0;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/e/a/d/c;

    .line 45
    sget-object v3, Ln3/e/b/j1/j0$c;->c:Ln3/e/b/j1/j0$c;

    invoke-virtual {p1, v1, v3, v2}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    .line 46
    iget-object v1, p2, Ln3/e/b/j1/j1$a;->b:Ln3/e/b/j1/g0$a;

    invoke-virtual {v1, p1}, Ln3/e/b/j1/g0$a;->c(Ln3/e/b/j1/j0;)V

    .line 47
    iget-object p1, v0, Ln3/e/a/f/i;->q:Ln3/e/b/j1/j0;

    .line 48
    invoke-static {p1}, Ln3/e/a/f/i$a;->b(Ln3/e/b/j1/j0;)Ln3/e/a/f/i$a;

    move-result-object p1

    invoke-virtual {p1}, Ln3/e/a/f/i$a;->a()Ln3/e/a/f/i;

    move-result-object p1

    .line 49
    iget-object p2, p2, Ln3/e/b/j1/j1$a;->b:Ln3/e/b/j1/g0$a;

    invoke-virtual {p2, p1}, Ln3/e/b/j1/g0$a;->c(Ln3/e/b/j1/j0;)V

    return-void
.end method
