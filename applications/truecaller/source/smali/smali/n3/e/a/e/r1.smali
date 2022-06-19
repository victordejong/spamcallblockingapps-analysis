.class public final Ln3/e/a/e/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/a/e/r1$d;,
        Ln3/e/a/e/r1$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/e/b/j1/g0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field public final d:Ln3/e/a/e/r1$d;

.field public e:Ln3/e/a/e/f2;

.field public f:Ln3/e/a/e/b2;

.field public volatile g:Ln3/e/b/j1/j1;

.field public volatile h:Ln3/e/b/j1/j0;

.field public i:Ln3/e/a/d/c;

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ln3/e/b/j1/k0;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/e/b/j1/k0;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ln3/e/a/e/r1$c;

.field public m:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ln3/h/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h/a/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ln3/e/a/e/k2/q/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln3/e/a/e/r1;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/e/a/e/r1;->b:Ljava/util/List;

    .line 4
    new-instance v0, Ln3/e/a/e/r1$a;

    invoke-direct {v0, p0}, Ln3/e/a/e/r1$a;-><init>(Ln3/e/a/e/r1;)V

    iput-object v0, p0, Ln3/e/a/e/r1;->c:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 5
    sget-object v0, Ln3/e/b/j1/d1;->r:Ln3/e/b/j1/d1;

    .line 6
    iput-object v0, p0, Ln3/e/a/e/r1;->h:Ln3/e/b/j1/j0;

    .line 7
    invoke-static {}, Ln3/e/a/d/c;->d()Ln3/e/a/d/c;

    move-result-object v0

    iput-object v0, p0, Ln3/e/a/e/r1;->i:Ln3/e/a/d/c;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln3/e/a/e/r1;->j:Ljava/util/Map;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ln3/e/a/e/r1;->k:Ljava/util/List;

    .line 10
    sget-object v0, Ln3/e/a/e/r1$c;->a:Ln3/e/a/e/r1$c;

    iput-object v0, p0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    .line 11
    new-instance v0, Ln3/e/a/e/k2/q/e;

    invoke-direct {v0}, Ln3/e/a/e/k2/q/e;-><init>()V

    iput-object v0, p0, Ln3/e/a/e/r1;->o:Ln3/e/a/e/k2/q/e;

    .line 12
    sget-object v0, Ln3/e/a/e/r1$c;->b:Ln3/e/a/e/r1$c;

    iput-object v0, p0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    .line 13
    new-instance v0, Ln3/e/a/e/r1$d;

    invoke-direct {v0, p0}, Ln3/e/a/e/r1$d;-><init>(Ln3/e/a/e/r1;)V

    iput-object v0, p0, Ln3/e/a/e/r1;->d:Ln3/e/a/e/r1$d;

    return-void
.end method

.method public static g(Ljava/util/List;)Ln3/e/b/j1/j0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/e/b/j1/g0;",
            ">;)",
            "Ln3/e/b/j1/j0;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ln3/e/b/j1/a1;->x()Ln3/e/b/j1/a1;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/j1/g0;

    .line 3
    iget-object v1, v1, Ln3/e/b/j1/g0;->b:Ln3/e/b/j1/j0;

    .line 4
    invoke-interface {v1}, Ln3/e/b/j1/j0;->d()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/e/b/j1/j0$a;

    const/4 v4, 0x0

    .line 5
    invoke-interface {v1, v3, v4}, Ln3/e/b/j1/j0;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 6
    invoke-virtual {v0, v3}, Ln3/e/b/j1/d1;->c(Ln3/e/b/j1/j0$a;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7
    invoke-virtual {v0, v3, v4}, Ln3/e/b/j1/d1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 8
    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "Detect conflicting option "

    .line 9
    invoke-static {v7}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 10
    invoke-virtual {v3}, Ln3/e/b/j1/j0$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "CaptureSession"

    .line 11
    invoke-static {v5, v3, v4}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_2
    sget-object v4, Ln3/e/b/j1/j0$c;->c:Ln3/e/b/j1/j0$c;

    invoke-virtual {v0, v3, v4, v5}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final varargs a(Ljava/util/List;[Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/e/b/j1/q;",
            ">;[",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/j1/q;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {v1, v2}, Ln3/e/a/e/q1;->a(Ln3/e/b/j1/q;Ljava/util/List;)V

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    goto :goto_1

    .line 8
    :cond_1
    new-instance v1, Ln3/e/a/e/d1;

    invoke-direct {v1, v2}, Ln3/e/a/e/d1;-><init>(Ljava/util/List;)V

    .line 9
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 11
    new-instance p1, Ln3/e/a/e/d1;

    invoke-direct {p1, v0}, Ln3/e/a/e/d1;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    sget-object v1, Ln3/e/a/e/r1$c;->h:Ln3/e/a/e/r1$c;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string v0, "CaptureSession"

    const-string v1, "Skipping finishClose due to being state RELEASED."

    .line 2
    invoke-static {v0, v1, v2}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object v1, p0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    .line 4
    iput-object v2, p0, Ln3/e/a/e/r1;->f:Ln3/e/a/e/b2;

    .line 5
    iget-object v0, p0, Ln3/e/a/e/r1;->n:Ln3/h/a/b;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    .line 7
    iput-object v2, p0, Ln3/e/a/e/r1;->n:Ln3/h/a/b;

    :cond_1
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/e/b/j1/g0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CaptureSession"

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ln3/e/a/e/j1;

    invoke-direct {v2}, Ln3/e/a/e/j1;-><init>()V

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "Issuing capture request."

    .line 4
    invoke-static {v0, v4, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/e/b/j1/g0;

    .line 6
    invoke-virtual {v6}, Ln3/e/b/j1/g0;->a()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v6, "Skipping issuing empty capture request."

    .line 7
    invoke-static {v0, v6, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v6}, Ln3/e/b/j1/g0;->a()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ln3/e/b/j1/k0;

    .line 9
    iget-object v11, p0, Ln3/e/a/e/r1;->j:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping capture request with invalid surface: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-static {v0, v9, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v9, v4

    goto :goto_1

    :cond_3
    move v9, v8

    :goto_1
    if-nez v9, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    iget v9, v6, Ln3/e/b/j1/g0;->c:I

    if-ne v9, v7, :cond_5

    move v5, v8

    .line 13
    :cond_5
    new-instance v7, Ln3/e/b/j1/g0$a;

    invoke-direct {v7, v6}, Ln3/e/b/j1/g0$a;-><init>(Ln3/e/b/j1/g0;)V

    .line 14
    iget-object v8, p0, Ln3/e/a/e/r1;->g:Ln3/e/b/j1/j1;

    if-eqz v8, :cond_6

    .line 15
    iget-object v8, p0, Ln3/e/a/e/r1;->g:Ln3/e/b/j1/j1;

    .line 16
    iget-object v8, v8, Ln3/e/b/j1/j1;->f:Ln3/e/b/j1/g0;

    .line 17
    iget-object v8, v8, Ln3/e/b/j1/g0;->b:Ln3/e/b/j1/j0;

    .line 18
    invoke-virtual {v7, v8}, Ln3/e/b/j1/g0$a;->c(Ln3/e/b/j1/j0;)V

    .line 19
    :cond_6
    iget-object v8, p0, Ln3/e/a/e/r1;->h:Ln3/e/b/j1/j0;

    invoke-virtual {v7, v8}, Ln3/e/b/j1/g0$a;->c(Ln3/e/b/j1/j0;)V

    .line 20
    iget-object v8, v6, Ln3/e/b/j1/g0;->b:Ln3/e/b/j1/j0;

    .line 21
    invoke-virtual {v7, v8}, Ln3/e/b/j1/g0$a;->c(Ln3/e/b/j1/j0;)V

    .line 22
    invoke-virtual {v7}, Ln3/e/b/j1/g0$a;->d()Ln3/e/b/j1/g0;

    move-result-object v7

    iget-object v8, p0, Ln3/e/a/e/r1;->f:Ln3/e/a/e/b2;

    invoke-interface {v8}, Ln3/e/a/e/b2;->d()Landroid/hardware/camera2/CameraDevice;

    move-result-object v8

    iget-object v9, p0, Ln3/e/a/e/r1;->j:Ljava/util/Map;

    .line 23
    invoke-static {v7, v8, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->i(Ln3/e/b/j1/g0;Landroid/hardware/camera2/CameraDevice;Ljava/util/Map;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    if-nez v7, :cond_7

    const-string p1, "Skipping issuing request without surface."

    .line 24
    invoke-static {v0, p1, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 25
    :cond_7
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iget-object v6, v6, Ln3/e/b/j1/g0;->d:Ljava/util/List;

    .line 27
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln3/e/b/j1/q;

    .line 28
    invoke-static {v9, v8}, Ln3/e/a/e/q1;->a(Ln3/e/b/j1/q;Ljava/util/List;)V

    goto :goto_2

    .line 29
    :cond_8
    iget-object v6, v2, Ln3/e/a/e/j1;->a:Ljava/util/Map;

    .line 30
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_9

    .line 31
    new-instance v9, Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v11, v10

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    iget-object v6, v2, Ln3/e/a/e/j1;->a:Ljava/util/Map;

    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 36
    :cond_9
    iget-object v6, v2, Ln3/e/a/e/j1;->a:Ljava/util/Map;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :goto_3
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 38
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    .line 39
    iget-object p1, p0, Ln3/e/a/e/r1;->o:Ln3/e/a/e/k2/q/e;

    .line 40
    iget-boolean p1, p1, Ln3/e/a/e/k2/q/e;->a:Z

    if-eqz p1, :cond_e

    if-nez v5, :cond_b

    goto :goto_4

    .line 41
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CaptureRequest;

    .line 42
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v7, :cond_d

    const/4 v6, 0x3

    if-ne v5, v6, :cond_c

    :cond_d
    move v4, v8

    :cond_e
    :goto_4
    if-eqz v4, :cond_f

    .line 43
    iget-object p1, p0, Ln3/e/a/e/r1;->f:Ln3/e/a/e/b2;

    invoke-interface {p1}, Ln3/e/a/e/b2;->g()V

    .line 44
    new-instance p1, Ln3/e/a/e/z;

    invoke-direct {p1, p0}, Ln3/e/a/e/z;-><init>(Ln3/e/a/e/r1;)V

    .line 45
    iput-object p1, v2, Ln3/e/a/e/j1;->b:Ln3/e/a/e/j1$a;

    .line 46
    :cond_f
    iget-object p1, p0, Ln3/e/a/e/r1;->f:Ln3/e/a/e/b2;

    invoke-interface {p1, v3, v2}, Ln3/e/a/e/b2;->e(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    goto :goto_5

    :cond_10
    const-string p1, "Skipping issuing burst request due to no valid request elements"

    .line 47
    invoke-static {v0, p1, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    const-string v2, "Unable to access camera: "

    .line 48
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {v0, p1, v1}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    :goto_5
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/e/b/j1/g0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/r1;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot issue capture request on a closed/released session."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :pswitch_1
    iget-object v1, p0, Ln3/e/a/e/r1;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {p0}, Ln3/e/a/e/r1;->e()V

    goto :goto_0

    .line 6
    :pswitch_2
    iget-object v1, p0, Ln3/e/a/e/r1;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 7
    :pswitch_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "issueCaptureRequests() should not be possible in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/r1;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Ln3/e/a/e/r1;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Ln3/e/a/e/r1;->c(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Ln3/e/a/e/r1;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ln3/e/a/e/r1;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    throw v0
.end method

.method public f()V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/e/a/e/r1;->g:Ln3/e/b/j1/j1;

    const/4 v1, 0x0

    const-string v2, "CaptureSession"

    if-nez v0, :cond_0

    const-string v0, "Skipping issueRepeatingCaptureRequests for no configuration case."

    .line 2
    invoke-static {v2, v0, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/e/a/e/r1;->g:Ln3/e/b/j1/j1;

    .line 4
    iget-object v0, v0, Ln3/e/b/j1/j1;->f:Ln3/e/b/j1/g0;

    .line 5
    invoke-virtual {v0}, Ln3/e/b/j1/g0;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, "Unable to access camera: "

    if-eqz v3, :cond_1

    const-string v0, "Skipping issueRepeatingCaptureRequests for no surface."

    .line 6
    invoke-static {v2, v0, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :try_start_0
    iget-object v0, p0, Ln3/e/a/e/r1;->f:Ln3/e/a/e/b2;

    invoke-interface {v0}, Ln3/e/a/e/b2;->g()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v2, v0, v1}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    const-string v3, "Issuing request for session."

    .line 11
    invoke-static {v2, v3, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    new-instance v3, Ln3/e/b/j1/g0$a;

    invoke-direct {v3, v0}, Ln3/e/b/j1/g0$a;-><init>(Ln3/e/b/j1/g0;)V

    .line 13
    iget-object v5, p0, Ln3/e/a/e/r1;->i:Ln3/e/a/d/c;

    .line 14
    invoke-virtual {v5}, Ln3/e/a/d/c;->c()Ln3/e/a/d/c$a;

    move-result-object v5

    .line 15
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v5, v5, Ln3/e/a/d/c$a;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/e/a/d/b;

    .line 17
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 18
    :cond_2
    invoke-static {v6}, Ln3/e/a/e/r1;->g(Ljava/util/List;)Ln3/e/b/j1/j0;

    move-result-object v5

    iput-object v5, p0, Ln3/e/a/e/r1;->h:Ln3/e/b/j1/j0;

    .line 19
    iget-object v5, p0, Ln3/e/a/e/r1;->h:Ln3/e/b/j1/j0;

    invoke-virtual {v3, v5}, Ln3/e/b/j1/g0$a;->c(Ln3/e/b/j1/j0;)V

    .line 20
    invoke-virtual {v3}, Ln3/e/b/j1/g0$a;->d()Ln3/e/b/j1/g0;

    move-result-object v3

    iget-object v5, p0, Ln3/e/a/e/r1;->f:Ln3/e/a/e/b2;

    invoke-interface {v5}, Ln3/e/a/e/b2;->d()Landroid/hardware/camera2/CameraDevice;

    move-result-object v5

    iget-object v6, p0, Ln3/e/a/e/r1;->j:Ljava/util/Map;

    .line 21
    invoke-static {v3, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->i(Ln3/e/b/j1/g0;Landroid/hardware/camera2/CameraDevice;Ljava/util/Map;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v0, "Skipping issuing empty request for session."

    .line 22
    invoke-static {v2, v0, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 23
    :cond_3
    iget-object v0, v0, Ln3/e/b/j1/g0;->d:Ljava/util/List;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v6, 0x0

    .line 24
    iget-object v7, p0, Ln3/e/a/e/r1;->c:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    aput-object v7, v5, v6

    .line 25
    invoke-virtual {p0, v0, v5}, Ln3/e/a/e/r1;->a(Ljava/util/List;[Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    .line 26
    iget-object v5, p0, Ln3/e/a/e/r1;->f:Ln3/e/a/e/b2;

    invoke-interface {v5, v3, v0}, Ln3/e/a/e/b2;->i(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 27
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v2, v0, v1}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    :goto_2
    return-void
.end method

.method public h(Ln3/e/b/j1/j1;Landroid/hardware/camera2/CameraDevice;Ln3/e/a/e/f2;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/j1;",
            "Landroid/hardware/camera2/CameraDevice;",
            "Ln3/e/a/e/f2;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/r1;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string p1, "CaptureSession"

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Open not allowed in state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 4
    invoke-static {p1, p2, p3}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "open() should not allow the state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p2, Ln3/e/b/j1/t1/c/h$a;

    invoke-direct {p2, p1}, Ln3/e/b/j1/t1/c/h$a;-><init>(Ljava/lang/Throwable;)V

    .line 7
    monitor-exit v0

    return-object p2

    .line 8
    :cond_0
    sget-object v1, Ln3/e/a/e/r1$c;->c:Ln3/e/a/e/r1$c;

    iput-object v1, p0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    .line 9
    invoke-virtual {p1}, Ln3/e/b/j1/j1;->b()Ljava/util/List;

    move-result-object v1

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Ln3/e/a/e/r1;->k:Ljava/util/List;

    .line 11
    iput-object p3, p0, Ln3/e/a/e/r1;->e:Ln3/e/a/e/f2;

    const-wide/16 v3, 0x1388

    .line 12
    iget-object p3, p3, Ln3/e/a/e/f2;->a:Ln3/e/a/e/f2$b;

    invoke-interface {p3, v2, v3, v4}, Ln3/e/a/e/f2$b;->j(Ljava/util/List;J)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    .line 13
    invoke-static {p3}, Ln3/e/b/j1/t1/c/e;->a(Lcom/google/common/util/concurrent/ListenableFuture;)Ln3/e/b/j1/t1/c/e;

    move-result-object p3

    new-instance v1, Ln3/e/a/e/y;

    invoke-direct {v1, p0, p1, p2}, Ln3/e/a/e/y;-><init>(Ln3/e/a/e/r1;Ln3/e/b/j1/j1;Landroid/hardware/camera2/CameraDevice;)V

    iget-object p1, p0, Ln3/e/a/e/r1;->e:Ln3/e/a/e/f2;

    .line 14
    iget-object p1, p1, Ln3/e/a/e/f2;->a:Ln3/e/a/e/f2$b;

    check-cast p1, Ln3/e/a/e/c2;

    .line 15
    iget-object p1, p1, Ln3/e/a/e/c2;->d:Ljava/util/concurrent/Executor;

    .line 16
    invoke-virtual {p3, v1, p1}, Ln3/e/b/j1/t1/c/e;->c(Ln3/e/b/j1/t1/c/b;Ljava/util/concurrent/Executor;)Ln3/e/b/j1/t1/c/e;

    move-result-object p1

    .line 17
    new-instance p2, Ln3/e/a/e/r1$b;

    invoke-direct {p2, p0}, Ln3/e/a/e/r1$b;-><init>(Ln3/e/a/e/r1;)V

    iget-object p3, p0, Ln3/e/a/e/r1;->e:Ln3/e/a/e/f2;

    .line 18
    iget-object p3, p3, Ln3/e/a/e/f2;->a:Ln3/e/a/e/f2$b;

    check-cast p3, Ln3/e/a/e/c2;

    .line 19
    iget-object p3, p3, Ln3/e/a/e/c2;->d:Ljava/util/concurrent/Executor;

    .line 20
    new-instance v1, Ln3/e/b/j1/t1/c/g$d;

    invoke-direct {v1, p1, p2}, Ln3/e/b/j1/t1/c/g$d;-><init>(Ljava/util/concurrent/Future;Ln3/e/b/j1/t1/c/d;)V

    .line 21
    iget-object p2, p1, Ln3/e/b/j1/t1/c/e;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p2, v1, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 22
    invoke-static {p1}, Ln3/e/b/j1/t1/c/g;->d(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i(Ln3/e/b/j1/j1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/r1;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Session configuration cannot be set on a closed/released session."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :pswitch_1
    iput-object p1, p0, Ln3/e/a/e/r1;->g:Ln3/e/b/j1/j1;

    .line 5
    iget-object v1, p0, Ln3/e/a/e/r1;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Ln3/e/b/j1/j1;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "CaptureSession"

    const-string v2, "Does not have the proper configured lists"

    .line 6
    invoke-static {p1, v2, v1}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    monitor-exit v0

    return-void

    :cond_0
    const-string p1, "CaptureSession"

    const-string v2, "Attempting to submit CaptureRequest after setting"

    .line 8
    invoke-static {p1, v2, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {p0}, Ln3/e/a/e/r1;->f()V

    goto :goto_0

    .line 10
    :pswitch_2
    iput-object p1, p0, Ln3/e/a/e/r1;->g:Ln3/e/b/j1/j1;

    goto :goto_0

    .line 11
    :pswitch_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSessionConfig() should not be possible in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public j(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/e/b/j1/g0;",
            ">;)",
            "Ljava/util/List<",
            "Ln3/e/b/j1/g0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/j1/g0;

    .line 3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4
    invoke-static {}, Ln3/e/b/j1/a1;->x()Ln3/e/b/j1/a1;

    .line 5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v3, Ln3/e/b/j1/b1;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iget-object v3, v1, Ln3/e/b/j1/g0;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object v3, v1, Ln3/e/b/j1/g0;->b:Ln3/e/b/j1/j0;

    invoke-static {v3}, Ln3/e/b/j1/a1;->y(Ln3/e/b/j1/j0;)Ln3/e/b/j1/a1;

    move-result-object v3

    .line 9
    iget-object v4, v1, Ln3/e/b/j1/g0;->d:Ljava/util/List;

    .line 10
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-boolean v8, v1, Ln3/e/b/j1/g0;->e:Z

    .line 12
    iget-object v1, v1, Ln3/e/b/j1/g0;->f:Ln3/e/b/j1/o1;

    .line 13
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    iget-object v5, v1, Ln3/e/b/j1/o1;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 15
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v6}, Ln3/e/b/j1/o1;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 17
    :cond_0
    new-instance v1, Ln3/e/b/j1/b1;

    invoke-direct {v1, v4}, Ln3/e/b/j1/b1;-><init>(Ljava/util/Map;)V

    const/4 v6, 0x1

    .line 18
    iget-object v4, p0, Ln3/e/a/e/r1;->g:Ln3/e/b/j1/j1;

    .line 19
    iget-object v4, v4, Ln3/e/b/j1/j1;->f:Ln3/e/b/j1/g0;

    .line 20
    invoke-virtual {v4}, Ln3/e/b/j1/g0;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/e/b/j1/k0;

    .line 21
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 22
    :cond_1
    new-instance v10, Ln3/e/b/j1/g0;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    invoke-static {v3}, Ln3/e/b/j1/d1;->w(Ln3/e/b/j1/j0;)Ln3/e/b/j1/d1;

    move-result-object v5

    .line 24
    sget-object v2, Ln3/e/b/j1/o1;->b:Ln3/e/b/j1/o1;

    .line 25
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 26
    iget-object v3, v1, Ln3/e/b/j1/o1;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 27
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 28
    invoke-virtual {v1, v9}, Ln3/e/b/j1/o1;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 29
    :cond_2
    new-instance v9, Ln3/e/b/j1/o1;

    invoke-direct {v9, v2}, Ln3/e/b/j1/o1;-><init>(Ljava/util/Map;)V

    move-object v3, v10

    .line 30
    invoke-direct/range {v3 .. v9}, Ln3/e/b/j1/g0;-><init>(Ljava/util/List;Ln3/e/b/j1/j0;ILjava/util/List;ZLn3/e/b/j1/o1;)V

    .line 31
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method
