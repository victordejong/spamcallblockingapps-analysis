.class final Li/c/b0/e/f/e/v2$e;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/v<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final f:Li/c/b0/d/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/q<",
            "+",
            "Li/c/b0/f/a<",
            "TU;>;>;"
        }
    .end annotation
.end field

.field private final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/v<",
            "TU;>;+",
            "Li/c/b0/b/a0<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/d/q;Li/c/b0/d/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/q<",
            "+",
            "Li/c/b0/f/a<",
            "TU;>;>;",
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/v<",
            "TU;>;+",
            "Li/c/b0/b/a0<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/v2$e;->f:Li/c/b0/d/q;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/v2$e;->g:Li/c/b0/d/o;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/v2$e;->f:Li/c/b0/d/q;

    invoke-interface {v0}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The connectableFactory returned a null ConnectableObservable"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Li/c/b0/f/a;

    .line 2
    iget-object v1, p0, Li/c/b0/e/f/e/v2$e;->g:Li/c/b0/d/o;

    invoke-interface {v1, v0}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The selector returned a null ObservableSource"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Li/c/b0/b/a0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance v2, Li/c/b0/e/f/e/r4;

    invoke-direct {v2, p1}, Li/c/b0/e/f/e/r4;-><init>(Li/c/b0/b/c0;)V

    .line 4
    invoke-interface {v1, v2}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    .line 5
    new-instance p1, Li/c/b0/e/f/e/v2$c;

    invoke-direct {p1, v2}, Li/c/b0/e/f/e/v2$c;-><init>(Li/c/b0/e/f/e/r4;)V

    invoke-virtual {v0, p1}, Li/c/b0/f/a;->a(Li/c/b0/d/g;)V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {v0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    return-void
.end method
