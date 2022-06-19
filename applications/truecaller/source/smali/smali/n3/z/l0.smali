.class public final Ln3/z/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/z/l0$b;,
        Ln3/z/l0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Ln3/z/q1$d;

.field public final c:Lq3/a/i0;

.field public final d:Ln3/z/q1$c;

.field public final e:Ln3/z/k2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/k2<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final f:Lq3/a/g0;

.field public final g:Lq3/a/g0;

.field public final h:Ln3/z/l0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/l0$b<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final i:Ln3/z/l0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/l0$a<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/a/i0;Ln3/z/q1$c;Ln3/z/k2;Lq3/a/g0;Lq3/a/g0;Ln3/z/l0$b;Ln3/z/l0$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Ln3/z/q1$c;",
            "Ln3/z/k2<",
            "TK;TV;>;",
            "Lq3/a/g0;",
            "Lq3/a/g0;",
            "Ln3/z/l0$b<",
            "TV;>;",
            "Ln3/z/l0$a<",
            "TK;>;)V"
        }
    .end annotation

    const-string v0, "pagedListScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifyDispatcher"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchDispatcher"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageConsumer"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyProvider"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/l0;->c:Lq3/a/i0;

    iput-object p2, p0, Ln3/z/l0;->d:Ln3/z/q1$c;

    iput-object p3, p0, Ln3/z/l0;->e:Ln3/z/k2;

    iput-object p4, p0, Ln3/z/l0;->f:Lq3/a/g0;

    iput-object p5, p0, Ln3/z/l0;->g:Lq3/a/g0;

    iput-object p6, p0, Ln3/z/l0;->h:Ln3/z/l0$b;

    iput-object p7, p0, Ln3/z/l0;->i:Ln3/z/l0$a;

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Ln3/z/l0;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance p1, Ln3/z/l0$c;

    invoke-direct {p1, p0}, Ln3/z/l0$c;-><init>(Ln3/z/l0;)V

    iput-object p1, p0, Ln3/z/l0;->b:Ln3/z/q1$d;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/l0;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final b(Ln3/z/t0;Ln3/z/k2$b$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/t0;",
            "Ln3/z/k2$b$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/z/l0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/z/l0;->h:Ln3/z/l0$b;

    invoke-interface {v0, p1, p2}, Ln3/z/l0$b;->a(Ln3/z/t0;Ln3/z/k2$b$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 4
    invoke-virtual {p0}, Ln3/z/l0;->c()V

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can only fetch more during append/prepend"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    invoke-virtual {p0}, Ln3/z/l0;->d()V

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, p0, Ln3/z/l0;->b:Ln3/z/q1$d;

    .line 8
    iget-object p2, p2, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 9
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Ln3/z/r0$c;->b:Ln3/z/r0$c;

    goto :goto_0

    :cond_4
    sget-object p2, Ln3/z/r0$c;->c:Ln3/z/r0$c;

    .line 10
    :goto_0
    invoke-virtual {v0, p1, p2}, Ln3/z/q1$d;->b(Ln3/z/t0;Ln3/z/r0;)V

    :goto_1
    return-void
.end method

.method public final c()V
    .locals 11

    .line 1
    sget-object v0, Ln3/z/t0;->c:Ln3/z/t0;

    iget-object v1, p0, Ln3/z/l0;->i:Ln3/z/l0$a;

    invoke-interface {v1}, Ln3/z/l0$a;->f()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Ln3/z/k2$b$b;->g:Ln3/z/k2$b$b;

    invoke-static {}, Ln3/z/k2$b$b;->a()Ln3/z/k2$b$b;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ln3/z/l0;->b(Ln3/z/t0;Ln3/z/k2$b$b;)V

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Ln3/z/l0;->b:Ln3/z/q1$d;

    sget-object v3, Ln3/z/r0$b;->b:Ln3/z/r0$b;

    invoke-virtual {v2, v0, v3}, Ln3/z/q1$d;->b(Ln3/z/t0;Ln3/z/r0;)V

    .line 4
    new-instance v2, Ln3/z/k2$a$a;

    .line 5
    iget-object v3, p0, Ln3/z/l0;->d:Ln3/z/q1$c;

    iget v4, v3, Ln3/z/q1$c;->a:I

    .line 6
    iget-boolean v3, v3, Ln3/z/q1$c;->c:Z

    .line 7
    invoke-direct {v2, v1, v4, v3}, Ln3/z/k2$a$a;-><init>(Ljava/lang/Object;IZ)V

    .line 8
    iget-object v5, p0, Ln3/z/l0;->c:Lq3/a/i0;

    iget-object v6, p0, Ln3/z/l0;->g:Lq3/a/g0;

    new-instance v8, Ln3/z/m0;

    const/4 v1, 0x0

    invoke-direct {v8, p0, v2, v0, v1}, Ln3/z/m0;-><init>(Ln3/z/l0;Ln3/z/k2$a;Ln3/z/t0;Ls1/w/d;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final d()V
    .locals 11

    .line 1
    sget-object v0, Ln3/z/t0;->b:Ln3/z/t0;

    iget-object v1, p0, Ln3/z/l0;->i:Ln3/z/l0$a;

    invoke-interface {v1}, Ln3/z/l0$a;->g()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Ln3/z/k2$b$b;->g:Ln3/z/k2$b$b;

    invoke-static {}, Ln3/z/k2$b$b;->a()Ln3/z/k2$b$b;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ln3/z/l0;->b(Ln3/z/t0;Ln3/z/k2$b$b;)V

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Ln3/z/l0;->b:Ln3/z/q1$d;

    sget-object v3, Ln3/z/r0$b;->b:Ln3/z/r0$b;

    invoke-virtual {v2, v0, v3}, Ln3/z/q1$d;->b(Ln3/z/t0;Ln3/z/r0;)V

    .line 4
    new-instance v2, Ln3/z/k2$a$b;

    .line 5
    iget-object v3, p0, Ln3/z/l0;->d:Ln3/z/q1$c;

    iget v4, v3, Ln3/z/q1$c;->a:I

    .line 6
    iget-boolean v3, v3, Ln3/z/q1$c;->c:Z

    .line 7
    invoke-direct {v2, v1, v4, v3}, Ln3/z/k2$a$b;-><init>(Ljava/lang/Object;IZ)V

    .line 8
    iget-object v5, p0, Ln3/z/l0;->c:Lq3/a/i0;

    iget-object v6, p0, Ln3/z/l0;->g:Lq3/a/g0;

    new-instance v8, Ln3/z/m0;

    const/4 v1, 0x0

    invoke-direct {v8, p0, v2, v0, v1}, Ln3/z/m0;-><init>(Ln3/z/l0;Ln3/z/k2$a;Ln3/z/t0;Ls1/w/d;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
