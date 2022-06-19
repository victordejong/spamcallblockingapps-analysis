.class public Ln3/e/b/j1/j1$b;
.super Ln3/e/b/j1/j1$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/b/j1/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/e/b/j1/j1$a;-><init>()V

    return-void
.end method

.method public static e(Ln3/e/b/j1/r1;)Ln3/e/b/j1/j1$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/r1<",
            "*>;)",
            "Ln3/e/b/j1/j1$b;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Ln3/e/b/j1/r1;->v(Ln3/e/b/j1/j1$d;)Ln3/e/b/j1/j1$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ln3/e/b/j1/j1$b;

    invoke-direct {v1}, Ln3/e/b/j1/j1$b;-><init>()V

    .line 3
    invoke-interface {v0, p0, v1}, Ln3/e/b/j1/j1$d;->a(Ln3/e/b/j1/r1;Ln3/e/b/j1/j1$b;)V

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Implementation is missing option unpacker for "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ln3/e/b/k1/f;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ln3/e/b/j1/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/j1$a;->b:Ln3/e/b/j1/g0$a;

    invoke-virtual {v0, p1}, Ln3/e/b/j1/g0$a;->b(Ln3/e/b/j1/q;)V

    .line 2
    iget-object v0, p0, Ln3/e/b/j1/j1$a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/j1$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/e/b/j1/j1$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Duplicate device state callback."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/j1$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/e/b/j1/j1$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Duplicate session state callback."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Ln3/e/b/j1/j1;
    .locals 8

    .line 1
    new-instance v7, Ln3/e/b/j1/j1;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Ln3/e/b/j1/j1$a;->a:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Ln3/e/b/j1/j1$a;->c:Ljava/util/List;

    iget-object v3, p0, Ln3/e/b/j1/j1$a;->d:Ljava/util/List;

    iget-object v4, p0, Ln3/e/b/j1/j1$a;->f:Ljava/util/List;

    iget-object v5, p0, Ln3/e/b/j1/j1$a;->e:Ljava/util/List;

    iget-object v0, p0, Ln3/e/b/j1/j1$a;->b:Ln3/e/b/j1/g0$a;

    .line 2
    invoke-virtual {v0}, Ln3/e/b/j1/g0$a;->d()Ln3/e/b/j1/g0;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ln3/e/b/j1/j1;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ln3/e/b/j1/g0;)V

    return-object v7
.end method
