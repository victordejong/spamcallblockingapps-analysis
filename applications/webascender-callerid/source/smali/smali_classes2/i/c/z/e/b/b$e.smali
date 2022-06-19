.class final Li/c/z/e/b/b$e;
.super Li/c/z/i/f;
.source "SourceFile"

# interfaces
.implements Li/c/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/z/i/f;",
        "Li/c/i<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final n:Li/c/z/e/b/b$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/z/e/b/b$f<",
            "TR;>;"
        }
    .end annotation
.end field

.field o:J


# direct methods
.method constructor <init>(Li/c/z/e/b/b$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/z/e/b/b$f<",
            "TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Li/c/z/i/f;-><init>(Z)V

    .line 2
    iput-object p1, p0, Li/c/z/e/b/b$e;->n:Li/c/z/e/b/b$f;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .line 1
    iget-wide v0, p0, Li/c/z/e/b/b$e;->o:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iput-wide v2, p0, Li/c/z/e/b/b$e;->o:J

    .line 3
    invoke-virtual {p0, v0, v1}, Li/c/z/i/f;->e(J)V

    .line 4
    :cond_0
    iget-object v0, p0, Li/c/z/e/b/b$e;->n:Li/c/z/e/b/b$f;

    invoke-interface {v0}, Li/c/z/e/b/b$f;->c()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Li/c/z/e/b/b$e;->o:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iput-wide v2, p0, Li/c/z/e/b/b$e;->o:J

    .line 3
    invoke-virtual {p0, v0, v1}, Li/c/z/i/f;->e(J)V

    .line 4
    :cond_0
    iget-object v0, p0, Li/c/z/e/b/b$e;->n:Li/c/z/e/b/b$f;

    invoke-interface {v0, p1}, Li/c/z/e/b/b$f;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Li/c/z/e/b/b$e;->o:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Li/c/z/e/b/b$e;->o:J

    .line 2
    iget-object v0, p0, Li/c/z/e/b/b$e;->n:Li/c/z/e/b/b$f;

    invoke-interface {v0, p1}, Li/c/z/e/b/b$f;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lo/a/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li/c/z/i/f;->f(Lo/a/c;)V

    return-void
.end method
