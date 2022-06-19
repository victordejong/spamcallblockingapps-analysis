.class public final Ln3/e/a/e/k2/o/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/a/e/k2/o/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/a/e/k2/o/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/hardware/camera2/params/SessionConfiguration;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/e/a/e/k2/o/b;",
            ">;"
        }
    .end annotation
.end field


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
    new-instance v0, Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-static {p2}, Ln3/e/a/e/k2/o/g;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Ln3/e/a/e/k2/o/g$a;->a:Landroid/hardware/camera2/params/SessionConfiguration;

    .line 4
    invoke-virtual {v0}, Landroid/hardware/camera2/params/SessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/camera2/params/OutputConfiguration;

    const/4 p4, 0x0

    if-nez p3, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 8
    new-instance v0, Ln3/e/a/e/k2/o/e;

    invoke-direct {v0, p3}, Ln3/e/a/e/k2/o/e;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 9
    new-instance v0, Ln3/e/a/e/k2/o/d;

    new-instance v1, Ln3/e/a/e/k2/o/d$a;

    invoke-direct {v1, p3}, Ln3/e/a/e/k2/o/d$a;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-direct {v0, v1}, Ln3/e/a/e/k2/o/d;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    .line 10
    new-instance v0, Ln3/e/a/e/k2/o/c;

    new-instance v1, Ln3/e/a/e/k2/o/c$a;

    invoke-direct {v1, p3}, Ln3/e/a/e/k2/o/c$a;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-direct {v0, v1}, Ln3/e/a/e/k2/o/c;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move-object v0, p4

    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    new-instance p4, Ln3/e/a/e/k2/o/b;

    invoke-direct {p4, v0}, Ln3/e/a/e/k2/o/b;-><init>(Ln3/e/a/e/k2/o/b$a;)V

    .line 12
    :goto_2
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_5
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ln3/e/a/e/k2/o/g$a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ln3/e/a/e/k2/o/a;
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/o/g$a;->a:Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/SessionConfiguration;->getInputConfiguration()Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ln3/e/a/e/k2/o/a;

    new-instance v2, Ln3/e/a/e/k2/o/a$a;

    invoke-direct {v2, v0}, Ln3/e/a/e/k2/o/a$a;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Ln3/e/a/e/k2/o/a;-><init>(Ln3/e/a/e/k2/o/a$b;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public b()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/o/g$a;->a:Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/SessionConfiguration;->getStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

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
    iget-object v0, p0, Ln3/e/a/e/k2/o/g$a;->b:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/o/g$a;->a:Landroid/hardware/camera2/params/SessionConfiguration;

    return-object v0
.end method

.method public e()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/o/g$a;->a:Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/SessionConfiguration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ln3/e/a/e/k2/o/g$a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/e/a/e/k2/o/g$a;->a:Landroid/hardware/camera2/params/SessionConfiguration;

    check-cast p1, Ln3/e/a/e/k2/o/g$a;

    iget-object p1, p1, Ln3/e/a/e/k2/o/g$a;->a:Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/o/g$a;->a:Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/SessionConfiguration;->getSessionType()I

    move-result v0

    return v0
.end method

.method public g(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/o/g$a;->a:Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/o/g$a;->a:Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/SessionConfiguration;->hashCode()I

    move-result v0

    return v0
.end method
