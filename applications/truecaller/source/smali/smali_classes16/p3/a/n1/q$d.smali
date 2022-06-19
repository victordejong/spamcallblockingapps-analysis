.class public Lp3/a/n1/q$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Lp3/a/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/f$a<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public b:Lp3/a/g1;

.field public final synthetic c:Lp3/a/n1/q;


# direct methods
.method public constructor <init>(Lp3/a/n1/q;Lp3/a/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/f$a<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "observer"

    .line 2
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/n1/q$d;->a:Lp3/a/f$a;

    return-void
.end method

.method public static f(Lp3/a/n1/q$d;Lp3/a/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/q$d;->b:Lp3/a/g1;

    .line 2
    iget-object p0, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 3
    iget-object p0, p0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    .line 4
    invoke-interface {p0, p1}, Lp3/a/n1/s;->h(Lp3/a/g1;)V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/n1/t2$a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 2
    iget-object v0, v0, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 3
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lp3/c/c;->a()Lp3/c/b;

    sget-object v1, Lp3/c/a;->b:Lp3/c/b;

    .line 6
    :try_start_0
    iget-object v2, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 7
    iget-object v2, v2, Lp3/a/n1/q;->c:Ljava/util/concurrent/Executor;

    .line 8
    new-instance v3, Lp3/a/n1/q$d$b;

    invoke-direct {v3, p0, v1, p1}, Lp3/a/n1/q$d$b;-><init>(Lp3/a/n1/q$d;Lp3/c/b;Lp3/a/n1/t2$a;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 10
    iget-object p1, p1, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 12
    iget-object v0, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 13
    iget-object v0, v0, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 14
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    throw p1
.end method

.method public b(Lp3/a/o0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 2
    iget-object v0, v0, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 3
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lp3/c/c;->a()Lp3/c/b;

    sget-object v1, Lp3/c/a;->b:Lp3/c/b;

    .line 6
    :try_start_0
    iget-object v2, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 7
    iget-object v2, v2, Lp3/a/n1/q;->c:Ljava/util/concurrent/Executor;

    .line 8
    new-instance v3, Lp3/a/n1/q$d$a;

    invoke-direct {v3, p0, v1, p1}, Lp3/a/n1/q$d$a;-><init>(Lp3/a/n1/q$d;Lp3/c/b;Lp3/a/o0;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 10
    iget-object p1, p1, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 12
    iget-object v0, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 13
    iget-object v0, v0, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 14
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    throw p1
.end method

.method public c(Lp3/a/g1;Lp3/a/o0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 2
    iget-object v0, v0, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 3
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lp3/a/n1/q$d;->g(Lp3/a/g1;Lp3/a/o0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 7
    iget-object p1, p1, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object p2, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 10
    iget-object p2, p2, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 11
    sget-object p2, Lp3/c/c;->a:Lp3/c/a;

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    throw p1
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 2
    iget-object v0, v0, Lp3/a/n1/q;->a:Lp3/a/p0;

    .line 3
    iget-object v0, v0, Lp3/a/p0;->a:Lp3/a/p0$d;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    if-eq v0, v1, :cond_1

    sget-object v1, Lp3/a/p0$d;->c:Lp3/a/p0$d;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 7
    iget-object v0, v0, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 8
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lp3/c/c;->a()Lp3/c/b;

    sget-object v0, Lp3/c/a;->b:Lp3/c/b;

    .line 11
    :try_start_0
    iget-object v1, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 12
    iget-object v1, v1, Lp3/a/n1/q;->c:Ljava/util/concurrent/Executor;

    .line 13
    new-instance v2, Lp3/a/n1/q$d$c;

    invoke-direct {v2, p0, v0}, Lp3/a/n1/q$d$c;-><init>(Lp3/a/n1/q$d;Lp3/c/b;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 15
    iget-object v0, v0, Lp3/a/n1/q;->b:Lp3/c/d;

    return-void

    :catchall_0
    move-exception v0

    .line 16
    iget-object v1, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 17
    iget-object v1, v1, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 18
    sget-object v1, Lp3/c/c;->a:Lp3/c/a;

    .line 19
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    throw v0
.end method

.method public e(Lp3/a/g1;Lp3/a/n1/t$a;Lp3/a/o0;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 2
    iget-object p2, p2, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 3
    sget-object p2, Lp3/c/c;->a:Lp3/c/a;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lp3/a/n1/q$d;->g(Lp3/a/g1;Lp3/a/o0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 7
    iget-object p1, p1, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object p2, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 10
    iget-object p2, p2, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 11
    sget-object p2, Lp3/c/c;->a:Lp3/c/a;

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    throw p1
.end method

.method public final g(Lp3/a/g1;Lp3/a/o0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 2
    invoke-virtual {v0}, Lp3/a/n1/q;->g()Lp3/a/r;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 4
    sget-object v2, Lp3/a/g1$b;->d:Lp3/a/g1$b;

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lp3/a/r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance p1, Lp3/a/n1/z0;

    invoke-direct {p1}, Lp3/a/n1/z0;-><init>()V

    .line 7
    iget-object p2, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 8
    iget-object p2, p2, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    .line 9
    invoke-interface {p2, p1}, Lp3/a/n1/s;->l(Lp3/a/n1/z0;)V

    .line 10
    sget-object p2, Lp3/a/g1;->i:Lp3/a/g1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientCall was cancelled at or after deadline. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lp3/a/g1;->b(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    .line 11
    new-instance p2, Lp3/a/o0;

    invoke-direct {p2}, Lp3/a/o0;-><init>()V

    .line 12
    :cond_0
    invoke-static {}, Lp3/c/c;->a()Lp3/c/b;

    sget-object v0, Lp3/c/a;->b:Lp3/c/b;

    .line 13
    iget-object v1, p0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 14
    iget-object v1, v1, Lp3/a/n1/q;->c:Ljava/util/concurrent/Executor;

    .line 15
    new-instance v2, Lp3/a/n1/r;

    invoke-direct {v2, p0, v0, p1, p2}, Lp3/a/n1/r;-><init>(Lp3/a/n1/q$d;Lp3/c/b;Lp3/a/g1;Lp3/a/o0;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
