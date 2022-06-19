.class public final Li/c/b0/e/f/e/m1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Li/c/b0/b/c0<",
        "TT;>;",
        "Li/c/b0/c/c;"
    }
.end annotation


# static fields
.field static final n:Ljava/lang/Object;


# instance fields
.field final f:Li/c/b0/b/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/c0<",
            "-",
            "Li/c/b0/f/b<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field

.field final i:I

.field final j:Z

.field final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Li/c/b0/e/f/e/m1$b<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field l:Li/c/b0/c/c;

.field final m:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li/c/b0/e/f/e/m1$a;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/o;Li/c/b0/d/o;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-",
            "Li/c/b0/f/b<",
            "TK;TV;>;>;",
            "Li/c/b0/d/o<",
            "-TT;+TK;>;",
            "Li/c/b0/d/o<",
            "-TT;+TV;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Li/c/b0/e/f/e/m1$a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Li/c/b0/e/f/e/m1$a;->f:Li/c/b0/b/c0;

    .line 4
    iput-object p2, p0, Li/c/b0/e/f/e/m1$a;->g:Li/c/b0/d/o;

    .line 5
    iput-object p3, p0, Li/c/b0/e/f/e/m1$a;->h:Li/c/b0/d/o;

    .line 6
    iput p4, p0, Li/c/b0/e/f/e/m1$a;->i:I

    .line 7
    iput-boolean p5, p0, Li/c/b0/e/f/e/m1$a;->j:Z

    .line 8
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/m1$a;->k:Ljava/util/Map;

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Li/c/b0/e/f/e/m1$a;->n:Ljava/lang/Object;

    .line 2
    :goto_0
    iget-object v0, p0, Li/c/b0/e/f/e/m1$a;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/e/m1$a;->l:Li/c/b0/c/c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m1$a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/m1$a;->l:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m1$a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Li/c/b0/e/f/e/m1$a;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v1, p0, Li/c/b0/e/f/e/m1$a;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/c/b0/e/f/e/m1$b;

    .line 4
    invoke-virtual {v1}, Li/c/b0/e/f/e/m1$b;->onComplete()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/m1$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Li/c/b0/e/f/e/m1$a;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v1, p0, Li/c/b0/e/f/e/m1$a;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/c/b0/e/f/e/m1$b;

    .line 4
    invoke-virtual {v1, p1}, Li/c/b0/e/f/e/m1$b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/m1$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/m1$a;->g:Li/c/b0/d/o;

    invoke-interface {v0, p1}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Li/c/b0/e/f/e/m1$a;->n:Ljava/lang/Object;

    .line 3
    :goto_0
    iget-object v2, p0, Li/c/b0/e/f/e/m1$a;->k:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/c/b0/e/f/e/m1$b;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 4
    iget-object v2, p0, Li/c/b0/e/f/e/m1$a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 5
    :cond_1
    iget v2, p0, Li/c/b0/e/f/e/m1$a;->i:I

    iget-boolean v3, p0, Li/c/b0/e/f/e/m1$a;->j:Z

    invoke-static {v0, v2, p0, v3}, Li/c/b0/e/f/e/m1$b;->a(Ljava/lang/Object;ILi/c/b0/e/f/e/m1$a;Z)Li/c/b0/e/f/e/m1$b;

    move-result-object v2

    .line 6
    iget-object v3, p0, Li/c/b0/e/f/e/m1$a;->k:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    const/4 v3, 0x1

    .line 8
    :cond_2
    :try_start_1
    iget-object v1, p0, Li/c/b0/e/f/e/m1$a;->h:Li/c/b0/d/o;

    invoke-interface {v1, p1}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The value supplied is null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-virtual {v2, p1}, Li/c/b0/e/f/e/m1$b;->onNext(Ljava/lang/Object;)V

    if-eqz v3, :cond_3

    .line 10
    iget-object p1, p0, Li/c/b0/e/f/e/m1$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, v2}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    .line 11
    iget-object p1, v2, Li/c/b0/e/f/e/m1$b;->g:Li/c/b0/e/f/e/m1$c;

    invoke-virtual {p1}, Li/c/b0/e/f/e/m1$c;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p0, v0}, Li/c/b0/e/f/e/m1$a;->a(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v2}, Li/c/b0/e/f/e/m1$b;->onComplete()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 15
    iget-object v0, p0, Li/c/b0/e/f/e/m1$a;->l:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    if-eqz v3, :cond_4

    .line 16
    iget-object v0, p0, Li/c/b0/e/f/e/m1$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, v2}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    .line 17
    :cond_4
    invoke-virtual {p0, p1}, Li/c/b0/e/f/e/m1$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p1

    .line 18
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 19
    iget-object v0, p0, Li/c/b0/e/f/e/m1$a;->l:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 20
    invoke-virtual {p0, p1}, Li/c/b0/e/f/e/m1$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m1$a;->l:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/m1$a;->l:Li/c/b0/c/c;

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/m1$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_0
    return-void
.end method
