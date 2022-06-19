.class public final Lp3/a/n1/w1;
.super Lp3/a/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/w1$a;
    }
.end annotation


# instance fields
.field public final a:Lp3/a/n1/u;

.field public final b:Lp3/a/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/p0<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Lp3/a/o0;

.field public final d:Lp3/a/c;

.field public final e:Lp3/a/q;

.field public final f:Lp3/a/n1/w1$a;

.field public final g:Ljava/lang/Object;

.field public h:Lp3/a/n1/s;

.field public i:Z

.field public j:Lp3/a/n1/e0;


# direct methods
.method public constructor <init>(Lp3/a/n1/u;Lp3/a/p0;Lp3/a/o0;Lp3/a/c;Lp3/a/n1/w1$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/n1/u;",
            "Lp3/a/p0<",
            "**>;",
            "Lp3/a/o0;",
            "Lp3/a/c;",
            "Lp3/a/n1/w1$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lp3/a/b$a;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp3/a/n1/w1;->g:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lp3/a/n1/w1;->a:Lp3/a/n1/u;

    .line 4
    iput-object p2, p0, Lp3/a/n1/w1;->b:Lp3/a/p0;

    .line 5
    iput-object p3, p0, Lp3/a/n1/w1;->c:Lp3/a/o0;

    .line 6
    iput-object p4, p0, Lp3/a/n1/w1;->d:Lp3/a/c;

    .line 7
    invoke-static {}, Lp3/a/q;->l()Lp3/a/q;

    move-result-object p1

    iput-object p1, p0, Lp3/a/n1/w1;->e:Lp3/a/q;

    .line 8
    iput-object p5, p0, Lp3/a/n1/w1;->f:Lp3/a/n1/w1$a;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/o0;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/w1;->i:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "apply() or fail() already called"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    const-string v0, "headers"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lp3/a/n1/w1;->c:Lp3/a/o0;

    invoke-virtual {v0, p1}, Lp3/a/o0;->f(Lp3/a/o0;)V

    .line 4
    iget-object p1, p0, Lp3/a/n1/w1;->e:Lp3/a/q;

    invoke-virtual {p1}, Lp3/a/q;->d()Lp3/a/q;

    move-result-object p1

    .line 5
    :try_start_0
    iget-object v0, p0, Lp3/a/n1/w1;->a:Lp3/a/n1/u;

    iget-object v1, p0, Lp3/a/n1/w1;->b:Lp3/a/p0;

    iget-object v2, p0, Lp3/a/n1/w1;->c:Lp3/a/o0;

    iget-object v3, p0, Lp3/a/n1/w1;->d:Lp3/a/c;

    invoke-interface {v0, v1, v2, v3}, Lp3/a/n1/u;->e(Lp3/a/p0;Lp3/a/o0;Lp3/a/c;)Lp3/a/n1/s;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lp3/a/n1/w1;->e:Lp3/a/q;

    invoke-virtual {v1, p1}, Lp3/a/q;->q(Lp3/a/q;)V

    .line 7
    invoke-virtual {p0, v0}, Lp3/a/n1/w1;->b(Lp3/a/n1/s;)V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lp3/a/n1/w1;->e:Lp3/a/q;

    invoke-virtual {v1, p1}, Lp3/a/q;->q(Lp3/a/q;)V

    throw v0
.end method

.method public final b(Lp3/a/n1/s;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/w1;->i:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "already finalized"

    invoke-static {v0, v2}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    iput-boolean v1, p0, Lp3/a/n1/w1;->i:Z

    .line 3
    iget-object v0, p0, Lp3/a/n1/w1;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lp3/a/n1/w1;->h:Lp3/a/n1/s;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 5
    iput-object p1, p0, Lp3/a/n1/w1;->h:Lp3/a/n1/s;

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 7
    iget-object p1, p0, Lp3/a/n1/w1;->f:Lp3/a/n1/w1$a;

    check-cast p1, Lp3/a/n1/m$a$a;

    invoke-virtual {p1}, Lp3/a/n1/m$a$a;->a()V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lp3/a/n1/w1;->j:Lp3/a/n1/e0;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    const-string v0, "delayedStream is null"

    invoke-static {v1, v0}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lp3/a/n1/w1;->j:Lp3/a/n1/e0;

    invoke-virtual {v0, p1}, Lp3/a/n1/e0;->s(Lp3/a/n1/s;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    check-cast p1, Lp3/a/n1/e0$i;

    .line 11
    iget-object p1, p1, Lp3/a/n1/e0$i;->a:Lp3/a/n1/e0;

    .line 12
    invoke-virtual {p1}, Lp3/a/n1/e0;->p()V

    .line 13
    :cond_3
    iget-object p1, p0, Lp3/a/n1/w1;->f:Lp3/a/n1/w1$a;

    check-cast p1, Lp3/a/n1/m$a$a;

    invoke-virtual {p1}, Lp3/a/n1/m$a$a;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
