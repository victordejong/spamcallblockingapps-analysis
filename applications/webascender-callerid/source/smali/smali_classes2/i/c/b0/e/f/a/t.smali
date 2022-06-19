.class public final Li/c/b0/e/f/a/t;
.super Li/c/b0/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/a/t$a;,
        Li/c/b0/e/f/a/t$b;
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/i;

.field final g:J

.field final h:Ljava/util/concurrent/TimeUnit;

.field final i:Li/c/b0/b/d0;

.field final j:Li/c/b0/b/i;


# direct methods
.method public constructor <init>(Li/c/b0/b/i;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Li/c/b0/b/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/a/t;->f:Li/c/b0/b/i;

    .line 3
    iput-wide p2, p0, Li/c/b0/e/f/a/t;->g:J

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/a/t;->h:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Li/c/b0/e/f/a/t;->i:Li/c/b0/b/d0;

    .line 6
    iput-object p6, p0, Li/c/b0/e/f/a/t;->j:Li/c/b0/b/i;

    return-void
.end method


# virtual methods
.method public F(Li/c/b0/b/g;)V
    .locals 7

    .line 1
    new-instance v0, Li/c/b0/c/a;

    invoke-direct {v0}, Li/c/b0/c/a;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/g;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 4
    iget-object v2, p0, Li/c/b0/e/f/a/t;->i:Li/c/b0/b/d0;

    new-instance v3, Li/c/b0/e/f/a/t$a;

    invoke-direct {v3, p0, v1, v0, p1}, Li/c/b0/e/f/a/t$a;-><init>(Li/c/b0/e/f/a/t;Ljava/util/concurrent/atomic/AtomicBoolean;Li/c/b0/c/a;Li/c/b0/b/g;)V

    iget-wide v4, p0, Li/c/b0/e/f/a/t;->g:J

    iget-object v6, p0, Li/c/b0/e/f/a/t;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Li/c/b0/b/d0;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 6
    iget-object v2, p0, Li/c/b0/e/f/a/t;->f:Li/c/b0/b/i;

    new-instance v3, Li/c/b0/e/f/a/t$b;

    invoke-direct {v3, v0, v1, p1}, Li/c/b0/e/f/a/t$b;-><init>(Li/c/b0/c/a;Ljava/util/concurrent/atomic/AtomicBoolean;Li/c/b0/b/g;)V

    invoke-interface {v2, v3}, Li/c/b0/b/i;->a(Li/c/b0/b/g;)V

    return-void
.end method
