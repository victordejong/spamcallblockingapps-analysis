.class public final Li/c/b0/e/d/b;
.super Li/c/b0/b/e0;
.source "SourceFile"

# interfaces
.implements Li/c/b0/e/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/d/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/e0<",
        "TR;>;",
        "Li/c/b0/e/c/e<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "-TT;TA;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/v;Ljava/util/stream/Collector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "TT;>;",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e0;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/d/b;->f:Li/c/b0/b/v;

    .line 3
    iput-object p2, p0, Li/c/b0/e/d/b;->g:Ljava/util/stream/Collector;

    return-void
.end method


# virtual methods
.method protected C(Li/c/b0/b/g0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/d/b;->g:Ljava/util/stream/Collector;

    invoke-interface {v0}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Li/c/b0/e/d/b;->g:Ljava/util/stream/Collector;

    invoke-interface {v1}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v1

    .line 3
    iget-object v2, p0, Li/c/b0/e/d/b;->g:Ljava/util/stream/Collector;

    invoke-interface {v2}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v3, p0, Li/c/b0/e/d/b;->f:Li/c/b0/b/v;

    new-instance v4, Li/c/b0/e/d/b$a;

    invoke-direct {v4, p1, v0, v1, v2}, Li/c/b0/e/d/b$a;-><init>(Li/c/b0/b/g0;Ljava/lang/Object;Ljava/util/function/BiConsumer;Ljava/util/function/Function;)V

    invoke-virtual {v3, v4}, Li/c/b0/b/v;->subscribe(Li/c/b0/b/c0;)V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {v0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/g0;)V

    return-void
.end method

.method public c()Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/d/a;

    iget-object v1, p0, Li/c/b0/e/d/b;->f:Li/c/b0/b/v;

    iget-object v2, p0, Li/c/b0/e/d/b;->g:Ljava/util/stream/Collector;

    invoke-direct {v0, v1, v2}, Li/c/b0/e/d/a;-><init>(Li/c/b0/b/v;Ljava/util/stream/Collector;)V

    return-object v0
.end method
