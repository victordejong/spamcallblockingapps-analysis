.class public final Li/c/z/e/b/m;
.super Li/c/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/m$b;,
        Li/c/z/e/b/m$c;,
        Li/c/z/e/b/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final g:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/f;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/b/m;->g:Ljava/lang/Iterable;

    return-void
.end method

.method public static K(Lo/a/b;Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/a/b<",
            "-TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Li/c/z/i/d;->complete(Lo/a/b;)V

    return-void

    .line 3
    :cond_0
    instance-of v0, p0, Li/c/z/c/a;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Li/c/z/e/b/m$b;

    move-object v1, p0

    check-cast v1, Li/c/z/c/a;

    invoke-direct {v0, v1, p1}, Li/c/z/e/b/m$b;-><init>(Li/c/z/c/a;Ljava/util/Iterator;)V

    invoke-interface {p0, v0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Li/c/z/e/b/m$c;

    invoke-direct {v0, p0, p1}, Li/c/z/e/b/m$c;-><init>(Lo/a/b;Ljava/util/Iterator;)V

    invoke-interface {p0, v0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {p1, p0}, Li/c/z/i/d;->error(Ljava/lang/Throwable;Lo/a/b;)V

    return-void
.end method


# virtual methods
.method public I(Lo/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/z/e/b/m;->g:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-static {p1, v0}, Li/c/z/e/b/m;->K(Lo/a/b;Ljava/util/Iterator;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {v0, p1}, Li/c/z/i/d;->error(Ljava/lang/Throwable;Lo/a/b;)V

    return-void
.end method
