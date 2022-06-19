.class public final Li/c/b0/e/f/e/m4;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/m4$d;,
        Li/c/b0/e/f/e/m4$b;,
        Li/c/b0/e/f/e/m4$c;,
        Li/c/b0/e/f/e/m4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;",
        "Li/c/b0/b/v<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final g:J

.field final h:J

.field final i:Ljava/util/concurrent/TimeUnit;

.field final j:Li/c/b0/b/d0;

.field final k:J

.field final l:I

.field final m:Z


# direct methods
.method public constructor <init>(Li/c/b0/b/v;JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;JIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "JIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-wide p2, p0, Li/c/b0/e/f/e/m4;->g:J

    .line 3
    iput-wide p4, p0, Li/c/b0/e/f/e/m4;->h:J

    .line 4
    iput-object p6, p0, Li/c/b0/e/f/e/m4;->i:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Li/c/b0/e/f/e/m4;->j:Li/c/b0/b/d0;

    .line 6
    iput-wide p8, p0, Li/c/b0/e/f/e/m4;->k:J

    .line 7
    iput p10, p0, Li/c/b0/e/f/e/m4;->l:I

    .line 8
    iput-boolean p11, p0, Li/c/b0/e/f/e/m4;->m:Z

    return-void
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Li/c/b0/e/f/e/m4;->g:J

    iget-wide v2, p0, Li/c/b0/e/f/e/m4;->h:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 2
    iget-wide v0, p0, Li/c/b0/e/f/e/m4;->k:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v8, Li/c/b0/e/f/e/m4$c;

    iget-wide v3, p0, Li/c/b0/e/f/e/m4;->g:J

    iget-object v5, p0, Li/c/b0/e/f/e/m4;->i:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Li/c/b0/e/f/e/m4;->j:Li/c/b0/b/d0;

    iget v7, p0, Li/c/b0/e/f/e/m4;->l:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Li/c/b0/e/f/e/m4$c;-><init>(Li/c/b0/b/c0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;I)V

    invoke-interface {v0, v8}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v11, Li/c/b0/e/f/e/m4$b;

    iget-wide v3, p0, Li/c/b0/e/f/e/m4;->g:J

    iget-object v5, p0, Li/c/b0/e/f/e/m4;->i:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Li/c/b0/e/f/e/m4;->j:Li/c/b0/b/d0;

    iget v7, p0, Li/c/b0/e/f/e/m4;->l:I

    iget-wide v8, p0, Li/c/b0/e/f/e/m4;->k:J

    iget-boolean v10, p0, Li/c/b0/e/f/e/m4;->m:Z

    move-object v1, v11

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Li/c/b0/e/f/e/m4$b;-><init>(Li/c/b0/b/c0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;IJZ)V

    invoke-interface {v0, v11}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v10, Li/c/b0/e/f/e/m4$d;

    iget-wide v3, p0, Li/c/b0/e/f/e/m4;->g:J

    iget-wide v5, p0, Li/c/b0/e/f/e/m4;->h:J

    iget-object v7, p0, Li/c/b0/e/f/e/m4;->i:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Li/c/b0/e/f/e/m4;->j:Li/c/b0/b/d0;

    .line 6
    invoke-virtual {v1}, Li/c/b0/b/d0;->b()Li/c/b0/b/d0$c;

    move-result-object v8

    iget v9, p0, Li/c/b0/e/f/e/m4;->l:I

    move-object v1, v10

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Li/c/b0/e/f/e/m4$d;-><init>(Li/c/b0/b/c0;JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0$c;I)V

    .line 7
    invoke-interface {v0, v10}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
