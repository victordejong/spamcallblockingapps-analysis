.class final Li/c/b0/e/f/b/q$a;
.super Li/c/b0/b/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/b/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/l<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Li/c/b0/d/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/l;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/b/q$a;->g:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/b/q$a;->h:Li/c/b0/d/o;

    return-void
.end method


# virtual methods
.method public u(Lo/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/b/q$a;->h:Li/c/b0/d/o;

    iget-object v1, p0, Li/c/b0/e/f/b/q$a;->g:Ljava/lang/Object;

    invoke-interface {v0, v1}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lo/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    instance-of v1, v0, Li/c/b0/d/q;

    if-eqz v1, :cond_1

    .line 3
    :try_start_1
    check-cast v0, Li/c/b0/d/q;

    invoke-interface {v0}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Li/c/b0/e/j/c;->complete(Lo/a/b;)V

    return-void

    .line 5
    :cond_0
    new-instance v1, Li/c/b0/e/j/d;

    invoke-direct {v1, p1, v0}, Li/c/b0/e/j/d;-><init>(Lo/a/b;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {v0, p1}, Li/c/b0/e/j/c;->error(Ljava/lang/Throwable;Lo/a/b;)V

    return-void

    .line 8
    :cond_1
    invoke-interface {v0, p1}, Lo/a/a;->a(Lo/a/b;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    .line 9
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10
    invoke-static {v0, p1}, Li/c/b0/e/j/c;->error(Ljava/lang/Throwable;Lo/a/b;)V

    return-void
.end method
