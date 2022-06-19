.class Lio/grpc/f1/z$f;
.super Lio/grpc/f1/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private final i:Lio/grpc/l0$f;

.field private final j:Lio/grpc/r;

.field final synthetic k:Lio/grpc/f1/z;


# direct methods
.method private constructor <init>(Lio/grpc/f1/z;Lio/grpc/l0$f;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lio/grpc/f1/z$f;->k:Lio/grpc/f1/z;

    invoke-direct {p0}, Lio/grpc/f1/a0;-><init>()V

    .line 3
    invoke-static {}, Lio/grpc/r;->i()Lio/grpc/r;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/f1/z$f;->j:Lio/grpc/r;

    .line 4
    iput-object p2, p0, Lio/grpc/f1/z$f;->i:Lio/grpc/l0$f;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/f1/z;Lio/grpc/l0$f;Lio/grpc/f1/z$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/f1/z$f;-><init>(Lio/grpc/f1/z;Lio/grpc/l0$f;)V

    return-void
.end method

.method static synthetic t(Lio/grpc/f1/z$f;)Lio/grpc/l0$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/z$f;->i:Lio/grpc/l0$f;

    return-object p0
.end method

.method static synthetic u(Lio/grpc/f1/z$f;Lio/grpc/f1/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/f1/z$f;->v(Lio/grpc/f1/s;)V

    return-void
.end method

.method private v(Lio/grpc/f1/s;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/f1/z$f;->j:Lio/grpc/r;

    invoke-virtual {v0}, Lio/grpc/r;->b()Lio/grpc/r;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/f1/z$f;->i:Lio/grpc/l0$f;

    .line 3
    invoke-virtual {v1}, Lio/grpc/l0$f;->c()Lio/grpc/r0;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/f1/z$f;->i:Lio/grpc/l0$f;

    invoke-virtual {v2}, Lio/grpc/l0$f;->b()Lio/grpc/q0;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/f1/z$f;->i:Lio/grpc/l0$f;

    invoke-virtual {v3}, Lio/grpc/l0$f;->a()Lio/grpc/d;

    move-result-object v3

    .line 4
    invoke-interface {p1, v1, v2, v3}, Lio/grpc/f1/s;->g(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;)Lio/grpc/f1/q;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v1, p0, Lio/grpc/f1/z$f;->j:Lio/grpc/r;

    invoke-virtual {v1, v0}, Lio/grpc/r;->j(Lio/grpc/r;)V

    .line 6
    invoke-virtual {p0, p1}, Lio/grpc/f1/a0;->s(Lio/grpc/f1/q;)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    iget-object v1, p0, Lio/grpc/f1/z$f;->j:Lio/grpc/r;

    invoke-virtual {v1, v0}, Lio/grpc/r;->j(Lio/grpc/r;)V

    throw p1
.end method


# virtual methods
.method public c(Lio/grpc/b1;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lio/grpc/f1/a0;->c(Lio/grpc/b1;)V

    .line 2
    iget-object p1, p0, Lio/grpc/f1/z$f;->k:Lio/grpc/f1/z;

    invoke-static {p1}, Lio/grpc/f1/z;->h(Lio/grpc/f1/z;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/grpc/f1/z$f;->k:Lio/grpc/f1/z;

    invoke-static {v0}, Lio/grpc/f1/z;->i(Lio/grpc/f1/z;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/f1/z$f;->k:Lio/grpc/f1/z;

    invoke-static {v0}, Lio/grpc/f1/z;->k(Lio/grpc/f1/z;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 5
    iget-object v1, p0, Lio/grpc/f1/z$f;->k:Lio/grpc/f1/z;

    invoke-virtual {v1}, Lio/grpc/f1/z;->q()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/grpc/f1/z$f;->k:Lio/grpc/f1/z;

    invoke-static {v0}, Lio/grpc/f1/z;->m(Lio/grpc/f1/z;)Lio/grpc/d1;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/z$f;->k:Lio/grpc/f1/z;

    invoke-static {v1}, Lio/grpc/f1/z;->l(Lio/grpc/f1/z;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/d1;->b(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lio/grpc/f1/z$f;->k:Lio/grpc/f1/z;

    invoke-static {v0}, Lio/grpc/f1/z;->n(Lio/grpc/f1/z;)Lio/grpc/b1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lio/grpc/f1/z$f;->k:Lio/grpc/f1/z;

    invoke-static {v0}, Lio/grpc/f1/z;->m(Lio/grpc/f1/z;)Lio/grpc/d1;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/z$f;->k:Lio/grpc/f1/z;

    invoke-static {v1}, Lio/grpc/f1/z;->i(Lio/grpc/f1/z;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/d1;->b(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lio/grpc/f1/z$f;->k:Lio/grpc/f1/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/f1/z;->j(Lio/grpc/f1/z;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 10
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lio/grpc/f1/z$f;->k:Lio/grpc/f1/z;

    invoke-static {p1}, Lio/grpc/f1/z;->m(Lio/grpc/f1/z;)Lio/grpc/d1;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/d1;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
