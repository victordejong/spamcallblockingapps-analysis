.class public final Li/c/b0/e/f/e/f0;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/f0$a;
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

.field final j:Z


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-wide p2, p0, Li/c/b0/e/f/e/f0;->g:J

    .line 3
    iput-object p4, p0, Li/c/b0/e/f/e/f0;->h:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Li/c/b0/e/f/e/f0;->i:Li/c/b0/b/d0;

    .line 5
    iput-boolean p6, p0, Li/c/b0/e/f/e/f0;->j:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/f0;->j:Z

    if-eqz v0, :cond_0

    move-object v2, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Li/c/b0/g/f;

    invoke-direct {v0, p1}, Li/c/b0/g/f;-><init>(Li/c/b0/b/c0;)V

    move-object v2, v0

    .line 3
    :goto_0
    iget-object p1, p0, Li/c/b0/e/f/e/f0;->i:Li/c/b0/b/d0;

    invoke-virtual {p1}, Li/c/b0/b/d0;->b()Li/c/b0/b/d0$c;

    move-result-object v6

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v0, Li/c/b0/e/f/e/f0$a;

    iget-wide v3, p0, Li/c/b0/e/f/e/f0;->g:J

    iget-object v5, p0, Li/c/b0/e/f/e/f0;->h:Ljava/util/concurrent/TimeUnit;

    iget-boolean v7, p0, Li/c/b0/e/f/e/f0;->j:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Li/c/b0/e/f/e/f0$a;-><init>(Li/c/b0/b/c0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0$c;Z)V

    invoke-interface {p1, v0}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
