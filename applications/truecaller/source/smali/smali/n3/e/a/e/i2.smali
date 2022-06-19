.class public final Ln3/e/a/e/i2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/a/e/i2$b;
    }
.end annotation


# instance fields
.field public final a:Ln3/e/a/e/z0;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ln3/e/a/e/j2;

.field public final d:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Ln3/e/b/i1;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ln3/e/a/e/i2$b;

.field public f:Z

.field public g:Ln3/e/a/e/z0$c;


# direct methods
.method public constructor <init>(Ln3/e/a/e/z0;Ln3/e/a/e/k2/e;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/e/a/e/i2;->f:Z

    .line 3
    new-instance v0, Ln3/e/a/e/i2$a;

    invoke-direct {v0, p0}, Ln3/e/a/e/i2$a;-><init>(Ln3/e/a/e/i2;)V

    iput-object v0, p0, Ln3/e/a/e/i2;->g:Ln3/e/a/e/z0$c;

    .line 4
    iput-object p1, p0, Ln3/e/a/e/i2;->a:Ln3/e/a/e/z0;

    .line 5
    iput-object p3, p0, Ln3/e/a/e/i2;->b:Ljava/util/concurrent/Executor;

    .line 6
    invoke-static {p2}, Ln3/e/a/e/i2;->a(Ln3/e/a/e/k2/e;)Ln3/e/a/e/i2$b;

    move-result-object p2

    iput-object p2, p0, Ln3/e/a/e/i2;->e:Ln3/e/a/e/i2$b;

    .line 7
    new-instance p3, Ln3/e/a/e/j2;

    invoke-interface {p2}, Ln3/e/a/e/i2$b;->d()F

    move-result v0

    invoke-interface {p2}, Ln3/e/a/e/i2$b;->c()F

    move-result p2

    invoke-direct {p3, v0, p2}, Ln3/e/a/e/j2;-><init>(FF)V

    iput-object p3, p0, Ln3/e/a/e/i2;->c:Ln3/e/a/e/j2;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {p3, p2}, Ln3/e/a/e/j2;->b(F)V

    .line 9
    new-instance p2, Ln3/v/k0;

    invoke-static {p3}, Ln3/e/b/k1/d;->b(Ln3/e/b/i1;)Ln3/e/b/i1;

    move-result-object p3

    invoke-direct {p2, p3}, Ln3/v/k0;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ln3/e/a/e/i2;->d:Ln3/v/k0;

    .line 10
    iget-object p2, p0, Ln3/e/a/e/i2;->g:Ln3/e/a/e/z0$c;

    invoke-virtual {p1, p2}, Ln3/e/a/e/z0;->h(Ln3/e/a/e/z0$c;)V

    return-void
.end method

.method public static a(Ln3/e/a/e/k2/e;)Ln3/e/a/e/i2$b;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ln3/e/a/e/w0;

    invoke-direct {v0, p0}, Ln3/e/a/e/w0;-><init>(Ln3/e/a/e/k2/e;)V

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Ln3/e/a/e/t1;

    invoke-direct {v0, p0}, Ln3/e/a/e/t1;-><init>(Ln3/e/a/e/k2/e;)V

    return-object v0
.end method


# virtual methods
.method public final b(Ln3/e/b/i1;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Ln3/e/a/e/i2;->d:Ln3/v/k0;

    invoke-virtual {v0, p1}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/e/a/e/i2;->d:Ln3/v/k0;

    invoke-virtual {v0, p1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
