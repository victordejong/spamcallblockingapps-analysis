.class public final Ln3/y/b/a/t0/r;
.super Ln3/y/b/a/t0/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/t0/r$a;,
        Ln3/y/b/a/t0/r$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/y/b/a/t0/g<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Ln3/y/b/a/t0/t;

.field public final j:Z

.field public final k:Ln3/y/b/a/l0$c;

.field public final l:Ln3/y/b/a/l0$b;

.field public m:Ln3/y/b/a/t0/r$b;

.field public n:Ln3/y/b/a/t0/q;

.field public o:Ln3/y/b/a/t0/c0$a;

.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/t;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/y/b/a/t0/g;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/t0/r;->i:Ln3/y/b/a/t0/t;

    .line 3
    iput-boolean p2, p0, Ln3/y/b/a/t0/r;->j:Z

    .line 4
    new-instance p2, Ln3/y/b/a/l0$c;

    invoke-direct {p2}, Ln3/y/b/a/l0$c;-><init>()V

    iput-object p2, p0, Ln3/y/b/a/t0/r;->k:Ln3/y/b/a/l0$c;

    .line 5
    new-instance p2, Ln3/y/b/a/l0$b;

    invoke-direct {p2}, Ln3/y/b/a/l0$b;-><init>()V

    iput-object p2, p0, Ln3/y/b/a/t0/r;->l:Ln3/y/b/a/l0$b;

    .line 6
    invoke-interface {p1}, Ln3/y/b/a/t0/t;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 7
    new-instance p2, Ln3/y/b/a/t0/r$b;

    new-instance v0, Ln3/y/b/a/t0/r$a;

    invoke-direct {v0, p1}, Ln3/y/b/a/t0/r$a;-><init>(Ljava/lang/Object;)V

    sget-object p1, Ln3/y/b/a/t0/r$b;->d:Ljava/lang/Object;

    invoke-direct {p2, v0, p1}, Ln3/y/b/a/t0/r$b;-><init>(Ln3/y/b/a/l0;Ljava/lang/Object;)V

    .line 8
    iput-object p2, p0, Ln3/y/b/a/t0/r;->m:Ln3/y/b/a/t0/r$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public c(Ln3/y/b/a/t0/s;)V
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Ln3/y/b/a/t0/q;

    .line 2
    iget-object v1, v0, Ln3/y/b/a/t0/q;->d:Ln3/y/b/a/t0/s;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Ln3/y/b/a/t0/q;->a:Ln3/y/b/a/t0/t;

    invoke-interface {v0, v1}, Ln3/y/b/a/t0/t;->c(Ln3/y/b/a/t0/s;)V

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/t0/r;->n:Ln3/y/b/a/t0/q;

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Ln3/y/b/a/t0/r;->o:Ln3/y/b/a/t0/c0$a;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Ln3/y/b/a/t0/c0$a;->q()V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Ln3/y/b/a/t0/r;->o:Ln3/y/b/a/t0/c0$a;

    .line 9
    iput-object p1, p0, Ln3/y/b/a/t0/r;->n:Ln3/y/b/a/t0/q;

    :cond_1
    return-void
.end method

.method public bridge synthetic e(Ln3/y/b/a/t0/t$a;Ln3/y/b/a/w0/b;J)Ln3/y/b/a/t0/s;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Ln3/y/b/a/t0/r;->v(Ln3/y/b/a/t0/t$a;Ln3/y/b/a/w0/b;J)Ln3/y/b/a/t0/q;

    move-result-object p1

    return-object p1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/r;->i:Ln3/y/b/a/t0/t;

    invoke-interface {v0}, Ln3/y/b/a/t0/t;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public m(Ln3/y/b/a/w0/e0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ln3/y/b/a/t0/g;->h:Ln3/y/b/a/w0/e0;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/g;->g:Landroid/os/Handler;

    .line 3
    iget-boolean p1, p0, Ln3/y/b/a/t0/r;->j:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Ln3/y/b/a/t0/r;->p:Z

    const/4 p1, 0x0

    .line 5
    iget-object v0, p0, Ln3/y/b/a/t0/r;->i:Ln3/y/b/a/t0/t;

    invoke-virtual {p0, p1, v0}, Ln3/y/b/a/t0/g;->t(Ljava/lang/Object;Ln3/y/b/a/t0/t;)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln3/y/b/a/t0/r;->q:Z

    .line 2
    iput-boolean v0, p0, Ln3/y/b/a/t0/r;->p:Z

    .line 3
    invoke-super {p0}, Ln3/y/b/a/t0/g;->o()V

    return-void
.end method

.method public p(Ljava/lang/Object;Ln3/y/b/a/t0/t$a;)Ln3/y/b/a/t0/t$a;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p2, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ln3/y/b/a/t0/r;->m:Ln3/y/b/a/t0/r$b;

    .line 4
    iget-object v0, v0, Ln3/y/b/a/t0/r$b;->c:Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object p1, Ln3/y/b/a/t0/r$b;->d:Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-virtual {p2, p1}, Ln3/y/b/a/t0/t$a;->a(Ljava/lang/Object;)Ln3/y/b/a/t0/t$a;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/Object;Ln3/y/b/a/t0/t;Ln3/y/b/a/l0;)V
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-boolean p1, p0, Ln3/y/b/a/t0/r;->q:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Ln3/y/b/a/t0/r;->m:Ln3/y/b/a/t0/r$b;

    .line 4
    new-instance p2, Ln3/y/b/a/t0/r$b;

    iget-object p1, p1, Ln3/y/b/a/t0/r$b;->c:Ljava/lang/Object;

    invoke-direct {p2, p3, p1}, Ln3/y/b/a/t0/r$b;-><init>(Ln3/y/b/a/l0;Ljava/lang/Object;)V

    .line 5
    iput-object p2, p0, Ln3/y/b/a/t0/r;->m:Ln3/y/b/a/t0/r$b;

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p3}, Ln3/y/b/a/l0;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    sget-object p1, Ln3/y/b/a/t0/r$b;->d:Ljava/lang/Object;

    .line 8
    new-instance p2, Ln3/y/b/a/t0/r$b;

    invoke-direct {p2, p3, p1}, Ln3/y/b/a/t0/r$b;-><init>(Ln3/y/b/a/l0;Ljava/lang/Object;)V

    .line 9
    iput-object p2, p0, Ln3/y/b/a/t0/r;->m:Ln3/y/b/a/t0/r$b;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 10
    iget-object p2, p0, Ln3/y/b/a/t0/r;->k:Ln3/y/b/a/l0$c;

    invoke-virtual {p3, p1, p2}, Ln3/y/b/a/l0;->m(ILn3/y/b/a/l0$c;)Ln3/y/b/a/l0$c;

    .line 11
    iget-object v1, p0, Ln3/y/b/a/t0/r;->k:Ln3/y/b/a/l0$c;

    .line 12
    iget-wide p1, v1, Ln3/y/b/a/l0$c;->i:J

    .line 13
    iget-object v0, p0, Ln3/y/b/a/t0/r;->n:Ln3/y/b/a/t0/q;

    if-eqz v0, :cond_2

    .line 14
    iget-wide v2, v0, Ln3/y/b/a/t0/q;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    move-wide v4, v2

    goto :goto_0

    :cond_2
    move-wide v4, p1

    .line 15
    :goto_0
    iget-object v2, p0, Ln3/y/b/a/t0/r;->l:Ln3/y/b/a/l0$b;

    const/4 v3, 0x0

    move-object v0, p3

    .line 16
    invoke-virtual/range {v0 .. v5}, Ln3/y/b/a/l0;->j(Ln3/y/b/a/l0$c;Ln3/y/b/a/l0$b;IJ)Landroid/util/Pair;

    move-result-object p1

    .line 17
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 18
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 19
    new-instance p1, Ln3/y/b/a/t0/r$b;

    invoke-direct {p1, p3, p2}, Ln3/y/b/a/t0/r$b;-><init>(Ln3/y/b/a/l0;Ljava/lang/Object;)V

    .line 20
    iput-object p1, p0, Ln3/y/b/a/t0/r;->m:Ln3/y/b/a/t0/r$b;

    .line 21
    iget-object p1, p0, Ln3/y/b/a/t0/r;->n:Ln3/y/b/a/t0/q;

    if-eqz p1, :cond_4

    .line 22
    iput-wide v0, p1, Ln3/y/b/a/t0/q;->g:J

    .line 23
    iget-object p2, p1, Ln3/y/b/a/t0/q;->b:Ln3/y/b/a/t0/t$a;

    iget-object p3, p2, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    .line 24
    sget-object v0, Ln3/y/b/a/t0/r$b;->d:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    iget-object p3, p0, Ln3/y/b/a/t0/r;->m:Ln3/y/b/a/t0/r$b;

    .line 26
    iget-object p3, p3, Ln3/y/b/a/t0/r$b;->c:Ljava/lang/Object;

    .line 27
    :cond_3
    invoke-virtual {p2, p3}, Ln3/y/b/a/t0/t$a;->a(Ljava/lang/Object;)Ln3/y/b/a/t0/t$a;

    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Ln3/y/b/a/t0/q;->g(Ln3/y/b/a/t0/t$a;)V

    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Ln3/y/b/a/t0/r;->q:Z

    .line 30
    iget-object p1, p0, Ln3/y/b/a/t0/r;->m:Ln3/y/b/a/t0/r$b;

    invoke-virtual {p0, p1}, Ln3/y/b/a/t0/b;->n(Ln3/y/b/a/l0;)V

    return-void
.end method

.method public u(Ln3/y/b/a/t0/t$a;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/r;->n:Ln3/y/b/a/t0/q;

    if-eqz v0, :cond_1

    iget-object v0, v0, Ln3/y/b/a/t0/q;->b:Ln3/y/b/a/t0/t$a;

    .line 2
    invoke-virtual {p1, v0}, Ln3/y/b/a/t0/t$a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public v(Ln3/y/b/a/t0/t$a;Ln3/y/b/a/w0/b;J)Ln3/y/b/a/t0/q;
    .locals 7

    .line 1
    new-instance v6, Ln3/y/b/a/t0/q;

    iget-object v1, p0, Ln3/y/b/a/t0/r;->i:Ln3/y/b/a/t0/t;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Ln3/y/b/a/t0/q;-><init>(Ln3/y/b/a/t0/t;Ln3/y/b/a/t0/t$a;Ln3/y/b/a/w0/b;J)V

    .line 2
    iget-boolean p2, p0, Ln3/y/b/a/t0/r;->q:Z

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p1, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    .line 4
    sget-object p3, Ln3/y/b/a/t0/r$b;->d:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    iget-object p2, p0, Ln3/y/b/a/t0/r;->m:Ln3/y/b/a/t0/r$b;

    .line 6
    iget-object p2, p2, Ln3/y/b/a/t0/r$b;->c:Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-virtual {p1, p2}, Ln3/y/b/a/t0/t$a;->a(Ljava/lang/Object;)Ln3/y/b/a/t0/t$a;

    move-result-object p1

    .line 8
    invoke-virtual {v6, p1}, Ln3/y/b/a/t0/q;->g(Ln3/y/b/a/t0/t$a;)V

    goto :goto_0

    .line 9
    :cond_1
    iput-object v6, p0, Ln3/y/b/a/t0/r;->n:Ln3/y/b/a/t0/q;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 10
    iget-object p2, p0, Ln3/y/b/a/t0/b;->c:Ln3/y/b/a/t0/c0$a;

    .line 11
    new-instance p3, Ln3/y/b/a/t0/c0$a;

    iget-object v1, p2, Ln3/y/b/a/t0/c0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v0, p3

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ln3/y/b/a/t0/c0$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILn3/y/b/a/t0/t$a;J)V

    .line 12
    iput-object p3, p0, Ln3/y/b/a/t0/r;->o:Ln3/y/b/a/t0/c0$a;

    .line 13
    invoke-virtual {p3}, Ln3/y/b/a/t0/c0$a;->p()V

    .line 14
    iget-boolean p1, p0, Ln3/y/b/a/t0/r;->p:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Ln3/y/b/a/t0/r;->p:Z

    const/4 p1, 0x0

    .line 16
    iget-object p2, p0, Ln3/y/b/a/t0/r;->i:Ln3/y/b/a/t0/t;

    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/t0/g;->t(Ljava/lang/Object;Ln3/y/b/a/t0/t;)V

    :cond_2
    :goto_0
    return-object v6
.end method
