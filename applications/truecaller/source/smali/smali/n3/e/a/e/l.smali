.class public final synthetic Ln3/e/a/e/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/a/e/b1;

.field public final synthetic b:Ln3/h/a/b;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/b1;Ln3/h/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/l;->a:Ln3/e/a/e/b1;

    iput-object p2, p0, Ln3/e/a/e/l;->b:Ln3/h/a/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Ln3/e/a/e/l;->a:Ln3/e/a/e/b1;

    iget-object v1, p0, Ln3/e/a/e/l;->b:Ln3/h/a/b;

    .line 1
    sget-object v2, Ln3/e/a/e/b1$e;->g:Ln3/e/a/e/b1$e;

    iget-object v3, v0, Ln3/e/a/e/b1;->n:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 2
    iget-object v3, v0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    sget-object v5, Ln3/e/a/e/b1$e;->h:Ln3/e/a/e/b1$e;

    if-eq v3, v5, :cond_0

    .line 3
    new-instance v3, Ln3/e/a/e/p;

    invoke-direct {v3, v0}, Ln3/e/a/e/p;-><init>(Ln3/e/a/e/b1;)V

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    iput-object v3, v0, Ln3/e/a/e/b1;->n:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v4}, Ln3/e/b/j1/t1/c/g;->c(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    iput-object v3, v0, Ln3/e/a/e/b1;->n:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 5
    :cond_1
    :goto_0
    iget-object v3, v0, Ln3/e/a/e/b1;->n:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    iget-object v5, v0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    const-string v2, "release() ignored due to being in state: "

    .line 7
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 8
    :pswitch_0
    invoke-virtual {v0, v2}, Ln3/e/a/e/b1;->x(Ln3/e/a/e/b1$e;)V

    .line 9
    invoke-virtual {v0, v6}, Ln3/e/a/e/b1;->m(Z)V

    goto :goto_2

    .line 10
    :pswitch_1
    iget-object v5, v0, Ln3/e/a/e/b1;->g:Ln3/e/a/e/b1$f;

    invoke-virtual {v5}, Ln3/e/a/e/b1$f;->a()Z

    move-result v5

    .line 11
    invoke-virtual {v0, v2}, Ln3/e/a/e/b1;->x(Ln3/e/a/e/b1$e;)V

    if-eqz v5, :cond_3

    .line 12
    invoke-virtual {v0}, Ln3/e/a/e/b1;->r()Z

    move-result v2

    .line 13
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ln3/e/a/e/b1;->p()V

    goto :goto_2

    .line 15
    :pswitch_2
    iget-object v5, v0, Ln3/e/a/e/b1;->i:Landroid/hardware/camera2/CameraDevice;

    if-nez v5, :cond_2

    const/4 v6, 0x1

    .line 16
    :cond_2
    invoke-static {v6, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 17
    invoke-virtual {v0, v2}, Ln3/e/a/e/b1;->x(Ln3/e/a/e/b1$e;)V

    .line 18
    invoke-virtual {v0}, Ln3/e/a/e/b1;->r()Z

    move-result v2

    .line 19
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ln3/e/a/e/b1;->p()V

    goto :goto_2

    .line 21
    :goto_1
    invoke-virtual {v0, v2, v4}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :cond_3
    :goto_2
    invoke-static {v3, v1}, Ln3/e/b/j1/t1/c/g;->e(Lcom/google/common/util/concurrent/ListenableFuture;Ln3/h/a/b;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
