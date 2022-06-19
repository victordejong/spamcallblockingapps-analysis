.class public final Li/c/b0/e/f/e/d0;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/d0$a;,
        Li/c/b0/e/f/e/d0$b;
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


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-wide p2, p0, Li/c/b0/e/f/e/d0;->g:J

    .line 3
    iput-object p4, p0, Li/c/b0/e/f/e/d0;->h:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Li/c/b0/e/f/e/d0;->i:Li/c/b0/b/d0;

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
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v7, Li/c/b0/e/f/e/d0$b;

    new-instance v2, Li/c/b0/g/f;

    invoke-direct {v2, p1}, Li/c/b0/g/f;-><init>(Li/c/b0/b/c0;)V

    iget-wide v3, p0, Li/c/b0/e/f/e/d0;->g:J

    iget-object v5, p0, Li/c/b0/e/f/e/d0;->h:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p0, Li/c/b0/e/f/e/d0;->i:Li/c/b0/b/d0;

    .line 2
    invoke-virtual {p1}, Li/c/b0/b/d0;->b()Li/c/b0/b/d0$c;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/d0$b;-><init>(Li/c/b0/b/c0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0$c;)V

    .line 3
    invoke-interface {v0, v7}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
