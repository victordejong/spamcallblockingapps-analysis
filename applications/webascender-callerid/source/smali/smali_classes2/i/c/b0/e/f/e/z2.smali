.class public final Li/c/b0/e/f/e/z2;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/z2$a;,
        Li/c/b0/e/f/e/z2$b;,
        Li/c/b0/e/f/e/z2$c;
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
    iput-wide p2, p0, Li/c/b0/e/f/e/z2;->g:J

    .line 3
    iput-object p4, p0, Li/c/b0/e/f/e/z2;->h:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Li/c/b0/e/f/e/z2;->i:Li/c/b0/b/d0;

    .line 5
    iput-boolean p6, p0, Li/c/b0/e/f/e/z2;->j:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v1, Li/c/b0/g/f;

    invoke-direct {v1, p1}, Li/c/b0/g/f;-><init>(Li/c/b0/b/c0;)V

    .line 2
    iget-boolean p1, p0, Li/c/b0/e/f/e/z2;->j:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v6, Li/c/b0/e/f/e/z2$a;

    iget-wide v2, p0, Li/c/b0/e/f/e/z2;->g:J

    iget-object v4, p0, Li/c/b0/e/f/e/z2;->h:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Li/c/b0/e/f/e/z2;->i:Li/c/b0/b/d0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Li/c/b0/e/f/e/z2$a;-><init>(Li/c/b0/b/c0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V

    invoke-interface {p1, v6}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v6, Li/c/b0/e/f/e/z2$b;

    iget-wide v2, p0, Li/c/b0/e/f/e/z2;->g:J

    iget-object v4, p0, Li/c/b0/e/f/e/z2;->h:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Li/c/b0/e/f/e/z2;->i:Li/c/b0/b/d0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Li/c/b0/e/f/e/z2$b;-><init>(Li/c/b0/b/c0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V

    invoke-interface {p1, v6}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    :goto_0
    return-void
.end method
