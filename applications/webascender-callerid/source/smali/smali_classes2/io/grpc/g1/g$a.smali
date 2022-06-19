.class Lio/grpc/g1/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/g1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/g1/g;


# direct methods
.method constructor <init>(Lio/grpc/g1/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/g1/g$a;->a:Lio/grpc/g1/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 2

    const-string v0, "OkHttpClientStream$Sink.request"

    .line 1
    invoke-static {v0}, Li/b/c;->f(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/g1/g$a;->a:Lio/grpc/g1/g;

    invoke-static {v0}, Lio/grpc/g1/g;->I(Lio/grpc/g1/g;)Lio/grpc/g1/g$b;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/g1/g$b;->S(Lio/grpc/g1/g$b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lio/grpc/g1/g$a;->a:Lio/grpc/g1/g;

    invoke-static {v1}, Lio/grpc/g1/g;->I(Lio/grpc/g1/g;)Lio/grpc/g1/g$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/grpc/f1/d$a;->q(I)V

    .line 4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "OkHttpClientStream$Sink.request"

    .line 5
    invoke-static {p1}, Li/b/c;->h(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    const-string v0, "OkHttpClientStream$Sink.request"

    .line 7
    invoke-static {v0}, Li/b/c;->h(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lio/grpc/b1;)V
    .locals 4

    const-string v0, "OkHttpClientStream$Sink.cancel"

    .line 1
    invoke-static {v0}, Li/b/c;->f(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/g1/g$a;->a:Lio/grpc/g1/g;

    invoke-static {v0}, Lio/grpc/g1/g;->I(Lio/grpc/g1/g;)Lio/grpc/g1/g$b;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/g1/g$b;->S(Lio/grpc/g1/g$b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lio/grpc/g1/g$a;->a:Lio/grpc/g1/g;

    invoke-static {v1}, Lio/grpc/g1/g;->I(Lio/grpc/g1/g;)Lio/grpc/g1/g$b;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lio/grpc/g1/g$b;->V(Lio/grpc/g1/g$b;Lio/grpc/b1;ZLio/grpc/q0;)V

    .line 4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "OkHttpClientStream$Sink.cancel"

    .line 5
    invoke-static {p1}, Li/b/c;->h(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    const-string v0, "OkHttpClientStream$Sink.cancel"

    .line 7
    invoke-static {v0}, Li/b/c;->h(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lio/grpc/f1/l2;ZZI)V
    .locals 2

    const-string v0, "OkHttpClientStream$Sink.writeFrame"

    .line 1
    invoke-static {v0}, Li/b/c;->f(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lio/grpc/g1/g;->J()Ln/f;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Lio/grpc/g1/n;

    invoke-virtual {p1}, Lio/grpc/g1/n;->b()Ln/f;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ln/f;->p0()J

    move-result-wide v0

    long-to-int v1, v0

    if-lez v1, :cond_1

    .line 5
    iget-object v0, p0, Lio/grpc/g1/g$a;->a:Lio/grpc/g1/g;

    invoke-static {v0, v1}, Lio/grpc/g1/g;->K(Lio/grpc/g1/g;I)V

    .line 6
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/grpc/g1/g$a;->a:Lio/grpc/g1/g;

    invoke-static {v0}, Lio/grpc/g1/g;->I(Lio/grpc/g1/g;)Lio/grpc/g1/g$b;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/g1/g$b;->S(Lio/grpc/g1/g$b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v1, p0, Lio/grpc/g1/g$a;->a:Lio/grpc/g1/g;

    invoke-static {v1}, Lio/grpc/g1/g;->I(Lio/grpc/g1/g;)Lio/grpc/g1/g$b;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lio/grpc/g1/g$b;->U(Lio/grpc/g1/g$b;Ln/f;ZZ)V

    .line 8
    iget-object p1, p0, Lio/grpc/g1/g$a;->a:Lio/grpc/g1/g;

    invoke-static {p1}, Lio/grpc/g1/g;->L(Lio/grpc/g1/g;)Lio/grpc/f1/k2;

    move-result-object p1

    invoke-virtual {p1, p4}, Lio/grpc/f1/k2;->e(I)V

    .line 9
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "OkHttpClientStream$Sink.writeFrame"

    .line 10
    invoke-static {p1}, Li/b/c;->h(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    const-string p2, "OkHttpClientStream$Sink.writeFrame"

    .line 12
    invoke-static {p2}, Li/b/c;->h(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lio/grpc/q0;[B)V
    .locals 3

    const-string v0, "OkHttpClientStream$Sink.writeHeaders"

    .line 1
    invoke-static {v0}, Li/b/c;->f(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/g1/g$a;->a:Lio/grpc/g1/g;

    invoke-static {v1}, Lio/grpc/g1/g;->z(Lio/grpc/g1/g;)Lio/grpc/r0;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/r0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/g1/g$a;->a:Lio/grpc/g1/g;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/grpc/g1/g;->C(Lio/grpc/g1/g;Z)Z

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/common/io/BaseEncoding;->b()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/io/BaseEncoding;->f([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_0
    :try_start_0
    iget-object p2, p0, Lio/grpc/g1/g$a;->a:Lio/grpc/g1/g;

    invoke-static {p2}, Lio/grpc/g1/g;->I(Lio/grpc/g1/g;)Lio/grpc/g1/g$b;

    move-result-object p2

    invoke-static {p2}, Lio/grpc/g1/g$b;->S(Lio/grpc/g1/g$b;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v1, p0, Lio/grpc/g1/g$a;->a:Lio/grpc/g1/g;

    invoke-static {v1}, Lio/grpc/g1/g;->I(Lio/grpc/g1/g;)Lio/grpc/g1/g$b;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lio/grpc/g1/g$b;->T(Lio/grpc/g1/g$b;Lio/grpc/q0;Ljava/lang/String;)V

    .line 7
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "OkHttpClientStream$Sink.writeHeaders"

    .line 8
    invoke-static {p1}, Li/b/c;->h(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    const-string p2, "OkHttpClientStream$Sink.writeHeaders"

    .line 10
    invoke-static {p2}, Li/b/c;->h(Ljava/lang/String;)V

    throw p1
.end method
