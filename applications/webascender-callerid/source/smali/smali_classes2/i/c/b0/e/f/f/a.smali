.class public final Li/c/b0/e/f/f/a;
.super Li/c/b0/b/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/f/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/e0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/h0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/h0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e0;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/f/a;->f:Li/c/b0/b/h0;

    return-void
.end method


# virtual methods
.method protected C(Li/c/b0/b/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/f/a$a;

    invoke-direct {v0, p1}, Li/c/b0/e/f/f/a$a;-><init>(Li/c/b0/b/g0;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/g0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Li/c/b0/e/f/f/a;->f:Li/c/b0/b/h0;

    invoke-interface {p1, v0}, Li/c/b0/b/h0;->a(Li/c/b0/b/f0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0, p1}, Li/c/b0/e/f/f/a$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
