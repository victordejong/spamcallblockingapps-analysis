.class final Li/c/z/e/b/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/i;
.implements Li/c/w/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/b/f;
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
        "Ljava/lang/Object;",
        "Li/c/i<",
        "TT;>;",
        "Li/c/w/b;"
    }
.end annotation


# instance fields
.field final f:Li/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/l<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:J

.field h:Lo/a/c;

.field i:J

.field j:Z


# direct methods
.method constructor <init>(Li/c/l;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/l<",
            "-TT;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/b/f$a;->f:Li/c/l;

    .line 3
    iput-wide p2, p0, Li/c/z/e/b/f$a;->g:J

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/b/f$a;->h:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    .line 2
    sget-object v0, Li/c/z/i/g;->CANCELLED:Li/c/z/i/g;

    iput-object v0, p0, Li/c/z/e/b/f$a;->h:Lo/a/c;

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/e/b/f$a;->h:Lo/a/c;

    sget-object v1, Li/c/z/i/g;->CANCELLED:Li/c/z/i/g;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    sget-object v0, Li/c/z/i/g;->CANCELLED:Li/c/z/i/g;

    iput-object v0, p0, Li/c/z/e/b/f$a;->h:Lo/a/c;

    .line 2
    iget-boolean v0, p0, Li/c/z/e/b/f$a;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li/c/z/e/b/f$a;->j:Z

    .line 4
    iget-object v0, p0, Li/c/z/e/b/f$a;->f:Li/c/l;

    invoke-interface {v0}, Li/c/l;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/z/e/b/f$a;->j:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li/c/z/e/b/f$a;->j:Z

    .line 4
    sget-object v0, Li/c/z/i/g;->CANCELLED:Li/c/z/i/g;

    iput-object v0, p0, Li/c/z/e/b/f$a;->h:Lo/a/c;

    .line 5
    iget-object v0, p0, Li/c/z/e/b/f$a;->f:Li/c/l;

    invoke-interface {v0, p1}, Li/c/l;->onError(Ljava/lang/Throwable;)V

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
    iget-boolean v0, p0, Li/c/z/e/b/f$a;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Li/c/z/e/b/f$a;->i:J

    .line 3
    iget-wide v2, p0, Li/c/z/e/b/f$a;->g:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Li/c/z/e/b/f$a;->j:Z

    .line 5
    iget-object v0, p0, Li/c/z/e/b/f$a;->h:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    .line 6
    sget-object v0, Li/c/z/i/g;->CANCELLED:Li/c/z/i/g;

    iput-object v0, p0, Li/c/z/e/b/f$a;->h:Lo/a/c;

    .line 7
    iget-object v0, p0, Li/c/z/e/b/f$a;->f:Li/c/l;

    invoke-interface {v0, p1}, Li/c/l;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Li/c/z/e/b/f$a;->i:J

    return-void
.end method

.method public onSubscribe(Lo/a/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/e/b/f$a;->h:Lo/a/c;

    invoke-static {v0, p1}, Li/c/z/i/g;->validate(Lo/a/c;Lo/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/z/e/b/f$a;->h:Lo/a/c;

    .line 3
    iget-object v0, p0, Li/c/z/e/b/f$a;->f:Li/c/l;

    invoke-interface {v0, p0}, Li/c/l;->a(Li/c/w/b;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    :cond_0
    return-void
.end method
