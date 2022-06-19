.class abstract Li/c/b0/e/f/b/n;
.super Li/c/b0/e/j/e;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/j/e;",
        "Li/c/b0/b/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final n:Lo/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a/b<",
            "-TT;>;"
        }
    .end annotation
.end field

.field protected final o:Li/c/b0/i/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/i/a<",
            "TU;>;"
        }
    .end annotation
.end field

.field protected final p:Lo/a/c;

.field private q:J


# direct methods
.method constructor <init>(Lo/a/b;Li/c/b0/i/a;Lo/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;",
            "Li/c/b0/i/a<",
            "TU;>;",
            "Lo/a/c;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Li/c/b0/e/j/e;-><init>(Z)V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/b/n;->n:Lo/a/b;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/b/n;->o:Li/c/b0/i/a;

    .line 4
    iput-object p3, p0, Li/c/b0/e/f/b/n;->p:Lo/a/c;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Li/c/b0/e/j/e;->cancel()V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/b/n;->p:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    return-void
.end method

.method protected final h(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/j/c;->INSTANCE:Li/c/b0/e/j/c;

    invoke-virtual {p0, v0}, Li/c/b0/e/j/e;->g(Lo/a/c;)V

    .line 2
    iget-wide v0, p0, Li/c/b0/e/f/b/n;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    iput-wide v2, p0, Li/c/b0/e/f/b/n;->q:J

    .line 4
    invoke-virtual {p0, v0, v1}, Li/c/b0/e/j/e;->f(J)V

    .line 5
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/b/n;->p:Lo/a/c;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lo/a/c;->request(J)V

    .line 6
    iget-object v0, p0, Li/c/b0/e/f/b/n;->o:Li/c/b0/i/a;

    invoke-interface {v0, p1}, Lo/a/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Li/c/b0/e/f/b/n;->q:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Li/c/b0/e/f/b/n;->q:J

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/b/n;->n:Lo/a/b;

    invoke-interface {v0, p1}, Lo/a/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lo/a/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li/c/b0/e/j/e;->g(Lo/a/c;)V

    return-void
.end method
