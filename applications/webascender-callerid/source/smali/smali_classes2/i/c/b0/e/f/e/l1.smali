.class public final Li/c/b0/e/f/e/l1;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/l1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
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
            "TS;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/c<",
            "TS;",
            "Li/c/b0/b/k<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/g<",
            "-TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/d/q;Li/c/b0/d/c;Li/c/b0/d/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/q<",
            "TS;>;",
            "Li/c/b0/d/c<",
            "TS;",
            "Li/c/b0/b/k<",
            "TT;>;TS;>;",
            "Li/c/b0/d/g<",
            "-TS;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/l1;->f:Li/c/b0/d/q;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/l1;->g:Li/c/b0/d/c;

    .line 4
    iput-object p3, p0, Li/c/b0/e/f/e/l1;->h:Li/c/b0/d/g;

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/l1;->f:Li/c/b0/d/q;

    invoke-interface {v0}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    new-instance v1, Li/c/b0/e/f/e/l1$a;

    iget-object v2, p0, Li/c/b0/e/f/e/l1;->g:Li/c/b0/d/c;

    iget-object v3, p0, Li/c/b0/e/f/e/l1;->h:Li/c/b0/d/g;

    invoke-direct {v1, p1, v2, v3, v0}, Li/c/b0/e/f/e/l1$a;-><init>(Li/c/b0/b/c0;Li/c/b0/d/c;Li/c/b0/d/g;Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1, v1}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 4
    invoke-virtual {v1}, Li/c/b0/e/f/e/l1$a;->c()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {v0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    return-void
.end method
