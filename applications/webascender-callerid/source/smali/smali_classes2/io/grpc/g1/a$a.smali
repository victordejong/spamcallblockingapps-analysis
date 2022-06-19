.class Lio/grpc/g1/a$a;
.super Lio/grpc/g1/a$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/g1/a;->B0(Ln/f;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final g:Li/b/b;

.field final synthetic h:Lio/grpc/g1/a;


# direct methods
.method constructor <init>(Lio/grpc/g1/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/grpc/g1/a$a;->h:Lio/grpc/g1/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/g1/a$d;-><init>(Lio/grpc/g1/a;Lio/grpc/g1/a$a;)V

    .line 2
    invoke-static {}, Li/b/c;->e()Li/b/b;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/g1/a$a;->g:Li/b/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "WriteRunnable.runWrite"

    .line 1
    invoke-static {v0}, Li/b/c;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/grpc/g1/a$a;->g:Li/b/b;

    invoke-static {v0}, Li/b/c;->d(Li/b/b;)V

    .line 3
    new-instance v0, Ln/f;

    invoke-direct {v0}, Ln/f;-><init>()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/grpc/g1/a$a;->h:Lio/grpc/g1/a;

    invoke-static {v1}, Lio/grpc/g1/a;->a(Lio/grpc/g1/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v2, p0, Lio/grpc/g1/a$a;->h:Lio/grpc/g1/a;

    invoke-static {v2}, Lio/grpc/g1/a;->b(Lio/grpc/g1/a;)Ln/f;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/g1/a$a;->h:Lio/grpc/g1/a;

    invoke-static {v3}, Lio/grpc/g1/a;->b(Lio/grpc/g1/a;)Ln/f;

    move-result-object v3

    invoke-virtual {v3}, Ln/f;->e()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Ln/f;->B0(Ln/f;J)V

    .line 6
    iget-object v2, p0, Lio/grpc/g1/a$a;->h:Lio/grpc/g1/a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/grpc/g1/a;->c(Lio/grpc/g1/a;Z)Z

    .line 7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    iget-object v1, p0, Lio/grpc/g1/a$a;->h:Lio/grpc/g1/a;

    invoke-static {v1}, Lio/grpc/g1/a;->e(Lio/grpc/g1/a;)Ln/b0;

    move-result-object v1

    invoke-virtual {v0}, Ln/f;->p0()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Ln/b0;->B0(Ln/f;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "WriteRunnable.runWrite"

    .line 9
    invoke-static {v0}, Li/b/c;->h(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    const-string v1, "WriteRunnable.runWrite"

    .line 11
    invoke-static {v1}, Li/b/c;->h(Ljava/lang/String;)V

    throw v0
.end method
