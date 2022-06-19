.class public final Li/c/b0/e/f/c/c;
.super Li/c/b0/b/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/c/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/p<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/s<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/s<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/p;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/c/c;->f:Li/c/b0/b/s;

    return-void
.end method


# virtual methods
.method protected r(Li/c/b0/b/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/c/c$a;

    invoke-direct {v0, p1}, Li/c/b0/e/f/c/c$a;-><init>(Li/c/b0/b/r;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/r;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Li/c/b0/e/f/c/c;->f:Li/c/b0/b/s;

    invoke-interface {p1, v0}, Li/c/b0/b/s;->a(Li/c/b0/b/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0, p1}, Li/c/b0/e/f/c/c$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
