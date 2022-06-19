.class public final Li/c/z/e/c/c;
.super Li/c/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/c/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/m<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/m<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/j;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/c/c;->f:Li/c/m;

    return-void
.end method


# virtual methods
.method protected u(Li/c/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/l<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/z/e/c/c$a;

    invoke-direct {v0, p1}, Li/c/z/e/c/c$a;-><init>(Li/c/l;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/l;->a(Li/c/w/b;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Li/c/z/e/c/c;->f:Li/c/m;

    invoke-interface {p1, v0}, Li/c/m;->a(Li/c/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0, p1}, Li/c/z/e/c/c$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
