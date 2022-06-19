.class public final Ln3/y/b/a/t0/g0;
.super Ln3/y/b/a/t0/b;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/t0/f0$c;


# instance fields
.field public final f:Landroid/net/Uri;

.field public final g:Ln3/y/b/a/w0/h$a;

.field public final h:Ln3/y/b/a/q0/i;

.field public final i:Ln3/y/b/a/p0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/y/b/a/p0/c<",
            "*>;"
        }
    .end annotation
.end field

.field public final j:Ln3/y/b/a/w0/z;

.field public final k:Ljava/lang/String;

.field public final l:I

.field public final m:Ljava/lang/Object;

.field public n:J

.field public o:Z

.field public p:Ln3/y/b/a/w0/e0;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ln3/y/b/a/w0/h$a;Ln3/y/b/a/q0/i;Ln3/y/b/a/p0/c;Ln3/y/b/a/w0/z;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ln3/y/b/a/w0/h$a;",
            "Ln3/y/b/a/q0/i;",
            "Ln3/y/b/a/p0/c<",
            "*>;",
            "Ln3/y/b/a/w0/z;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ln3/y/b/a/t0/b;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/t0/g0;->f:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Ln3/y/b/a/t0/g0;->g:Ln3/y/b/a/w0/h$a;

    .line 4
    iput-object p3, p0, Ln3/y/b/a/t0/g0;->h:Ln3/y/b/a/q0/i;

    .line 5
    iput-object p4, p0, Ln3/y/b/a/t0/g0;->i:Ln3/y/b/a/p0/c;

    .line 6
    iput-object p5, p0, Ln3/y/b/a/t0/g0;->j:Ln3/y/b/a/w0/z;

    .line 7
    iput-object p6, p0, Ln3/y/b/a/t0/g0;->k:Ljava/lang/String;

    .line 8
    iput p7, p0, Ln3/y/b/a/t0/g0;->l:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Ln3/y/b/a/t0/g0;->n:J

    .line 10
    iput-object p8, p0, Ln3/y/b/a/t0/g0;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public c(Ln3/y/b/a/t0/s;)V
    .locals 5

    .line 1
    check-cast p1, Ln3/y/b/a/t0/f0;

    .line 2
    iget-boolean v0, p1, Ln3/y/b/a/t0/f0;->w:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p1, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {v4}, Ln3/y/b/a/t0/i0;->i()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p1, Ln3/y/b/a/t0/f0;->t:[Ln3/y/b/a/t0/k;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 6
    invoke-virtual {v3}, Ln3/y/b/a/t0/k;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p1, Ln3/y/b/a/t0/f0;->j:Ln3/y/b/a/w0/a0;

    invoke-virtual {v0, p1}, Ln3/y/b/a/w0/a0;->e(Ln3/y/b/a/w0/a0$f;)V

    .line 8
    iget-object v0, p1, Ln3/y/b/a/t0/f0;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iput-object v1, p1, Ln3/y/b/a/t0/f0;->p:Ln3/y/b/a/t0/s$a;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p1, Ln3/y/b/a/t0/f0;->P:Z

    .line 11
    iget-object p1, p1, Ln3/y/b/a/t0/f0;->e:Ln3/y/b/a/t0/c0$a;

    invoke-virtual {p1}, Ln3/y/b/a/t0/c0$a;->q()V

    return-void
.end method

.method public e(Ln3/y/b/a/t0/t$a;Ln3/y/b/a/w0/b;J)Ln3/y/b/a/t0/s;
    .locals 11

    .line 1
    iget-object p3, p0, Ln3/y/b/a/t0/g0;->g:Ln3/y/b/a/w0/h$a;

    invoke-interface {p3}, Ln3/y/b/a/w0/h$a;->a()Ln3/y/b/a/w0/h;

    move-result-object v2

    .line 2
    iget-object p3, p0, Ln3/y/b/a/t0/g0;->p:Ln3/y/b/a/w0/e0;

    if-eqz p3, :cond_0

    .line 3
    invoke-interface {v2, p3}, Ln3/y/b/a/w0/h;->c(Ln3/y/b/a/w0/e0;)V

    .line 4
    :cond_0
    new-instance p3, Ln3/y/b/a/t0/f0;

    iget-object v1, p0, Ln3/y/b/a/t0/g0;->f:Landroid/net/Uri;

    iget-object p4, p0, Ln3/y/b/a/t0/g0;->h:Ln3/y/b/a/q0/i;

    .line 5
    invoke-interface {p4}, Ln3/y/b/a/q0/i;->a()[Ln3/y/b/a/q0/g;

    move-result-object v3

    iget-object v4, p0, Ln3/y/b/a/t0/g0;->i:Ln3/y/b/a/p0/c;

    iget-object v5, p0, Ln3/y/b/a/t0/g0;->j:Ln3/y/b/a/w0/z;

    .line 6
    invoke-virtual {p0, p1}, Ln3/y/b/a/t0/b;->j(Ln3/y/b/a/t0/t$a;)Ln3/y/b/a/t0/c0$a;

    move-result-object v6

    iget-object v9, p0, Ln3/y/b/a/t0/g0;->k:Ljava/lang/String;

    iget v10, p0, Ln3/y/b/a/t0/g0;->l:I

    move-object v0, p3

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v10}, Ln3/y/b/a/t0/f0;-><init>(Landroid/net/Uri;Ln3/y/b/a/w0/h;[Ln3/y/b/a/q0/g;Ln3/y/b/a/p0/c;Ln3/y/b/a/w0/z;Ln3/y/b/a/t0/c0$a;Ln3/y/b/a/t0/f0$c;Ln3/y/b/a/w0/b;Ljava/lang/String;I)V

    return-object p3
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/g0;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public m(Ln3/y/b/a/w0/e0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ln3/y/b/a/t0/g0;->p:Ln3/y/b/a/w0/e0;

    .line 2
    iget-wide v0, p0, Ln3/y/b/a/t0/g0;->n:J

    iget-boolean p1, p0, Ln3/y/b/a/t0/g0;->o:Z

    invoke-virtual {p0, v0, v1, p1}, Ln3/y/b/a/t0/g0;->p(JZ)V

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public final p(JZ)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 1
    iput-wide v1, v0, Ln3/y/b/a/t0/g0;->n:J

    move/from16 v1, p3

    .line 2
    iput-boolean v1, v0, Ln3/y/b/a/t0/g0;->o:Z

    .line 3
    new-instance v14, Ln3/y/b/a/t0/m0;

    iget-wide v8, v0, Ln3/y/b/a/t0/g0;->n:J

    iget-boolean v6, v0, Ln3/y/b/a/t0/g0;->o:Z

    iget-object v7, v0, Ln3/y/b/a/t0/g0;->m:Ljava/lang/Object;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v1, v14

    move/from16 v17, v6

    move-object/from16 v18, v7

    move-wide v6, v8

    move-object/from16 v19, v14

    move/from16 v14, v17

    move-object/from16 v17, v18

    .line 4
    invoke-direct/range {v1 .. v17}, Ln3/y/b/a/t0/m0;-><init>(JJJJJJZZLjava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v1, v19

    .line 5
    invoke-virtual {v0, v1}, Ln3/y/b/a/t0/b;->n(Ln3/y/b/a/l0;)V

    return-void
.end method

.method public q(JZ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1
    iget-wide p1, p0, Ln3/y/b/a/t0/g0;->n:J

    .line 2
    :cond_0
    iget-wide v0, p0, Ln3/y/b/a/t0/g0;->n:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ln3/y/b/a/t0/g0;->o:Z

    if-ne v0, p3, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ln3/y/b/a/t0/g0;->p(JZ)V

    return-void
.end method
