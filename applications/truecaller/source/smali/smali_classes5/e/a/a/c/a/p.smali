.class public final Le/a/a/c/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/a/o;


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Le/a/c/b0/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Le/a/c/i/g/d;

.field public d:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/c/a0/r;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ls1/w/f;

.field public final h:Ls1/w/f;

.field public final i:Le/a/c/b0/d;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/c/b0/d;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/a/p;->g:Ls1/w/f;

    iput-object p2, p0, Le/a/a/c/a/p;->h:Ls1/w/f;

    iput-object p3, p0, Le/a/a/c/a/p;->i:Le/a/c/b0/d;

    .line 2
    sget p1, Lkotlinx/coroutines/CoroutineExceptionHandler;->d0:I

    sget-object p1, Lkotlinx/coroutines/CoroutineExceptionHandler$a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler$a;

    new-instance p2, Le/a/a/c/a/p$a;

    invoke-direct {p2, p1}, Le/a/a/c/a/p$a;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$a;)V

    .line 3
    iput-object p2, p0, Le/a/a/c/a/p;->a:Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Le/a/a/c/a/p;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/c/a/p;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/a/p;->b:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "updateCategoryCache"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return v1
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/a/p;->b:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    :cond_0
    const-string v0, "updateCategoryCache"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    :goto_0
    iput-object v1, p0, Le/a/a/c/a/p;->c:Le/a/c/i/g/d;

    .line 4
    iput-object v1, p0, Le/a/a/c/a/p;->d:Ls1/z/b/a;

    .line 5
    iget-object v0, p0, Le/a/a/c/a/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iput-object v1, p0, Le/a/a/c/a/p;->c:Le/a/c/i/g/d;

    .line 7
    iget-object v0, p0, Le/a/a/c/a/p;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 8
    invoke-virtual {p0}, Le/a/a/c/a/p;->h()Lq3/a/i0;

    move-result-object v0

    check-cast v0, Lq3/a/y2/h;

    .line 9
    iget-object v0, v0, Lq3/a/y2/h;->a:Ls1/w/f;

    const/4 v2, 0x1

    .line 10
    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->X(Ls1/w/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public c(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/c/a/p;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2
    invoke-virtual {p0}, Le/a/a/c/a/p;->h()Lq3/a/i0;

    move-result-object v1

    iget-object v2, p0, Le/a/a/c/a/p;->a:Lkotlinx/coroutines/CoroutineExceptionHandler;

    new-instance v4, Le/a/a/c/a/p$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Le/a/a/c/a/p$c;-><init>(Le/a/a/c/a/p;JLs1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public d(JLw3/b/a/b;)Le/a/c/b0/b;
    .locals 11

    const-string v0, "dateTime"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/a/p;->b:Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-nez v3, :cond_1

    return-object v4

    :cond_1
    if-eqz v0, :cond_9

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/b0/b;

    if-eqz p1, :cond_2

    return-object p1

    .line 3
    :cond_2
    iget-object p1, p0, Le/a/a/c/a/p;->f:Ljava/util/List;

    .line 4
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/c/a0/r;

    .line 6
    iget-object v0, p2, Le/a/c/a0/r;->a:Lw3/b/a/b;

    .line 7
    invoke-virtual {p3, v0}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result v0

    if-lez v0, :cond_5

    .line 8
    iget-object p2, p2, Le/a/c/a0/r;->b:Lw3/b/a/b;

    .line 9
    invoke-virtual {p3, p2}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result p2

    if-gez p2, :cond_5

    move p2, v1

    goto :goto_1

    :cond_5
    move p2, v2

    :goto_1
    if-eqz p2, :cond_4

    move p1, v1

    goto :goto_3

    :cond_6
    :goto_2
    move p1, v2

    :goto_3
    if-eqz p1, :cond_7

    return-object v4

    .line 10
    :cond_7
    invoke-virtual {p3, v1}, Lw3/b/a/b;->z(I)Lw3/b/a/b;

    move-result-object p1

    .line 11
    invoke-virtual {p3, v1}, Lw3/b/a/b;->H(I)Lw3/b/a/b;

    move-result-object p2

    .line 12
    iget-object p3, p0, Le/a/a/c/a/p;->c:Le/a/c/i/g/d;

    if-eqz p3, :cond_8

    new-instance v10, Le/a/c/a0/r;

    const-string v0, "fromDate"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toDate"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, p1, p2}, Le/a/c/a0/r;-><init>(Lw3/b/a/b;Lw3/b/a/b;)V

    .line 13
    iget-wide v6, p3, Le/a/c/i/g/d;->a:J

    iget-object v8, p3, Le/a/c/i/g/d;->b:Ljava/lang/String;

    iget-object v9, p3, Le/a/c/i/g/d;->c:Ljava/lang/String;

    const-string p1, "senderId"

    .line 14
    invoke-static {v8, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "analyticsContext"

    invoke-static {v9, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/i/g/d;

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Le/a/c/i/g/d;-><init>(JLjava/lang/String;Ljava/lang/String;Le/a/c/a0/r;)V

    .line 15
    iget-object p2, p0, Le/a/a/c/a/p;->d:Ls1/z/b/a;

    .line 16
    invoke-virtual {p0, p1, v2, p2}, Le/a/a/c/a/p;->f(Le/a/c/i/g/d;ZLs1/z/b/a;)V

    :cond_8
    return-object v4

    :cond_9
    const-string p1, "updateCategoryCache"

    .line 17
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4
.end method

.method public e(Ljava/lang/String;J)V
    .locals 8

    const-string v0, "category"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/a/p;->h()Lq3/a/i0;

    move-result-object v1

    new-instance v0, Le/a/a/c/a/p$d;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v2 .. v7}, Le/a/a/c/a/p$d;-><init>(Le/a/a/c/a/p;Ljava/lang/String;JLs1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public f(Le/a/c/i/g/d;ZLs1/z/b/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/i/g/d;",
            "Z",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "requestUpdatesTag"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/a/c/a/p;->c:Le/a/c/i/g/d;

    .line 2
    iput-object p3, p0, Le/a/a/c/a/p;->d:Ls1/z/b/a;

    .line 3
    iget-object v0, p1, Le/a/c/i/g/d;->d:Le/a/c/a0/r;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Le/a/a/c/a/p;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/a/c/a/p;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p0}, Le/a/a/c/a/p;->b()V

    .line 7
    iget-object p2, p0, Le/a/a/c/a/p;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p2

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 8
    invoke-interface {p3}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls1/s;

    .line 9
    :cond_1
    invoke-virtual {p0}, Le/a/a/c/a/p;->h()Lq3/a/i0;

    move-result-object v0

    iget-object v1, p0, Le/a/a/c/a/p;->a:Lkotlinx/coroutines/CoroutineExceptionHandler;

    const/4 v2, 0x0

    new-instance v3, Le/a/a/c/a/p$b;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p1, p3, p2}, Le/a/a/c/a/p$b;-><init>(Le/a/a/c/a/p;Le/a/c/i/g/d;Ls1/z/b/a;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public g(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/a/p;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const-string p1, "updateCategoryCache"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final h()Lq3/a/i0;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/a/p;->h:Ls1/w/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object v1

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v0

    return-object v0
.end method
