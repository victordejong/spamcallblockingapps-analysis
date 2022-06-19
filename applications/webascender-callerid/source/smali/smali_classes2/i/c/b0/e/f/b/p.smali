.class public final Li/c/b0/e/f/b/p;
.super Li/c/b0/e/f/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/b/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/b/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final h:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/l<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lo/a/a<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/l;Li/c/b0/d/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/l<",
            "TT;>;",
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/l<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lo/a/a<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/b/a;-><init>(Li/c/b0/b/l;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/b/p;->h:Li/c/b0/d/o;

    return-void
.end method


# virtual methods
.method public u(Lo/a/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/l/a;

    invoke-direct {v0, p1}, Li/c/b0/l/a;-><init>(Lo/a/b;)V

    const/16 v1, 0x8

    .line 2
    invoke-static {v1}, Li/c/b0/i/c;->z(I)Li/c/b0/i/c;

    move-result-object v1

    invoke-virtual {v1}, Li/c/b0/i/a;->x()Li/c/b0/i/a;

    move-result-object v1

    .line 3
    :try_start_0
    iget-object v2, p0, Li/c/b0/e/f/b/p;->h:Li/c/b0/d/o;

    invoke-interface {v2, v1}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "handler returned a null Publisher"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lo/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    new-instance v3, Li/c/b0/e/f/b/m;

    iget-object v4, p0, Li/c/b0/e/f/b/a;->g:Li/c/b0/b/l;

    invoke-direct {v3, v4}, Li/c/b0/e/f/b/m;-><init>(Lo/a/a;)V

    .line 5
    new-instance v4, Li/c/b0/e/f/b/p$a;

    invoke-direct {v4, v0, v1, v3}, Li/c/b0/e/f/b/p$a;-><init>(Lo/a/b;Li/c/b0/i/a;Lo/a/c;)V

    .line 6
    iput-object v4, v3, Li/c/b0/e/f/b/m;->i:Li/c/b0/e/f/b/n;

    .line 7
    invoke-interface {p1, v4}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    .line 8
    invoke-interface {v2, v3}, Lo/a/a;->a(Lo/a/b;)V

    const/4 p1, 0x0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Li/c/b0/e/f/b/m;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 11
    invoke-static {v0, p1}, Li/c/b0/e/j/c;->error(Ljava/lang/Throwable;Lo/a/b;)V

    return-void
.end method
