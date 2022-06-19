.class public final Li/c/z/e/b/w;
.super Li/c/x/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/w$a;,
        Li/c/z/e/b/w$b;,
        Li/c/z/e/b/w$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/x/a<",
        "TT;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/z/e/b/w$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final i:I

.field final j:Lo/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/a/a;Li/c/f;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/a<",
            "TT;>;",
            "Li/c/f<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/z/e/b/w$c<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/x/a;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/b/w;->j:Lo/a/a;

    .line 3
    iput-object p2, p0, Li/c/z/e/b/w;->g:Li/c/f;

    .line 4
    iput-object p3, p0, Li/c/z/e/b/w;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput p4, p0, Li/c/z/e/b/w;->i:I

    return-void
.end method

.method public static M(Li/c/f;I)Li/c/x/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/f<",
            "TT;>;I)",
            "Li/c/x/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    new-instance v1, Li/c/z/e/b/w$a;

    invoke-direct {v1, v0, p1}, Li/c/z/e/b/w$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 3
    new-instance v2, Li/c/z/e/b/w;

    invoke-direct {v2, v1, p0, v0, p1}, Li/c/z/e/b/w;-><init>(Lo/a/a;Li/c/f;Ljava/util/concurrent/atomic/AtomicReference;I)V

    invoke-static {v2}, Li/c/a0/a;->o(Li/c/x/a;)Li/c/x/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected I(Lo/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/b/w;->j:Lo/a/a;

    invoke-interface {v0, p1}, Lo/a/a;->a(Lo/a/b;)V

    return-void
.end method

.method public L(Li/c/y/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/c<",
            "-",
            "Li/c/w/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Li/c/z/e/b/w;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/z/e/b/w$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Li/c/z/e/b/w$c;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    new-instance v1, Li/c/z/e/b/w$c;

    iget-object v2, p0, Li/c/z/e/b/w;->h:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, Li/c/z/e/b/w;->i:I

    invoke-direct {v1, v2, v3}, Li/c/z/e/b/w$c;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 4
    iget-object v2, p0, Li/c/z/e/b/w;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 5
    :cond_2
    iget-object v1, v0, Li/c/z/e/b/w$c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Li/c/z/e/b/w$c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 6
    :goto_1
    :try_start_0
    invoke-interface {p1, v0}, Li/c/y/c;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 7
    iget-object p1, p0, Li/c/z/e/b/w;->g:Li/c/f;

    invoke-virtual {p1, v0}, Li/c/f;->H(Li/c/i;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 9
    invoke-static {p1}, Li/c/z/j/g;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
