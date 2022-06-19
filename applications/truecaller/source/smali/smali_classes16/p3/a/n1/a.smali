.class public abstract Lp3/a/n1/a;
.super Lp3/a/n1/e;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/s;
.implements Lp3/a/n1/v1$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/a$a;,
        Lp3/a/n1/a$c;,
        Lp3/a/n1/a$b;
    }
.end annotation


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lp3/a/n1/x2;

.field public final b:Lp3/a/n1/p0;

.field public c:Z

.field public d:Z

.field public e:Lp3/a/o0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lp3/a/n1/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lp3/a/n1/a;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lp3/a/n1/z2;Lp3/a/n1/r2;Lp3/a/n1/x2;Lp3/a/o0;Lp3/a/c;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp3/a/n1/e;-><init>()V

    const-string v0, "headers"

    .line 2
    invoke-static {p4, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transportTracer"

    .line 3
    invoke-static {p3, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lp3/a/n1/a;->a:Lp3/a/n1/x2;

    .line 4
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Lp3/a/n1/r0;->l:Lp3/a/c$a;

    invoke-virtual {p5, v0}, Lp3/a/c;->a(Lp3/a/c$a;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    .line 5
    iput-boolean p3, p0, Lp3/a/n1/a;->c:Z

    .line 6
    iput-boolean p6, p0, Lp3/a/n1/a;->d:Z

    if-nez p6, :cond_0

    .line 7
    new-instance p3, Lp3/a/n1/v1;

    invoke-direct {p3, p0, p1, p2}, Lp3/a/n1/v1;-><init>(Lp3/a/n1/v1$d;Lp3/a/n1/z2;Lp3/a/n1/r2;)V

    iput-object p3, p0, Lp3/a/n1/a;->b:Lp3/a/n1/p0;

    .line 8
    iput-object p4, p0, Lp3/a/n1/a;->e:Lp3/a/o0;

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lp3/a/n1/a$a;

    invoke-direct {p1, p0, p4, p2}, Lp3/a/n1/a$a;-><init>(Lp3/a/n1/a;Lp3/a/o0;Lp3/a/n1/r2;)V

    iput-object p1, p0, Lp3/a/n1/a;->b:Lp3/a/n1/p0;

    :goto_0
    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/a;->r()Lp3/a/n1/a$c;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lp3/a/n1/e$a;->a:Lp3/a/n1/a0;

    invoke-interface {v0, p1}, Lp3/a/n1/a0;->d(I)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/a;->b:Lp3/a/n1/p0;

    invoke-interface {v0, p1}, Lp3/a/n1/p0;->e(I)V

    return-void
.end method

.method public final g(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/a;->r()Lp3/a/n1/a$c;

    move-result-object v0

    .line 2
    iput-boolean p1, v0, Lp3/a/n1/a$c;->k:Z

    return-void
.end method

.method public final h(Lp3/a/g1;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lp3/a/g1;->g()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Should not cancel with OK status"

    invoke-static {v0, v2}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lp3/a/n1/a;->q()Lp3/a/n1/a$b;

    move-result-object v0

    check-cast v0, Lp3/a/o1/e$a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v2, Lp3/c/c;->a:Lp3/c/a;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    iget-object v2, v0, Lp3/a/o1/e$a;->a:Lp3/a/o1/e;

    .line 7
    iget-object v2, v2, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 8
    iget-object v2, v2, Lp3/a/o1/e$b;->y:Ljava/lang/Object;

    .line 9
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-object v0, v0, Lp3/a/o1/e$a;->a:Lp3/a/o1/e;

    .line 11
    iget-object v0, v0, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, p1, v1, v3}, Lp3/a/o1/e$b;->n(Lp3/a/g1;ZLp3/a/o0;)V

    .line 13
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 14
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    throw p1
.end method

.method public final i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/a;->r()Lp3/a/n1/a$c;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Lp3/a/n1/a$c;->o:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lp3/a/n1/a;->r()Lp3/a/n1/a$c;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lp3/a/n1/a$c;->o:Z

    .line 5
    iget-object v0, p0, Lp3/a/n1/a;->b:Lp3/a/n1/p0;

    .line 6
    invoke-interface {v0}, Lp3/a/n1/p0;->close()V

    :cond_0
    return-void
.end method

.method public final j(Lp3/a/t;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/a;->r()Lp3/a/n1/a$c;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lp3/a/n1/a$c;->j:Lp3/a/n1/t;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Already called start"

    invoke-static {v1, v2}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    const-string v1, "decompressorRegistry"

    .line 3
    invoke-static {p1, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, v0, Lp3/a/n1/a$c;->l:Lp3/a/t;

    return-void
.end method

.method public final l(Lp3/a/n1/z0;)V
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Lp3/a/o1/e;

    .line 2
    iget-object v0, v0, Lp3/a/o1/e;->o:Lp3/a/a;

    .line 3
    sget-object v1, Lp3/a/y;->a:Lp3/a/a$c;

    .line 4
    iget-object v0, v0, Lp3/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "remote_addr"

    .line 5
    invoke-virtual {p1, v1, v0}, Lp3/a/n1/z0;->b(Ljava/lang/String;Ljava/lang/Object;)Lp3/a/n1/z0;

    return-void
.end method

.method public m(Lp3/a/r;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lp3/a/n1/a;->e:Lp3/a/o0;

    sget-object v1, Lp3/a/n1/r0;->b:Lp3/a/o0$f;

    invoke-virtual {v0, v1}, Lp3/a/o0;->b(Lp3/a/o0$f;)V

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lp3/a/r;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 3
    iget-object p1, p0, Lp3/a/n1/a;->e:Lp3/a/o0;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lp3/a/o0;->h(Lp3/a/o0$f;Ljava/lang/Object;)V

    return-void
.end method

.method public final n(Lp3/a/n1/t;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/a;->r()Lp3/a/n1/a$c;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lp3/a/n1/a$c;->j:Lp3/a/n1/t;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Already called setListener"

    invoke-static {v1, v2}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    const-string v1, "listener"

    .line 3
    invoke-static {p1, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, v0, Lp3/a/n1/a$c;->j:Lp3/a/n1/t;

    .line 4
    iget-boolean p1, p0, Lp3/a/n1/a;->d:Z

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lp3/a/n1/a;->q()Lp3/a/n1/a$b;

    move-result-object p1

    iget-object v0, p0, Lp3/a/n1/a;->e:Lp3/a/o0;

    check-cast p1, Lp3/a/o1/e$a;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lp3/a/o1/e$a;->a(Lp3/a/o0;[B)V

    .line 6
    iput-object v1, p0, Lp3/a/n1/a;->e:Lp3/a/o0;

    :cond_1
    return-void
.end method

.method public final o(Lp3/a/n1/y2;ZZI)V
    .locals 5

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "null frame before EOS"

    .line 1
    invoke-static {v0, v1}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lp3/a/n1/a;->q()Lp3/a/n1/a$b;

    move-result-object v0

    check-cast v0, Lp3/a/o1/e$a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lp3/c/c;->a:Lp3/c/a;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_2

    .line 6
    sget-object p1, Lp3/a/o1/e;->q:Lv3/f;

    goto :goto_2

    .line 7
    :cond_2
    check-cast p1, Lp3/a/o1/k;

    .line 8
    iget-object p1, p1, Lp3/a/o1/k;->a:Lv3/f;

    .line 9
    iget-wide v1, p1, Lv3/f;->b:J

    long-to-int v1, v1

    if-lez v1, :cond_3

    .line 10
    iget-object v2, v0, Lp3/a/o1/e$a;->a:Lp3/a/o1/e;

    .line 11
    invoke-virtual {v2}, Lp3/a/o1/e;->p()Lp3/a/n1/e$a;

    move-result-object v2

    .line 12
    iget-object v3, v2, Lp3/a/n1/e$a;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 13
    :try_start_0
    iget v4, v2, Lp3/a/n1/e$a;->e:I

    add-int/2addr v4, v1

    iput v4, v2, Lp3/a/n1/e$a;->e:I

    .line 14
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 15
    :cond_3
    :goto_2
    :try_start_1
    iget-object v1, v0, Lp3/a/o1/e$a;->a:Lp3/a/o1/e;

    .line 16
    iget-object v1, v1, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 17
    iget-object v1, v1, Lp3/a/o1/e$b;->y:Ljava/lang/Object;

    .line 18
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 19
    :try_start_2
    iget-object v2, v0, Lp3/a/o1/e$a;->a:Lp3/a/o1/e;

    .line 20
    iget-object v2, v2, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 21
    invoke-static {v2, p1, p2, p3}, Lp3/a/o1/e$b;->m(Lp3/a/o1/e$b;Lv3/f;ZZ)V

    .line 22
    iget-object p1, v0, Lp3/a/o1/e$a;->a:Lp3/a/o1/e;

    .line 23
    iget-object p1, p1, Lp3/a/n1/a;->a:Lp3/a/n1/x2;

    .line 24
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_4

    goto :goto_3

    .line 25
    :cond_4
    iget-wide p2, p1, Lp3/a/n1/x2;->f:J

    int-to-long v2, p4

    add-long/2addr p2, v2

    iput-wide p2, p1, Lp3/a/n1/x2;->f:J

    .line 26
    iget-object p1, p1, Lp3/a/n1/x2;->a:Lp3/a/n1/u2;

    invoke-interface {p1}, Lp3/a/n1/u2;->a()J

    .line 27
    :goto_3
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    .line 28
    sget-object p2, Lp3/c/c;->a:Lp3/c/a;

    .line 29
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    throw p1
.end method

.method public bridge synthetic p()Lp3/a/n1/e$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/a;->r()Lp3/a/n1/a$c;

    move-result-object v0

    return-object v0
.end method

.method public abstract q()Lp3/a/n1/a$b;
.end method

.method public abstract r()Lp3/a/n1/a$c;
.end method
