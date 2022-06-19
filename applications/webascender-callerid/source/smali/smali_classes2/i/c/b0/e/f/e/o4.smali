.class public final Li/c/b0/e/f/e/o4;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/o4$a;,
        Li/c/b0/e/f/e/o4$c;,
        Li/c/b0/e/f/e/o4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final g:[Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Li/c/b0/b/a0<",
            "*>;"
        }
    .end annotation
.end field

.field final h:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "*>;>;"
        }
    .end annotation
.end field

.field final i:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Ljava/lang/Iterable;Li/c/b0/d/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "*>;>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Li/c/b0/e/f/e/o4;->g:[Li/c/b0/b/a0;

    .line 7
    iput-object p2, p0, Li/c/b0/e/f/e/o4;->h:Ljava/lang/Iterable;

    .line 8
    iput-object p3, p0, Li/c/b0/e/f/e/o4;->i:Li/c/b0/d/o;

    return-void
.end method

.method public constructor <init>(Li/c/b0/b/a0;[Li/c/b0/b/a0;Li/c/b0/d/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;[",
            "Li/c/b0/b/a0<",
            "*>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/o4;->g:[Li/c/b0/b/a0;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Li/c/b0/e/f/e/o4;->h:Ljava/lang/Iterable;

    .line 4
    iput-object p3, p0, Li/c/b0/e/f/e/o4;->i:Li/c/b0/d/o;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/o4;->g:[Li/c/b0/b/a0;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [Li/c/b0/b/a0;

    .line 2
    :try_start_0
    iget-object v1, p0, Li/c/b0/e/f/e/o4;->h:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li/c/b0/b/a0;

    .line 3
    array-length v4, v0

    if-ne v2, v4, :cond_0

    shr-int/lit8 v4, v2, 0x1

    add-int/2addr v4, v2

    .line 4
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/b0/b/a0;

    :cond_0
    add-int/lit8 v4, v2, 0x1

    .line 5
    aput-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {v0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    return-void

    .line 8
    :cond_1
    array-length v2, v0

    :cond_2
    if-nez v2, :cond_3

    .line 9
    new-instance v0, Li/c/b0/e/f/e/z1;

    iget-object v1, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v2, Li/c/b0/e/f/e/o4$a;

    invoke-direct {v2, p0}, Li/c/b0/e/f/e/o4$a;-><init>(Li/c/b0/e/f/e/o4;)V

    invoke-direct {v0, v1, v2}, Li/c/b0/e/f/e/z1;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;)V

    invoke-virtual {v0, p1}, Li/c/b0/e/f/e/z1;->subscribeActual(Li/c/b0/b/c0;)V

    return-void

    .line 10
    :cond_3
    new-instance v1, Li/c/b0/e/f/e/o4$b;

    iget-object v3, p0, Li/c/b0/e/f/e/o4;->i:Li/c/b0/d/o;

    invoke-direct {v1, p1, v3, v2}, Li/c/b0/e/f/e/o4$b;-><init>(Li/c/b0/b/c0;Li/c/b0/d/o;I)V

    .line 11
    invoke-interface {p1, v1}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 12
    invoke-virtual {v1, v0, v2}, Li/c/b0/e/f/e/o4$b;->e([Li/c/b0/b/a0;I)V

    .line 13
    iget-object p1, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    invoke-interface {p1, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
