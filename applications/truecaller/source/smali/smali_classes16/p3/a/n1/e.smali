.class public abstract Lp3/a/n1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/s2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lp3/a/m;)V
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Lp3/a/n1/a;

    .line 2
    iget-object v0, v0, Lp3/a/n1/a;->b:Lp3/a/n1/p0;

    const-string v1, "compressor"

    .line 3
    invoke-static {p1, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lp3/a/m;

    invoke-interface {v0, p1}, Lp3/a/n1/p0;->a(Lp3/a/m;)Lp3/a/n1/p0;

    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/e;->p()Lp3/a/n1/e$a;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lp3/c/c;->a()Lp3/c/b;

    sget-object v1, Lp3/c/a;->b:Lp3/c/b;

    .line 4
    new-instance v2, Lp3/a/n1/d;

    invoke-direct {v2, v0, v1, p1}, Lp3/a/n1/d;-><init>(Lp3/a/n1/e$a;Lp3/c/b;I)V

    check-cast v0, Lp3/a/o1/e$b;

    invoke-virtual {v0, v2}, Lp3/a/o1/e$b;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Ljava/io/InputStream;)V
    .locals 1

    const-string v0, "message"

    .line 1
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    move-object v0, p0

    check-cast v0, Lp3/a/n1/a;

    .line 3
    iget-object v0, v0, Lp3/a/n1/a;->b:Lp3/a/n1/p0;

    .line 4
    invoke-interface {v0}, Lp3/a/n1/p0;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    move-object v0, p0

    check-cast v0, Lp3/a/n1/a;

    .line 6
    iget-object v0, v0, Lp3/a/n1/a;->b:Lp3/a/n1/p0;

    .line 7
    invoke-interface {v0, p1}, Lp3/a/n1/p0;->b(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    invoke-static {p1}, Lp3/a/n1/r0;->c(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lp3/a/n1/r0;->c(Ljava/io/Closeable;)V

    throw v0
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/e;->p()Lp3/a/n1/e$a;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lp3/a/n1/e$a;->d:Lp3/a/n1/u1;

    .line 3
    iput-object v0, v1, Lp3/a/n1/u1;->a:Lp3/a/n1/u1$b;

    .line 4
    iput-object v1, v0, Lp3/a/n1/e$a;->a:Lp3/a/n1/a0;

    return-void
.end method

.method public final flush()V
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Lp3/a/n1/a;

    .line 2
    iget-object v1, v0, Lp3/a/n1/a;->b:Lp3/a/n1/p0;

    .line 3
    invoke-interface {v1}, Lp3/a/n1/p0;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v0, v0, Lp3/a/n1/a;->b:Lp3/a/n1/p0;

    .line 5
    invoke-interface {v0}, Lp3/a/n1/p0;->flush()V

    :cond_0
    return-void
.end method

.method public abstract p()Lp3/a/n1/e$a;
.end method
