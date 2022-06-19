.class public final Li/c/b0/e/f/e/h4;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/h4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/d/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/q<",
            "+TD;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TD;+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/g<",
            "-TD;>;"
        }
    .end annotation
.end field

.field final i:Z


# direct methods
.method public constructor <init>(Li/c/b0/d/q;Li/c/b0/d/o;Li/c/b0/d/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/q<",
            "+TD;>;",
            "Li/c/b0/d/o<",
            "-TD;+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;",
            "Li/c/b0/d/g<",
            "-TD;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/h4;->f:Li/c/b0/d/q;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/h4;->g:Li/c/b0/d/o;

    .line 4
    iput-object p3, p0, Li/c/b0/e/f/e/h4;->h:Li/c/b0/d/g;

    .line 5
    iput-boolean p4, p0, Li/c/b0/e/f/e/h4;->i:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/h4;->f:Li/c/b0/d/q;

    invoke-interface {v0}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    iget-object v1, p0, Li/c/b0/e/f/e/h4;->g:Li/c/b0/d/o;

    invoke-interface {v1, v0}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The sourceSupplier returned a null ObservableSource"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Li/c/b0/b/a0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    new-instance v2, Li/c/b0/e/f/e/h4$a;

    iget-object v3, p0, Li/c/b0/e/f/e/h4;->h:Li/c/b0/d/g;

    iget-boolean v4, p0, Li/c/b0/e/f/e/h4;->i:Z

    invoke-direct {v2, p1, v0, v3, v4}, Li/c/b0/e/f/e/h4$a;-><init>(Li/c/b0/b/c0;Ljava/lang/Object;Li/c/b0/d/g;Z)V

    .line 4
    invoke-interface {v1, v2}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    :try_start_2
    iget-object v2, p0, Li/c/b0/e/f/e/h4;->h:Li/c/b0/d/g;

    invoke-interface {v2, v0}, Li/c/b0/d/g;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    invoke-static {v1, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    return-void

    :catchall_1
    move-exception v0

    .line 8
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 9
    new-instance v2, Lio/reactivex/rxjava3/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-direct {v2, v3}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    return-void

    :catchall_2
    move-exception v0

    .line 10
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 11
    invoke-static {v0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    return-void
.end method
