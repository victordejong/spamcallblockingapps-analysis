.class public final Li/c/z/e/b/z;
.super Li/c/s;
.source "SourceFile"

# interfaces
.implements Li/c/z/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Li/c/s<",
        "TU;>;",
        "Li/c/z/c/b<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/f<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/z/j/b;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Li/c/z/e/b/z;-><init>(Li/c/f;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public constructor <init>(Li/c/f;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/f<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Li/c/s;-><init>()V

    .line 3
    iput-object p1, p0, Li/c/z/e/b/z;->f:Li/c/f;

    .line 4
    iput-object p2, p0, Li/c/z/e/b/z;->g:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public b()Li/c/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/f<",
            "TU;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/z/e/b/y;

    iget-object v1, p0, Li/c/z/e/b/z;->f:Li/c/f;

    iget-object v2, p0, Li/c/z/e/b/z;->g:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v1, v2}, Li/c/z/e/b/y;-><init>(Li/c/f;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object v0

    return-object v0
.end method

.method protected j(Li/c/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/t<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/z/e/b/z;->g:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {v0, v1}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Li/c/z/e/b/z;->f:Li/c/f;

    new-instance v2, Li/c/z/e/b/z$a;

    invoke-direct {v2, p1, v0}, Li/c/z/e/b/z$a;-><init>(Li/c/t;Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Li/c/f;->H(Li/c/i;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {v0, p1}, Li/c/z/a/c;->error(Ljava/lang/Throwable;Li/c/t;)V

    return-void
.end method
