.class public final Ln3/e/a/e/r1$d;
.super Ln3/e/a/e/b2$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/a/e/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Ln3/e/a/e/r1;


# direct methods
.method public constructor <init>(Ln3/e/a/e/r1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    invoke-direct {p0}, Ln3/e/a/e/b2$a;-><init>()V

    return-void
.end method


# virtual methods
.method public o(Ln3/e/a/e/b2;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    iget-object p1, p1, Ln3/e/a/e/r1;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    iget-object v0, v0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object v0, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    invoke-virtual {v0}, Ln3/e/a/e/r1;->b()V

    goto :goto_0

    .line 4
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigureFailed() should not be possible in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    iget-object v2, v2, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    const-string v0, "CaptureSession"

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraCaptureSession.onConfigureFailed() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    iget-object v2, v2, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public p(Ln3/e/a/e/b2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    iget-object v0, v0, Ln3/e/a/e/r1;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    iget-object v1, v1, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 3
    :pswitch_0
    invoke-interface {p1}, Ln3/e/a/e/b2;->close()V

    goto :goto_1

    .line 4
    :pswitch_1
    iget-object v1, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    iput-object p1, v1, Ln3/e/a/e/r1;->f:Ln3/e/a/e/b2;

    goto :goto_1

    .line 5
    :pswitch_2
    iget-object v1, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    sget-object v3, Ln3/e/a/e/r1$c;->e:Ln3/e/a/e/r1$c;

    iput-object v3, v1, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    .line 6
    iput-object p1, v1, Ln3/e/a/e/r1;->f:Ln3/e/a/e/b2;

    .line 7
    iget-object p1, v1, Ln3/e/a/e/r1;->g:Ln3/e/b/j1/j1;

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    iget-object p1, p1, Ln3/e/a/e/r1;->i:Ln3/e/a/d/c;

    .line 9
    invoke-virtual {p1}, Ln3/e/a/d/c;->c()Ln3/e/a/d/c$a;

    move-result-object p1

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object p1, p1, Ln3/e/a/d/c$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/e/a/d/b;

    .line 12
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 14
    iget-object p1, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    invoke-virtual {p1, v1}, Ln3/e/a/e/r1;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Ln3/e/a/e/r1;->c(Ljava/util/List;)V

    :cond_1
    const-string p1, "CaptureSession"

    const-string v1, "Attempting to send capture request onConfigured"

    .line 15
    invoke-static {p1, v1, v2}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    iget-object p1, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    invoke-virtual {p1}, Ln3/e/a/e/r1;->f()V

    .line 17
    iget-object p1, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    invoke-virtual {p1}, Ln3/e/a/e/r1;->e()V

    goto :goto_1

    .line 18
    :pswitch_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigured() should not be possible in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    iget-object v2, v2, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    const-string p1, "CaptureSession"

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraCaptureSession.onConfigured() mState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    iget-object v3, v3, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {p1, v1, v2}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
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
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public q(Ln3/e/a/e/b2;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    iget-object p1, p1, Ln3/e/a/e/r1;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    iget-object v0, v0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CaptureSession"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraCaptureSession.onReady() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    iget-object v2, v2, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v1, v2}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    monitor-exit p1

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReady() should not be possible in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    iget-object v2, v2, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public r(Ln3/e/a/e/b2;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    iget-object p1, p1, Ln3/e/a/e/r1;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    iget-object v0, v0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    sget-object v1, Ln3/e/a/e/r1$c;->a:Ln3/e/a/e/r1$c;

    if-eq v0, v1, :cond_0

    const-string v0, "CaptureSession"

    const-string v1, "onSessionFinished()"

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v1, v2}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    invoke-virtual {v0}, Ln3/e/a/e/r1;->b()V

    .line 5
    monitor-exit p1

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionFinished() should not be possible in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ln3/e/a/e/r1$d;->a:Ln3/e/a/e/r1;

    iget-object v2, v2, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
