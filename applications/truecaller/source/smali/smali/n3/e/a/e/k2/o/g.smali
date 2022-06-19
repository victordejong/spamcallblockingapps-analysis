.class public final Ln3/e/a/e/k2/o/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/a/e/k2/o/g$a;,
        Ln3/e/a/e/k2/o/g$b;,
        Ln3/e/a/e/k2/o/g$c;
    }
.end annotation


# instance fields
.field public final a:Ln3/e/a/e/k2/o/g$c;


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ln3/e/a/e/k2/o/b;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 3
    new-instance v0, Ln3/e/a/e/k2/o/g$b;

    invoke-direct {v0, p1, p2, p3, p4}, Ln3/e/a/e/k2/o/g$b;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    iput-object v0, p0, Ln3/e/a/e/k2/o/g;->a:Ln3/e/a/e/k2/o/g$c;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ln3/e/a/e/k2/o/g$a;

    invoke-direct {v0, p1, p2, p3, p4}, Ln3/e/a/e/k2/o/g$a;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    iput-object v0, p0, Ln3/e/a/e/k2/o/g;->a:Ln3/e/a/e/k2/o/g$c;

    :goto_0
    return-void
.end method

.method public static f(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/e/a/e/k2/o/b;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/a/e/k2/o/b;

    .line 3
    iget-object v1, v1, Ln3/e/a/e/k2/o/b;->a:Ln3/e/a/e/k2/o/b$a;

    invoke-interface {v1}, Ln3/e/a/e/k2/o/b$a;->b()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/o/g;->a:Ln3/e/a/e/k2/o/g$c;

    invoke-interface {v0}, Ln3/e/a/e/k2/o/g$c;->e()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public b()Ln3/e/a/e/k2/o/a;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/o/g;->a:Ln3/e/a/e/k2/o/g$c;

    invoke-interface {v0}, Ln3/e/a/e/k2/o/g$c;->a()Ln3/e/a/e/k2/o/a;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ln3/e/a/e/k2/o/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/o/g;->a:Ln3/e/a/e/k2/o/g$c;

    invoke-interface {v0}, Ln3/e/a/e/k2/o/g$c;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/o/g;->a:Ln3/e/a/e/k2/o/g$c;

    invoke-interface {v0}, Ln3/e/a/e/k2/o/g$c;->f()I

    move-result v0

    return v0
.end method

.method public e()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/o/g;->a:Ln3/e/a/e/k2/o/g$c;

    invoke-interface {v0}, Ln3/e/a/e/k2/o/g$c;->b()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ln3/e/a/e/k2/o/g;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/e/a/e/k2/o/g;->a:Ln3/e/a/e/k2/o/g$c;

    check-cast p1, Ln3/e/a/e/k2/o/g;

    iget-object p1, p1, Ln3/e/a/e/k2/o/g;->a:Ln3/e/a/e/k2/o/g$c;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/o/g;->a:Ln3/e/a/e/k2/o/g$c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
