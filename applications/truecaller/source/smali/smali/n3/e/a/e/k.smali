.class public final synthetic Ln3/e/a/e/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/a/e/b1;

.field public final synthetic b:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/b1;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/k;->a:Ln3/e/a/e/b1;

    iput-object p2, p0, Ln3/e/a/e/k;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Ln3/e/a/e/k;->a:Ln3/e/a/e/b1;

    iget-object v1, p0, Ln3/e/a/e/k;->b:Ljava/util/Collection;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/e/b/g1;

    .line 4
    iget-object v4, v0, Ln3/e/a/e/b1;->a:Ln3/e/b/j1/p1;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ln3/e/b/g1;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ln3/e/b/j1/p1;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    iget-object v4, v0, Ln3/e/a/e/b1;->a:Ln3/e/b/j1/p1;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ln3/e/b/g1;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6
    iget-object v4, v4, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v1, "Use cases ["

    .line 9
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] now DETACHED for camera"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v1, v3}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/e/b/g1;

    .line 12
    instance-of v2, v2, Ln3/e/b/c1;

    if-eqz v2, :cond_3

    .line 13
    iget-object v1, v0, Ln3/e/a/e/b1;->f:Ln3/e/a/e/z0;

    .line 14
    iput-object v3, v1, Ln3/e/a/e/z0;->g:Landroid/util/Rational;

    .line 15
    :cond_4
    invoke-virtual {v0}, Ln3/e/a/e/b1;->l()V

    .line 16
    iget-object v1, v0, Ln3/e/a/e/b1;->a:Ln3/e/b/j1/p1;

    invoke-virtual {v1}, Ln3/e/b/j1/p1;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 17
    iget-object v1, v0, Ln3/e/a/e/b1;->f:Ln3/e/a/e/z0;

    invoke-virtual {v1}, Ln3/e/a/e/z0;->i()V

    .line 18
    invoke-virtual {v0, v2}, Ln3/e/a/e/b1;->w(Z)V

    .line 19
    iget-object v1, v0, Ln3/e/a/e/b1;->f:Ln3/e/a/e/z0;

    invoke-virtual {v1, v2}, Ln3/e/a/e/z0;->p(Z)V

    .line 20
    new-instance v1, Ln3/e/a/e/r1;

    invoke-direct {v1}, Ln3/e/a/e/r1;-><init>()V

    iput-object v1, v0, Ln3/e/a/e/b1;->k:Ln3/e/a/e/r1;

    .line 21
    sget-object v1, Ln3/e/a/e/b1$e;->e:Ln3/e/a/e/b1$e;

    const-string v4, "Closing camera."

    .line 22
    invoke-virtual {v0, v4, v3}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    iget-object v4, v0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    const/4 v2, 0x5

    if-eq v4, v2, :cond_6

    const-string v1, "close() ignored due to being in state: "

    .line 24
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1, v3}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 26
    :cond_5
    invoke-virtual {v0, v1}, Ln3/e/a/e/b1;->x(Ln3/e/a/e/b1$e;)V

    .line 27
    invoke-virtual {v0, v2}, Ln3/e/a/e/b1;->m(Z)V

    goto :goto_1

    .line 28
    :cond_6
    iget-object v2, v0, Ln3/e/a/e/b1;->g:Ln3/e/a/e/b1$f;

    invoke-virtual {v2}, Ln3/e/a/e/b1$f;->a()Z

    move-result v2

    .line 29
    invoke-virtual {v0, v1}, Ln3/e/a/e/b1;->x(Ln3/e/a/e/b1$e;)V

    if-eqz v2, :cond_a

    .line 30
    invoke-virtual {v0}, Ln3/e/a/e/b1;->r()Z

    move-result v1

    .line 31
    invoke-static {v1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ln3/e/a/e/b1;->p()V

    goto :goto_1

    .line 33
    :cond_7
    iget-object v1, v0, Ln3/e/a/e/b1;->i:Landroid/hardware/camera2/CameraDevice;

    if-nez v1, :cond_8

    move v2, v5

    .line 34
    :cond_8
    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 35
    sget-object v1, Ln3/e/a/e/b1$e;->a:Ln3/e/a/e/b1$e;

    invoke-virtual {v0, v1}, Ln3/e/a/e/b1;->x(Ln3/e/a/e/b1$e;)V

    goto :goto_1

    .line 36
    :cond_9
    invoke-virtual {v0}, Ln3/e/a/e/b1;->z()V

    .line 37
    invoke-virtual {v0, v2}, Ln3/e/a/e/b1;->w(Z)V

    .line 38
    iget-object v1, v0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    sget-object v2, Ln3/e/a/e/b1$e;->d:Ln3/e/a/e/b1$e;

    if-ne v1, v2, :cond_a

    .line 39
    invoke-virtual {v0}, Ln3/e/a/e/b1;->t()V

    :cond_a
    :goto_1
    return-void
.end method
