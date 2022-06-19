.class public final Li/c/b0/e/f/e/t1;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/t1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/c/b0/b/v<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/d0;

.field final g:J

.field final h:J

.field final i:J

.field final j:J

.field final k:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJJJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput-wide p5, p0, Li/c/b0/e/f/e/t1;->i:J

    .line 3
    iput-wide p7, p0, Li/c/b0/e/f/e/t1;->j:J

    .line 4
    iput-object p9, p0, Li/c/b0/e/f/e/t1;->k:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p10, p0, Li/c/b0/e/f/e/t1;->f:Li/c/b0/b/d0;

    .line 6
    iput-wide p1, p0, Li/c/b0/e/f/e/t1;->g:J

    .line 7
    iput-wide p3, p0, Li/c/b0/e/f/e/t1;->h:J

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Li/c/b0/e/f/e/t1$a;

    iget-wide v2, p0, Li/c/b0/e/f/e/t1;->g:J

    iget-wide v4, p0, Li/c/b0/e/f/e/t1;->h:J

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Li/c/b0/e/f/e/t1$a;-><init>(Li/c/b0/b/c0;JJ)V

    .line 2
    invoke-interface {p1, v7}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/t1;->f:Li/c/b0/b/d0;

    .line 4
    instance-of p1, v0, Li/c/b0/e/h/n;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0}, Li/c/b0/b/d0;->b()Li/c/b0/b/d0$c;

    move-result-object v0

    .line 6
    invoke-virtual {v7, v0}, Li/c/b0/e/f/e/t1$a;->a(Li/c/b0/c/c;)V

    .line 7
    iget-wide v2, p0, Li/c/b0/e/f/e/t1;->i:J

    iget-wide v4, p0, Li/c/b0/e/f/e/t1;->j:J

    iget-object v6, p0, Li/c/b0/e/f/e/t1;->k:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Li/c/b0/b/d0$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v2, p0, Li/c/b0/e/f/e/t1;->i:J

    iget-wide v4, p0, Li/c/b0/e/f/e/t1;->j:J

    iget-object v6, p0, Li/c/b0/e/f/e/t1;->k:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Li/c/b0/b/d0;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object p1

    .line 9
    invoke-virtual {v7, p1}, Li/c/b0/e/f/e/t1$a;->a(Li/c/b0/c/c;)V

    :goto_0
    return-void
.end method
