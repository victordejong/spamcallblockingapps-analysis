.class public final Li/c/b0/e/f/e/f4;
.super Li/c/b0/b/e0;
.source "SourceFile"

# interfaces
.implements Li/c/b0/e/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/f4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Li/c/b0/b/e0<",
        "TU;>;",
        "Li/c/b0/e/c/e<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/d/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/q<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e0;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/f4;->f:Li/c/b0/b/a0;

    .line 3
    invoke-static {p2}, Li/c/b0/e/b/a;->e(I)Li/c/b0/d/q;

    move-result-object p1

    iput-object p1, p0, Li/c/b0/e/f/e/f4;->g:Li/c/b0/d/q;

    return-void
.end method

.method public constructor <init>(Li/c/b0/b/a0;Li/c/b0/d/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Li/c/b0/d/q<",
            "TU;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Li/c/b0/b/e0;-><init>()V

    .line 5
    iput-object p1, p0, Li/c/b0/e/f/e/f4;->f:Li/c/b0/b/a0;

    .line 6
    iput-object p2, p0, Li/c/b0/e/f/e/f4;->g:Li/c/b0/d/q;

    return-void
.end method


# virtual methods
.method public C(Li/c/b0/b/g0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g0<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/f4;->g:Li/c/b0/d/q;

    invoke-interface {v0}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The collectionSupplier returned a null Collection."

    invoke-static {v0, v1}, Li/c/b0/e/k/j;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Li/c/b0/e/f/e/f4;->f:Li/c/b0/b/a0;

    new-instance v2, Li/c/b0/e/f/e/f4$a;

    invoke-direct {v2, p1, v0}, Li/c/b0/e/f/e/f4$a;-><init>(Li/c/b0/b/g0;Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {v0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/g0;)V

    return-void
.end method

.method public c()Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "TU;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/e4;

    iget-object v1, p0, Li/c/b0/e/f/e/f4;->f:Li/c/b0/b/a0;

    iget-object v2, p0, Li/c/b0/e/f/e/f4;->g:Li/c/b0/d/q;

    invoke-direct {v0, v1, v2}, Li/c/b0/e/f/e/e4;-><init>(Li/c/b0/b/a0;Li/c/b0/d/q;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method
