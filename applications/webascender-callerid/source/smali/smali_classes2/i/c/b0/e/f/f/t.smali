.class public final Li/c/b0/e/f/f/t;
.super Li/c/b0/b/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/f/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/e0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/i0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:J

.field final h:Ljava/util/concurrent/TimeUnit;

.field final i:Li/c/b0/b/d0;

.field final j:Li/c/b0/b/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/i0<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/i0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Li/c/b0/b/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/i0<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "Li/c/b0/b/i0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e0;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/f/t;->f:Li/c/b0/b/i0;

    .line 3
    iput-wide p2, p0, Li/c/b0/e/f/f/t;->g:J

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/f/t;->h:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Li/c/b0/e/f/f/t;->i:Li/c/b0/b/d0;

    .line 6
    iput-object p6, p0, Li/c/b0/e/f/f/t;->j:Li/c/b0/b/i0;

    return-void
.end method


# virtual methods
.method protected C(Li/c/b0/b/g0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Li/c/b0/e/f/f/t$a;

    iget-object v2, p0, Li/c/b0/e/f/f/t;->j:Li/c/b0/b/i0;

    iget-wide v3, p0, Li/c/b0/e/f/f/t;->g:J

    iget-object v5, p0, Li/c/b0/e/f/f/t;->h:Ljava/util/concurrent/TimeUnit;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Li/c/b0/e/f/f/t$a;-><init>(Li/c/b0/b/g0;Li/c/b0/b/i0;JLjava/util/concurrent/TimeUnit;)V

    .line 2
    invoke-interface {p1, v6}, Li/c/b0/b/g0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    iget-object p1, v6, Li/c/b0/e/f/f/t$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Li/c/b0/e/f/f/t;->i:Li/c/b0/b/d0;

    iget-wide v1, p0, Li/c/b0/e/f/f/t;->g:J

    iget-object v3, p0, Li/c/b0/e/f/f/t;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v1, v2, v3}, Li/c/b0/b/d0;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object v0

    invoke-static {p1, v0}, Li/c/b0/e/a/c;->replace(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/f/t;->f:Li/c/b0/b/i0;

    invoke-interface {p1, v6}, Li/c/b0/b/i0;->a(Li/c/b0/b/g0;)V

    return-void
.end method
