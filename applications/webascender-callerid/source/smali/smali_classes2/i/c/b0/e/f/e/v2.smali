.class public final Li/c/b0/e/f/e/v2;
.super Li/c/b0/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/v2$e;,
        Li/c/b0/e/f/e/v2$j;,
        Li/c/b0/e/f/e/v2$k;,
        Li/c/b0/e/f/e/v2$h;,
        Li/c/b0/e/f/e/v2$c;,
        Li/c/b0/e/f/e/v2$n;,
        Li/c/b0/e/f/e/v2$l;,
        Li/c/b0/e/f/e/v2$m;,
        Li/c/b0/e/f/e/v2$a;,
        Li/c/b0/e/f/e/v2$f;,
        Li/c/b0/e/f/e/v2$o;,
        Li/c/b0/e/f/e/v2$g;,
        Li/c/b0/e/f/e/v2$d;,
        Li/c/b0/e/f/e/v2$i;,
        Li/c/b0/e/f/e/v2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/f/a<",
        "TT;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final j:Li/c/b0/e/f/e/v2$b;


# instance fields
.field final f:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/e/f/e/v2$i<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/e/f/e/v2$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/v2$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final i:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/c/b0/e/f/e/v2$n;

    invoke-direct {v0}, Li/c/b0/e/f/e/v2$n;-><init>()V

    sput-object v0, Li/c/b0/e/f/e/v2;->j:Li/c/b0/e/f/e/v2$b;

    return-void
.end method

.method private constructor <init>(Li/c/b0/b/a0;Li/c/b0/b/a0;Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/e/f/e/v2$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/e/f/e/v2$i<",
            "TT;>;>;",
            "Li/c/b0/e/f/e/v2$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/f/a;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/v2;->i:Li/c/b0/b/a0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/v2;->f:Li/c/b0/b/a0;

    .line 4
    iput-object p3, p0, Li/c/b0/e/f/e/v2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput-object p4, p0, Li/c/b0/e/f/e/v2;->h:Li/c/b0/e/f/e/v2$b;

    return-void
.end method

.method public static d(Li/c/b0/b/a0;IZ)Li/c/b0/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TT;>;IZ)",
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {p0}, Li/c/b0/e/f/e/v2;->h(Li/c/b0/b/a0;)Li/c/b0/f/a;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Li/c/b0/e/f/e/v2$h;

    invoke-direct {v0, p1, p2}, Li/c/b0/e/f/e/v2$h;-><init>(IZ)V

    invoke-static {p0, v0}, Li/c/b0/e/f/e/v2;->g(Li/c/b0/b/a0;Li/c/b0/e/f/e/v2$b;)Li/c/b0/f/a;

    move-result-object p0

    return-object p0
.end method

.method public static e(Li/c/b0/b/a0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;IZ)Li/c/b0/f/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "IZ)",
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Li/c/b0/e/f/e/v2$k;

    move-object v0, v7

    move v1, p5

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Li/c/b0/e/f/e/v2$k;-><init>(IJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)V

    invoke-static {p0, v7}, Li/c/b0/e/f/e/v2;->g(Li/c/b0/b/a0;Li/c/b0/e/f/e/v2$b;)Li/c/b0/f/a;

    move-result-object p0

    return-object p0
.end method

.method public static f(Li/c/b0/b/a0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/f/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "Z)",
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    .line 1
    invoke-static/range {v0 .. v6}, Li/c/b0/e/f/e/v2;->e(Li/c/b0/b/a0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;IZ)Li/c/b0/f/a;

    move-result-object p0

    return-object p0
.end method

.method static g(Li/c/b0/b/a0;Li/c/b0/e/f/e/v2$b;)Li/c/b0/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Li/c/b0/e/f/e/v2$b<",
            "TT;>;)",
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    new-instance v1, Li/c/b0/e/f/e/v2$j;

    invoke-direct {v1, v0, p1}, Li/c/b0/e/f/e/v2$j;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/e/f/e/v2$b;)V

    .line 3
    new-instance v2, Li/c/b0/e/f/e/v2;

    invoke-direct {v2, v1, p0, v0, p1}, Li/c/b0/e/f/e/v2;-><init>(Li/c/b0/b/a0;Li/c/b0/b/a0;Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/e/f/e/v2$b;)V

    invoke-static {v2}, Li/c/b0/h/a;->q(Li/c/b0/f/a;)Li/c/b0/f/a;

    move-result-object p0

    return-object p0
.end method

.method public static h(Li/c/b0/b/a0;)Li/c/b0/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/f/e/v2;->j:Li/c/b0/e/f/e/v2$b;

    invoke-static {p0, v0}, Li/c/b0/e/f/e/v2;->g(Li/c/b0/b/a0;Li/c/b0/e/f/e/v2$b;)Li/c/b0/f/a;

    move-result-object p0

    return-object p0
.end method

.method public static i(Li/c/b0/d/q;Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/q<",
            "+",
            "Li/c/b0/f/a<",
            "TU;>;>;",
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/v<",
            "TU;>;+",
            "Li/c/b0/b/a0<",
            "TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/v2$e;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/v2$e;-><init>(Li/c/b0/d/q;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Li/c/b0/d/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-",
            "Li/c/b0/c/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Li/c/b0/e/f/e/v2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/e/f/e/v2$i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Li/c/b0/e/f/e/v2$i;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    iget-object v1, p0, Li/c/b0/e/f/e/v2;->h:Li/c/b0/e/f/e/v2$b;

    invoke-interface {v1}, Li/c/b0/e/f/e/v2$b;->call()Li/c/b0/e/f/e/v2$g;

    move-result-object v1

    .line 4
    new-instance v2, Li/c/b0/e/f/e/v2$i;

    iget-object v3, p0, Li/c/b0/e/f/e/v2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v1, v3}, Li/c/b0/e/f/e/v2$i;-><init>(Li/c/b0/e/f/e/v2$g;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 5
    iget-object v1, p0, Li/c/b0/e/f/e/v2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 6
    :cond_2
    iget-object v1, v0, Li/c/b0/e/f/e/v2$i;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Li/c/b0/e/f/e/v2$i;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 7
    :goto_1
    :try_start_0
    invoke-interface {p1, v0}, Li/c/b0/d/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 8
    iget-object p1, p0, Li/c/b0/e/f/e/v2;->f:Li/c/b0/b/a0;

    invoke-interface {p1, v0}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    if-eqz v1, :cond_5

    .line 10
    iget-object v0, v0, Li/c/b0/e/f/e/v2$i;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 11
    :cond_5
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 12
    invoke-static {p1}, Li/c/b0/e/k/j;->g(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/v2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/e/f/e/v2$i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Li/c/b0/e/f/e/v2$i;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Li/c/b0/e/f/e/v2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/v2;->i:Li/c/b0/b/a0;

    invoke-interface {v0, p1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
