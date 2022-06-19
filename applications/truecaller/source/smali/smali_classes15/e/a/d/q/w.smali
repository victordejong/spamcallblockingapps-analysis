.class public final Le/a/d/q/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/q/v;


# instance fields
.field public a:I

.field public b:Le/a/d/q/i;

.field public c:Z

.field public d:Lq3/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/n<",
            "-",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/d/g;

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/q/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/d/g;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/g;",
            "Lo3/a<",
            "Le/a/d/q/j;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "voipConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionFactory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/q/w;->e:Le/a/d/g;

    iput-object p2, p0, Le/a/d/q/w;->f:Lo3/a;

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput p1, p0, Le/a/d/q/w;->a:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ls1/z/b/l;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Landroid/telecom/CallAudioState;",
            "Ls1/s;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/a/d/q/w;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/a/d/q/w;->b:Le/a/d/q/i;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Le/a/d/q/i;->a(Ls1/z/b/l;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 4
    monitor-exit p0

    return p1

    .line 5
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget v0, p0, Le/a/d/q/w;->a:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Le/a/d/q/w;->e:Le/a/d/g;

    check-cast v0, Le/a/d/e;

    invoke-virtual {v0}, Le/a/d/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public declared-synchronized c(Le/a/d/c0/x1/a;)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "route"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/d/q/w;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/a/d/q/w;->b:Le/a/d/q/i;

    if-eqz v0, :cond_b

    .line 3
    instance-of v1, p1, Le/a/d/c0/x1/a$b;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, p1, Le/a/d/c0/x1/a$d;

    if-eqz v1, :cond_2

    :goto_0
    const/4 v1, 0x5

    goto :goto_1

    .line 5
    :cond_2
    instance-of v1, p1, Le/a/d/c0/x1/a$c;

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_1

    .line 6
    :cond_3
    instance-of v1, p1, Le/a/d/c0/x1/a$a;

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    .line 7
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing audio route from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Le/a/d/q/i;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    instance-of v2, p1, Le/a/d/c0/x1/a$a;

    if-eqz v2, :cond_9

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_9

    .line 9
    invoke-interface {v0}, Le/a/d/q/i;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/telecom/CallAudioState;->getSupportedBluetoothDevices()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    const-string v6, "device"

    .line 11
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    check-cast v6, Le/a/d/c0/x1/a$a;

    .line 12
    iget-object v6, v6, Le/a/d/c0/x1/a$a;->a:Le/a/p5/r0/a;

    .line 13
    iget-object v6, v6, Le/a/p5/r0/a;->b:Ljava/lang/String;

    .line 14
    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v4, v3

    .line 15
    :cond_6
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    :cond_7
    if-nez v4, :cond_8

    .line 16
    check-cast p1, Le/a/d/c0/x1/a$a;

    .line 17
    iget-object p1, p1, Le/a/d/c0/x1/a$a;->a:Le/a/p5/r0/a;

    .line 18
    iget-object p1, p1, Le/a/p5/r0/a;->b:Ljava/lang/String;

    .line 19
    invoke-interface {v0, v1}, Le/a/d/q/i;->setAudioRoute(I)V

    goto :goto_3

    .line 20
    :cond_8
    invoke-interface {v0, v4}, Le/a/d/q/i;->requestBluetoothAudio(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_3

    .line 21
    :cond_9
    invoke-interface {v0, v1}, Le/a/d/q/i;->setAudioRoute(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    const/4 p1, 0x1

    .line 22
    monitor-exit p0

    return p1

    .line 23
    :cond_a
    :try_start_2
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :cond_b
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/d/q/w;->b:Le/a/d/q/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/q/i;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/a/d/q/w;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    iput-boolean v0, p0, Le/a/d/q/w;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/a/d/q/w;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iput-object v0, p0, Le/a/d/q/w;->b:Le/a/d/q/i;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Le/a/d/q/w;->c:Z

    .line 4
    iget-object v1, p0, Le/a/d/q/w;->d:Lq3/a/n;

    if-eqz v1, :cond_1

    sget-object v2, Ls1/s;->a:Ls1/s;

    invoke-static {v1, v2}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    .line 5
    :cond_1
    iput-object v0, p0, Le/a/d/q/w;->d:Lq3/a/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Landroid/telecom/Connection;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/a/d/q/w;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/d/q/w;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/q/j;

    invoke-interface {v0}, Le/a/d/q/j;->a()Landroid/telecom/Connection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    iget-object v1, p0, Le/a/d/q/w;->f:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/q/j;

    invoke-interface {v1, v0}, Le/a/d/q/j;->b(Z)Le/a/d/q/i;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Le/a/d/q/w;->c:Z

    .line 4
    iget-object v1, p0, Le/a/d/q/w;->b:Le/a/d/q/i;

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Le/a/d/q/w;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/q/j;

    invoke-interface {v0}, Le/a/d/q/j;->a()Landroid/telecom/Connection;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 6
    :cond_1
    :try_start_2
    invoke-interface {v0}, Le/a/d/q/i;->initialize()V

    .line 7
    invoke-virtual {p0, v0}, Le/a/d/q/w;->k(Le/a/d/q/i;)V

    .line 8
    invoke-interface {v0}, Le/a/d/q/i;->d()Landroid/telecom/Connection;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    monitor-exit p0

    return-object v0

    .line 10
    :cond_2
    :try_start_3
    iget-object v0, p0, Le/a/d/q/w;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/q/j;

    invoke-interface {v0}, Le/a/d/q/j;->a()Landroid/telecom/Connection;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h(Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    instance-of v1, p1, Le/a/d/q/w$b;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/d/q/w$b;

    iget v2, v1, Le/a/d/q/w$b;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d/q/w$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/q/w$b;

    invoke-direct {v1, p0, p1}, Le/a/d/q/w$b;-><init>(Le/a/d/q/w;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/d/q/w$b;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/d/q/w$b;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/d/q/w;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/d/q/w;->b:Le/a/d/q/i;

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    const-wide/16 v5, 0x7d0

    .line 6
    new-instance p1, Le/a/d/q/w$c;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Le/a/d/q/w$c;-><init>(Le/a/d/q/w;Ls1/w/d;)V

    iput v4, v1, Le/a/d/q/w$b;->e:I

    invoke-static {v5, v6, p1, v1}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    return-object v2

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 7
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized i()Landroid/telecom/Connection;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/a/d/q/w;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/d/q/w;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/q/j;

    invoke-interface {v0}, Le/a/d/q/j;->a()Landroid/telecom/Connection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Le/a/d/q/w;->f:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/q/j;

    invoke-interface {v1, v0}, Le/a/d/q/j;->b(Z)Le/a/d/q/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Le/a/d/q/i;->initialize()V

    .line 4
    invoke-virtual {p0, v0}, Le/a/d/q/w;->k(Le/a/d/q/i;)V

    .line 5
    invoke-interface {v0}, Le/a/d/q/i;->d()Landroid/telecom/Connection;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-object v0

    .line 7
    :cond_1
    :try_start_2
    iget-object v0, p0, Le/a/d/q/w;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/q/j;

    invoke-interface {v0}, Le/a/d/q/j;->a()Landroid/telecom/Connection;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/d/q/w;->b:Le/a/d/q/i;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Le/a/d/q/w;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k(Le/a/d/q/i;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Le/a/d/q/w;->b:Le/a/d/q/i;

    .line 2
    iget-object v0, p0, Le/a/d/q/w;->d:Lq3/a/n;

    if-eqz v0, :cond_0

    sget-object v1, Ls1/s;->a:Ls1/s;

    invoke-static {v0, v1}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/d/q/w;->d:Lq3/a/n;

    .line 4
    new-instance v0, Le/a/d/q/w$a;

    invoke-direct {v0, p0}, Le/a/d/q/w$a;-><init>(Le/a/d/q/w;)V

    invoke-interface {p1, v0}, Le/a/d/q/i;->c(Ls1/z/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
