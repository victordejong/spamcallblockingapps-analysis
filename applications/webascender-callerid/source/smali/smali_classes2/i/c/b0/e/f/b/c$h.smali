.class abstract Li/c/b0/e/f/b/c$h;
.super Li/c/b0/e/f/b/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/b/c$b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/b/c$b;-><init>(Lo/a/b;)V

    return-void
.end method


# virtual methods
.method abstract i()V
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/f/b/c$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "onNext called with a null value."

    .line 2
    invoke-static {p1}, Li/c/b0/e/k/j;->b(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c/b0/e/f/b/c$b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/b/c$b;->f:Lo/a/b;

    invoke-interface {v0, p1}, Lo/a/b;->onNext(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1

    .line 5
    invoke-static {p0, v0, v1}, Li/c/b0/e/k/d;->c(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Li/c/b0/e/f/b/c$h;->i()V

    :goto_0
    return-void
.end method
