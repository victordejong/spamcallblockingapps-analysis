.class public final Li/c/b0/e/f/e/y2;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/y2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/v<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Li/c/b0/b/a0<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Li/c/b0/d/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/v<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Li/c/b0/b/a0<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/y2;->g:Li/c/b0/d/o;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/k/d;->a()Li/c/b0/k/d;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Li/c/b0/e/f/e/y2;->g:Li/c/b0/d/o;

    invoke-interface {v1, v0}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The handler returned a null ObservableSource"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Li/c/b0/b/a0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance v2, Li/c/b0/e/f/e/y2$a;

    iget-object v3, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    invoke-direct {v2, p1, v0, v3}, Li/c/b0/e/f/e/y2$a;-><init>(Li/c/b0/b/c0;Li/c/b0/k/d;Li/c/b0/b/a0;)V

    .line 4
    invoke-interface {p1, v2}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 5
    iget-object p1, v2, Li/c/b0/e/f/e/y2$a;->j:Li/c/b0/e/f/e/y2$a$a;

    invoke-interface {v1, p1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    .line 6
    invoke-virtual {v2}, Li/c/b0/e/f/e/y2$a;->d()V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {v0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    return-void
.end method
