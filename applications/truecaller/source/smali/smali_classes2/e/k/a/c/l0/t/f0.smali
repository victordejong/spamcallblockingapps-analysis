.class public abstract Le/k/a/c/l0/t/f0;
.super Le/k/a/c/l0/t/q0;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/l0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/k/a/c/l0/t/q0<",
        "TT;>;",
        "Le/k/a/c/l0/i;"
    }
.end annotation


# instance fields
.field public final c:Le/k/a/c/i;

.field public final d:Le/k/a/c/d;

.field public final e:Le/k/a/c/j0/h;

.field public final f:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/k/a/c/n0/s;

.field public transient h:Le/k/a/c/l0/s/l;

.field public final i:Ljava/lang/Object;

.field public final j:Z


# direct methods
.method public constructor <init>(Le/k/a/c/l0/t/f0;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Le/k/a/c/n0/s;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/t/f0<",
            "*>;",
            "Le/k/a/c/d;",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "*>;",
            "Le/k/a/c/n0/s;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Le/k/a/c/l0/t/q0;-><init>(Le/k/a/c/l0/t/q0;)V

    .line 12
    iget-object p1, p1, Le/k/a/c/l0/t/f0;->c:Le/k/a/c/i;

    iput-object p1, p0, Le/k/a/c/l0/t/f0;->c:Le/k/a/c/i;

    .line 13
    sget-object p1, Le/k/a/c/l0/s/l$b;->b:Le/k/a/c/l0/s/l$b;

    iput-object p1, p0, Le/k/a/c/l0/t/f0;->h:Le/k/a/c/l0/s/l;

    .line 14
    iput-object p2, p0, Le/k/a/c/l0/t/f0;->d:Le/k/a/c/d;

    .line 15
    iput-object p3, p0, Le/k/a/c/l0/t/f0;->e:Le/k/a/c/j0/h;

    .line 16
    iput-object p4, p0, Le/k/a/c/l0/t/f0;->f:Le/k/a/c/n;

    .line 17
    iput-object p5, p0, Le/k/a/c/l0/t/f0;->g:Le/k/a/c/n0/s;

    .line 18
    iput-object p6, p0, Le/k/a/c/l0/t/f0;->i:Ljava/lang/Object;

    .line 19
    iput-boolean p7, p0, Le/k/a/c/l0/t/f0;->j:Z

    return-void
.end method

.method public constructor <init>(Le/k/a/c/m0/j;Le/k/a/c/j0/h;Le/k/a/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/m0/j;",
            "Z",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/l0/t/q0;-><init>(Le/k/a/c/i;)V

    .line 2
    iget-object p1, p1, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

    .line 3
    iput-object p1, p0, Le/k/a/c/l0/t/f0;->c:Le/k/a/c/i;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Le/k/a/c/l0/t/f0;->d:Le/k/a/c/d;

    .line 5
    iput-object p2, p0, Le/k/a/c/l0/t/f0;->e:Le/k/a/c/j0/h;

    .line 6
    iput-object p3, p0, Le/k/a/c/l0/t/f0;->f:Le/k/a/c/n;

    .line 7
    iput-object p1, p0, Le/k/a/c/l0/t/f0;->g:Le/k/a/c/n0/s;

    .line 8
    iput-object p1, p0, Le/k/a/c/l0/t/f0;->i:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Le/k/a/c/l0/t/f0;->j:Z

    .line 10
    sget-object p1, Le/k/a/c/l0/s/l$b;->b:Le/k/a/c/l0/s/l$b;

    iput-object p1, p0, Le/k/a/c/l0/t/f0;->h:Le/k/a/c/l0/s/l;

    return-void
.end method


# virtual methods
.method public b(Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/a/r$a;->d:Le/k/a/a/r$a;

    iget-object v1, p0, Le/k/a/c/l0/t/f0;->e:Le/k/a/c/j0/h;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p2}, Le/k/a/c/j0/h;->a(Le/k/a/c/d;)Le/k/a/c/j0/h;

    move-result-object v1

    :cond_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Le/k/a/c/d;->c()Le/k/a/c/g0/i;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Le/k/a/c/a0;->E()Le/k/a/c/b;

    move-result-object v4

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v4, v3}, Le/k/a/c/b;->d(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {p1, v3, v4}, Le/k/a/c/a0;->Q(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_8

    .line 7
    iget-object v3, p0, Le/k/a/c/l0/t/f0;->f:Le/k/a/c/n;

    if-nez v3, :cond_7

    .line 8
    iget-object v6, p0, Le/k/a/c/l0/t/f0;->c:Le/k/a/c/i;

    .line 9
    invoke-virtual {v6}, Le/k/a/c/i;->E()Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    move v6, v4

    goto :goto_3

    .line 10
    :cond_2
    invoke-virtual {v6}, Le/k/a/c/i;->C()Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_2
    move v6, v5

    goto :goto_3

    .line 11
    :cond_3
    iget-boolean v6, v6, Le/k/a/c/i;->e:Z

    if-eqz v6, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p1}, Le/k/a/c/a0;->E()Le/k/a/c/b;

    move-result-object v6

    if-eqz v6, :cond_6

    if-eqz p2, :cond_6

    .line 13
    invoke-interface {p2}, Le/k/a/c/d;->c()Le/k/a/c/g0/i;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 14
    invoke-interface {p2}, Le/k/a/c/d;->c()Le/k/a/c/g0/i;

    move-result-object v7

    invoke-virtual {v6, v7}, Le/k/a/c/b;->U(Le/k/a/c/g0/b;)Le/k/a/c/b0/f$b;

    move-result-object v6

    .line 15
    sget-object v7, Le/k/a/c/b0/f$b;->b:Le/k/a/c/b0/f$b;

    if-ne v6, v7, :cond_5

    goto :goto_2

    .line 16
    :cond_5
    sget-object v7, Le/k/a/c/b0/f$b;->a:Le/k/a/c/b0/f$b;

    if-ne v6, v7, :cond_6

    goto :goto_1

    .line 17
    :cond_6
    sget-object v6, Le/k/a/c/p;->r:Le/k/a/c/p;

    invoke-virtual {p1, v6}, Le/k/a/c/a0;->L(Le/k/a/c/p;)Z

    move-result v6

    :goto_3
    if-eqz v6, :cond_8

    .line 18
    iget-object v3, p0, Le/k/a/c/l0/t/f0;->c:Le/k/a/c/i;

    .line 19
    invoke-virtual {p1, v3, p2}, Le/k/a/c/a0;->y(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v3

    goto :goto_4

    .line 20
    :cond_7
    invoke-virtual {p1, v3, p2}, Le/k/a/c/a0;->H(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v3

    .line 21
    :cond_8
    :goto_4
    iget-object v6, p0, Le/k/a/c/l0/t/f0;->d:Le/k/a/c/d;

    if-ne v6, p2, :cond_9

    iget-object v6, p0, Le/k/a/c/l0/t/f0;->e:Le/k/a/c/j0/h;

    if-ne v6, v1, :cond_9

    iget-object v6, p0, Le/k/a/c/l0/t/f0;->f:Le/k/a/c/n;

    if-ne v6, v3, :cond_9

    move-object v1, p0

    goto :goto_5

    .line 22
    :cond_9
    iget-object v6, p0, Le/k/a/c/l0/t/f0;->g:Le/k/a/c/n0/s;

    invoke-virtual {p0, p2, v1, v3, v6}, Le/k/a/c/l0/t/f0;->r(Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Le/k/a/c/n0/s;)Le/k/a/c/l0/t/f0;

    move-result-object v1

    :goto_5
    if-eqz p2, :cond_11

    .line 23
    iget-object v3, p1, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 24
    iget-object v6, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    .line 25
    invoke-interface {p2, v3, v6}, Le/k/a/c/d;->f(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/a/r$b;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 26
    iget-object v3, p2, Le/k/a/a/r$b;->b:Le/k/a/a/r$a;

    .line 27
    sget-object v6, Le/k/a/a/r$a;->g:Le/k/a/a/r$a;

    if-eq v3, v6, :cond_11

    .line 28
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v3, v5, :cond_f

    const/4 v6, 0x2

    if-eq v3, v6, :cond_e

    const/4 v6, 0x3

    if-eq v3, v6, :cond_d

    const/4 v0, 0x4

    if-eq v3, v0, :cond_c

    const/4 v0, 0x5

    if-eq v3, v0, :cond_a

    move-object v0, v2

    goto :goto_7

    .line 29
    :cond_a
    iget-object p2, p2, Le/k/a/a/r$b;->d:Ljava/lang/Class;

    .line 30
    invoke-virtual {p1, v2, p2}, Le/k/a/c/a0;->J(Le/k/a/c/g0/s;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_6

    .line 31
    :cond_b
    invoke-virtual {p1, v0}, Le/k/a/c/a0;->K(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_7

    .line 32
    :cond_c
    iget-object p1, p0, Le/k/a/c/l0/t/f0;->c:Le/k/a/c/i;

    invoke-static {p1}, Ln3/g0/y;->i0(Le/k/a/c/i;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 34
    invoke-static {v0}, Le/k/a/c/n0/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_d
    :goto_6
    move v4, v5

    goto :goto_7

    .line 35
    :cond_e
    iget-object p1, p0, Le/k/a/c/l0/t/f0;->c:Le/k/a/c/i;

    invoke-virtual {p1}, Le/k/a/b/z/a;->d()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_6

    :cond_f
    move-object v0, v2

    goto :goto_6

    .line 36
    :goto_7
    iget-object p1, p0, Le/k/a/c/l0/t/f0;->i:Ljava/lang/Object;

    if-ne p1, v0, :cond_10

    iget-boolean p1, p0, Le/k/a/c/l0/t/f0;->j:Z

    if-eq p1, v4, :cond_11

    .line 37
    :cond_10
    invoke-virtual {v1, v0, v4}, Le/k/a/c/l0/t/f0;->q(Ljava/lang/Object;Z)Le/k/a/c/l0/t/f0;

    move-result-object v1

    :cond_11
    return-object v1
.end method

.method public d(Le/k/a/c/a0;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "TT;)Z"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    .line 4
    iget-boolean p1, p0, Le/k/a/c/l0/t/f0;->j:Z

    return p1

    .line 5
    :cond_2
    iget-object v0, p0, Le/k/a/c/l0/t/f0;->i:Ljava/lang/Object;

    if-nez v0, :cond_3

    return v2

    .line 6
    :cond_3
    iget-object v0, p0, Le/k/a/c/l0/t/f0;->f:Le/k/a/c/n;

    if-nez v0, :cond_4

    .line 7
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/k/a/c/l0/t/f0;->p(Le/k/a/c/a0;Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0
    :try_end_0
    .catch Le/k/a/c/k; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Le/k/a/c/x;

    invoke-direct {p2, p1}, Le/k/a/c/x;-><init>(Le/k/a/c/k;)V

    throw p2

    .line 9
    :cond_4
    :goto_1
    iget-object v1, p0, Le/k/a/c/l0/t/f0;->i:Ljava/lang/Object;

    sget-object v2, Le/k/a/a/r$a;->d:Le/k/a/a/r$a;

    if-ne v1, v2, :cond_5

    .line 10
    invoke-virtual {v0, p1, p2}, Le/k/a/c/n;->d(Le/k/a/c/a0;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 11
    :cond_5
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/f0;->g:Le/k/a/c/n0/s;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le/k/a/b/g;",
            "Le/k/a/c/a0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Le/k/a/c/l0/t/f0;->g:Le/k/a/c/n0/s;

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Le/k/a/c/l0/t/f0;->f:Le/k/a/c/n;

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Le/k/a/c/l0/t/f0;->p(Le/k/a/c/a0;Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    .line 7
    :cond_2
    iget-object v1, p0, Le/k/a/c/l0/t/f0;->e:Le/k/a/c/j0/h;

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v0, p1, p2, p3, v1}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v0, p1, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    :goto_0
    return-void
.end method

.method public g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le/k/a/b/g;",
            "Le/k/a/c/a0;",
            "Le/k/a/c/j0/h;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Le/k/a/c/l0/t/f0;->g:Le/k/a/c/n0/s;

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Le/k/a/c/l0/t/f0;->f:Le/k/a/c/n;

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Le/k/a/c/l0/t/f0;->p(Le/k/a/c/a0;Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    .line 7
    :cond_2
    invoke-virtual {v0, p1, p2, p3, p4}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    return-void
.end method

.method public h(Le/k/a/c/n0/s;)Le/k/a/c/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/n0/s;",
            ")",
            "Le/k/a/c/n<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/f0;->f:Le/k/a/c/n;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/k/a/c/n;->h(Le/k/a/c/n0/s;)Le/k/a/c/n;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/k/a/c/l0/t/f0;->f:Le/k/a/c/n;

    if-ne v0, v1, :cond_0

    return-object p0

    .line 4
    :cond_0
    iget-object v1, p0, Le/k/a/c/l0/t/f0;->g:Le/k/a/c/n0/s;

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v2, Le/k/a/c/n0/s$a;

    invoke-direct {v2, p1, v1}, Le/k/a/c/n0/s$a;-><init>(Le/k/a/c/n0/s;Le/k/a/c/n0/s;)V

    move-object p1, v2

    .line 6
    :goto_0
    iget-object v2, p0, Le/k/a/c/l0/t/f0;->f:Le/k/a/c/n;

    if-ne v2, v0, :cond_2

    if-ne v1, p1, :cond_2

    return-object p0

    .line 7
    :cond_2
    iget-object v1, p0, Le/k/a/c/l0/t/f0;->d:Le/k/a/c/d;

    iget-object v2, p0, Le/k/a/c/l0/t/f0;->e:Le/k/a/c/j0/h;

    invoke-virtual {p0, v1, v2, v0, p1}, Le/k/a/c/l0/t/f0;->r(Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Le/k/a/c/n0/s;)Le/k/a/c/l0/t/f0;

    move-result-object p1

    return-object p1
.end method

.method public final p(Le/k/a/c/a0;Ljava/lang/Class;)Le/k/a/c/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/f0;->h:Le/k/a/c/l0/s/l;

    invoke-virtual {v0, p2}, Le/k/a/c/l0/s/l;->c(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Le/k/a/c/l0/t/f0;->c:Le/k/a/c/i;

    invoke-virtual {v0}, Le/k/a/c/i;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/k/a/c/l0/t/f0;->c:Le/k/a/c/i;

    invoke-virtual {p1, v0, p2}, Le/k/a/c/a0;->s(Le/k/a/c/i;Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/k/a/c/l0/t/f0;->d:Le/k/a/c/d;

    invoke-virtual {p1, v0, v1}, Le/k/a/c/a0;->y(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/k/a/c/l0/t/f0;->d:Le/k/a/c/d;

    invoke-virtual {p1, p2, v0}, Le/k/a/c/a0;->z(Ljava/lang/Class;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1

    .line 6
    :goto_0
    iget-object v0, p0, Le/k/a/c/l0/t/f0;->g:Le/k/a/c/n0/s;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Le/k/a/c/n;->h(Le/k/a/c/n0/s;)Le/k/a/c/n;

    move-result-object p1

    :cond_1
    move-object v0, p1

    .line 8
    iget-object p1, p0, Le/k/a/c/l0/t/f0;->h:Le/k/a/c/l0/s/l;

    invoke-virtual {p1, p2, v0}, Le/k/a/c/l0/s/l;->b(Ljava/lang/Class;Le/k/a/c/n;)Le/k/a/c/l0/s/l;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/l0/t/f0;->h:Le/k/a/c/l0/s/l;

    :cond_2
    return-object v0
.end method

.method public abstract q(Ljava/lang/Object;Z)Le/k/a/c/l0/t/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)",
            "Le/k/a/c/l0/t/f0<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract r(Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Le/k/a/c/n0/s;)Le/k/a/c/l0/t/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d;",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "*>;",
            "Le/k/a/c/n0/s;",
            ")",
            "Le/k/a/c/l0/t/f0<",
            "TT;>;"
        }
    .end annotation
.end method
