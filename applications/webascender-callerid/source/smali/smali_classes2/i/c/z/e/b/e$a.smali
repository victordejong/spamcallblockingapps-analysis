.class final Li/c/z/e/b/e$a;
.super Li/c/z/i/c;
.source "SourceFile"

# interfaces
.implements Li/c/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/z/i/c<",
        "TT;>;",
        "Li/c/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final h:J

.field final i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final j:Z

.field k:Lo/a/c;

.field l:J

.field m:Z


# direct methods
.method constructor <init>(Lo/a/b;JLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;JTT;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/i/c;-><init>(Lo/a/b;)V

    .line 2
    iput-wide p2, p0, Li/c/z/e/b/e$a;->h:J

    .line 3
    iput-object p4, p0, Li/c/z/e/b/e$a;->i:Ljava/lang/Object;

    .line 4
    iput-boolean p5, p0, Li/c/z/e/b/e$a;->j:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Li/c/z/i/c;->cancel()V

    .line 2
    iget-object v0, p0, Li/c/z/e/b/e$a;->k:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li/c/z/e/b/e$a;->m:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/z/e/b/e$a;->m:Z

    .line 3
    iget-object v0, p0, Li/c/z/e/b/e$a;->i:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 4
    iget-boolean v0, p0, Li/c/z/e/b/e$a;->j:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Li/c/z/i/c;->f:Lo/a/b;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v0, v1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Li/c/z/i/c;->f:Lo/a/b;

    invoke-interface {v0}, Lo/a/b;->onComplete()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Li/c/z/i/c;->b(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/z/e/b/e$a;->m:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li/c/z/e/b/e$a;->m:Z

    .line 4
    iget-object v0, p0, Li/c/z/i/c;->f:Lo/a/b;

    invoke-interface {v0, p1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Li/c/z/e/b/e$a;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Li/c/z/e/b/e$a;->l:J

    .line 3
    iget-wide v2, p0, Li/c/z/e/b/e$a;->h:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Li/c/z/e/b/e$a;->m:Z

    .line 5
    iget-object v0, p0, Li/c/z/e/b/e$a;->k:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    .line 6
    invoke-virtual {p0, p1}, Li/c/z/i/c;->b(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 7
    iput-wide v0, p0, Li/c/z/e/b/e$a;->l:J

    return-void
.end method

.method public onSubscribe(Lo/a/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/e/b/e$a;->k:Lo/a/c;

    invoke-static {v0, p1}, Li/c/z/i/g;->validate(Lo/a/c;Lo/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/z/e/b/e$a;->k:Lo/a/c;

    .line 3
    iget-object v0, p0, Li/c/z/i/c;->f:Lo/a/b;

    invoke-interface {v0, p0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    :cond_0
    return-void
.end method
