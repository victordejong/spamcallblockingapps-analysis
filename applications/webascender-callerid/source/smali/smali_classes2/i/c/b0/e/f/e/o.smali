.class public final Li/c/b0/e/f/e/o;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/o$a;,
        Li/c/b0/e/f/e/o$c;,
        Li/c/b0/e/f/e/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Li/c/b0/e/f/e/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final g:J

.field final h:J

.field final i:Ljava/util/concurrent/TimeUnit;

.field final j:Li/c/b0/b/d0;

.field final k:Li/c/b0/d/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/q<",
            "TU;>;"
        }
    .end annotation
.end field

.field final l:I

.field final m:Z


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Li/c/b0/d/q;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "Li/c/b0/d/q<",
            "TU;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-wide p2, p0, Li/c/b0/e/f/e/o;->g:J

    .line 3
    iput-wide p4, p0, Li/c/b0/e/f/e/o;->h:J

    .line 4
    iput-object p6, p0, Li/c/b0/e/f/e/o;->i:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Li/c/b0/e/f/e/o;->j:Li/c/b0/b/d0;

    .line 6
    iput-object p8, p0, Li/c/b0/e/f/e/o;->k:Li/c/b0/d/q;

    .line 7
    iput p9, p0, Li/c/b0/e/f/e/o;->l:I

    .line 8
    iput-boolean p10, p0, Li/c/b0/e/f/e/o;->m:Z

    return-void
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-wide v3, p0, Li/c/b0/e/f/e/o;->g:J

    iget-wide v0, p0, Li/c/b0/e/f/e/o;->h:J

    cmp-long v2, v3, v0

    if-nez v2, :cond_0

    iget v0, p0, Li/c/b0/e/f/e/o;->l:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v7, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v8, Li/c/b0/e/f/e/o$b;

    new-instance v1, Li/c/b0/g/f;

    invoke-direct {v1, p1}, Li/c/b0/g/f;-><init>(Li/c/b0/b/c0;)V

    iget-object v2, p0, Li/c/b0/e/f/e/o;->k:Li/c/b0/d/q;

    iget-object v5, p0, Li/c/b0/e/f/e/o;->i:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Li/c/b0/e/f/e/o;->j:Li/c/b0/b/d0;

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Li/c/b0/e/f/e/o$b;-><init>(Li/c/b0/b/c0;Li/c/b0/d/q;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V

    invoke-interface {v7, v8}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/o;->j:Li/c/b0/b/d0;

    invoke-virtual {v0}, Li/c/b0/b/d0;->b()Li/c/b0/b/d0$c;

    move-result-object v9

    .line 4
    iget-wide v4, p0, Li/c/b0/e/f/e/o;->g:J

    iget-wide v6, p0, Li/c/b0/e/f/e/o;->h:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v10, Li/c/b0/e/f/e/o$a;

    new-instance v2, Li/c/b0/g/f;

    invoke-direct {v2, p1}, Li/c/b0/g/f;-><init>(Li/c/b0/b/c0;)V

    iget-object v3, p0, Li/c/b0/e/f/e/o;->k:Li/c/b0/d/q;

    iget-object v6, p0, Li/c/b0/e/f/e/o;->i:Ljava/util/concurrent/TimeUnit;

    iget v7, p0, Li/c/b0/e/f/e/o;->l:I

    iget-boolean v8, p0, Li/c/b0/e/f/e/o;->m:Z

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Li/c/b0/e/f/e/o$a;-><init>(Li/c/b0/b/c0;Li/c/b0/d/q;JLjava/util/concurrent/TimeUnit;IZLi/c/b0/b/d0$c;)V

    invoke-interface {v0, v10}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v10, Li/c/b0/e/f/e/o$c;

    new-instance v2, Li/c/b0/g/f;

    invoke-direct {v2, p1}, Li/c/b0/g/f;-><init>(Li/c/b0/b/c0;)V

    iget-object v3, p0, Li/c/b0/e/f/e/o;->k:Li/c/b0/d/q;

    iget-object v8, p0, Li/c/b0/e/f/e/o;->i:Ljava/util/concurrent/TimeUnit;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Li/c/b0/e/f/e/o$c;-><init>(Li/c/b0/b/c0;Li/c/b0/d/q;JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0$c;)V

    invoke-interface {v0, v10}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
