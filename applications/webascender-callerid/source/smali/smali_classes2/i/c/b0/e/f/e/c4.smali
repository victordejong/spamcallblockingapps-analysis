.class public final Li/c/b0/e/f/e/c4;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/c4$d;,
        Li/c/b0/e/f/e/c4$a;,
        Li/c/b0/e/f/e/c4$b;,
        Li/c/b0/e/f/e/c4$e;,
        Li/c/b0/e/f/e/c4$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final g:J

.field final h:Ljava/util/concurrent/TimeUnit;

.field final i:Li/c/b0/b/d0;

.field final j:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/v;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Li/c/b0/b/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "Li/c/b0/b/a0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-wide p2, p0, Li/c/b0/e/f/e/c4;->g:J

    .line 3
    iput-object p4, p0, Li/c/b0/e/f/e/c4;->h:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Li/c/b0/e/f/e/c4;->i:Li/c/b0/b/d0;

    .line 5
    iput-object p6, p0, Li/c/b0/e/f/e/c4;->j:Li/c/b0/b/a0;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/c4;->j:Li/c/b0/b/a0;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Li/c/b0/e/f/e/c4$c;

    iget-wide v5, p0, Li/c/b0/e/f/e/c4;->g:J

    iget-object v7, p0, Li/c/b0/e/f/e/c4;->h:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Li/c/b0/e/f/e/c4;->i:Li/c/b0/b/d0;

    invoke-virtual {v3}, Li/c/b0/b/d0;->b()Li/c/b0/b/d0$c;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Li/c/b0/e/f/e/c4$c;-><init>(Li/c/b0/b/c0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0$c;)V

    .line 3
    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Li/c/b0/e/f/e/c4$c;->c(J)V

    .line 5
    iget-object p1, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    invoke-interface {p1, v0}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Li/c/b0/e/f/e/c4$b;

    iget-wide v5, p0, Li/c/b0/e/f/e/c4;->g:J

    iget-object v7, p0, Li/c/b0/e/f/e/c4;->h:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Li/c/b0/e/f/e/c4;->i:Li/c/b0/b/d0;

    invoke-virtual {v3}, Li/c/b0/b/d0;->b()Li/c/b0/b/d0$c;

    move-result-object v8

    iget-object v9, p0, Li/c/b0/e/f/e/c4;->j:Li/c/b0/b/a0;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Li/c/b0/e/f/e/c4$b;-><init>(Li/c/b0/b/c0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0$c;Li/c/b0/b/a0;)V

    .line 7
    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 8
    invoke-virtual {v0, v1, v2}, Li/c/b0/e/f/e/c4$b;->c(J)V

    .line 9
    iget-object p1, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    invoke-interface {p1, v0}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    :goto_0
    return-void
.end method
