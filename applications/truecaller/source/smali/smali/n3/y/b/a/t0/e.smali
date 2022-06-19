.class public final Ln3/y/b/a/t0/e;
.super Ln3/y/b/a/t0/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/t0/e$a;,
        Ln3/y/b/a/t0/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/y/b/a/t0/g<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Ln3/y/b/a/t0/t;

.field public final j:J

.field public final k:J

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/y/b/a/t0/d;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ln3/y/b/a/l0$c;

.field public q:Ln3/y/b/a/t0/e$a;

.field public r:Ln3/y/b/a/t0/e$b;

.field public s:J

.field public t:J


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/t;JJZZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln3/y/b/a/t0/g;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    .line 3
    iput-object p1, p0, Ln3/y/b/a/t0/e;->i:Ln3/y/b/a/t0/t;

    .line 4
    iput-wide p2, p0, Ln3/y/b/a/t0/e;->j:J

    .line 5
    iput-wide p4, p0, Ln3/y/b/a/t0/e;->k:J

    .line 6
    iput-boolean p6, p0, Ln3/y/b/a/t0/e;->l:Z

    .line 7
    iput-boolean p7, p0, Ln3/y/b/a/t0/e;->m:Z

    .line 8
    iput-boolean p8, p0, Ln3/y/b/a/t0/e;->n:Z

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/e;->o:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Ln3/y/b/a/l0$c;

    invoke-direct {p1}, Ln3/y/b/a/l0$c;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/e;->p:Ln3/y/b/a/l0$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/e;->r:Ln3/y/b/a/t0/e$b;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Ln3/y/b/a/t0/g;->a()V

    return-void

    .line 3
    :cond_0
    throw v0
.end method

.method public c(Ln3/y/b/a/t0/s;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/e;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/e;->i:Ln3/y/b/a/t0/t;

    check-cast p1, Ln3/y/b/a/t0/d;

    iget-object p1, p1, Ln3/y/b/a/t0/d;->a:Ln3/y/b/a/t0/s;

    invoke-interface {v0, p1}, Ln3/y/b/a/t0/t;->c(Ln3/y/b/a/t0/s;)V

    .line 3
    iget-object p1, p0, Ln3/y/b/a/t0/e;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Ln3/y/b/a/t0/e;->m:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Ln3/y/b/a/t0/e;->q:Ln3/y/b/a/t0/e$a;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p1, Ln3/y/b/a/t0/o;->b:Ln3/y/b/a/l0;

    invoke-virtual {p0, p1}, Ln3/y/b/a/t0/e;->v(Ln3/y/b/a/l0;)V

    :cond_0
    return-void
.end method

.method public e(Ln3/y/b/a/t0/t$a;Ln3/y/b/a/w0/b;J)Ln3/y/b/a/t0/s;
    .locals 8

    .line 1
    new-instance v7, Ln3/y/b/a/t0/d;

    iget-object v0, p0, Ln3/y/b/a/t0/e;->i:Ln3/y/b/a/t0/t;

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Ln3/y/b/a/t0/t;->e(Ln3/y/b/a/t0/t$a;Ln3/y/b/a/w0/b;J)Ln3/y/b/a/t0/s;

    move-result-object v1

    iget-boolean v2, p0, Ln3/y/b/a/t0/e;->l:Z

    iget-wide v3, p0, Ln3/y/b/a/t0/e;->s:J

    iget-wide v5, p0, Ln3/y/b/a/t0/e;->t:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ln3/y/b/a/t0/d;-><init>(Ln3/y/b/a/t0/s;ZJJ)V

    .line 3
    iget-object p1, p0, Ln3/y/b/a/t0/e;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/e;->i:Ln3/y/b/a/t0/t;

    invoke-interface {v0}, Ln3/y/b/a/t0/t;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public m(Ln3/y/b/a/w0/e0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ln3/y/b/a/t0/g;->h:Ln3/y/b/a/w0/e0;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/g;->g:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 3
    iget-object v0, p0, Ln3/y/b/a/t0/e;->i:Ln3/y/b/a/t0/t;

    invoke-virtual {p0, p1, v0}, Ln3/y/b/a/t0/g;->t(Ljava/lang/Object;Ln3/y/b/a/t0/t;)V

    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/y/b/a/t0/g;->o()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ln3/y/b/a/t0/e;->r:Ln3/y/b/a/t0/e$b;

    .line 3
    iput-object v0, p0, Ln3/y/b/a/t0/e;->q:Ln3/y/b/a/t0/e$a;

    return-void
.end method

.method public q(Ljava/lang/Object;J)J
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Void;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Ln3/y/b/a/t0/e;->j:J

    invoke-static {v0, v1}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    sub-long/2addr p2, v0

    .line 3
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 4
    iget-wide v2, p0, Ln3/y/b/a/t0/e;->k:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p3, v2, v4

    if-eqz p3, :cond_1

    .line 5
    invoke-static {v2, v3}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_1
    move-wide v0, p1

    :goto_0
    return-wide v0
.end method

.method public s(Ljava/lang/Object;Ln3/y/b/a/t0/t;Ln3/y/b/a/l0;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Ln3/y/b/a/t0/e;->r:Ln3/y/b/a/t0/e$b;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p3}, Ln3/y/b/a/t0/e;->v(Ln3/y/b/a/l0;)V

    :goto_0
    return-void
.end method

.method public final v(Ln3/y/b/a/l0;)V
    .locals 15

    move-object v1, p0

    .line 1
    iget-object v0, v1, Ln3/y/b/a/t0/e;->p:Ln3/y/b/a/l0$c;

    const/4 v2, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v0}, Ln3/y/b/a/l0;->m(ILn3/y/b/a/l0$c;)Ln3/y/b/a/l0$c;

    .line 2
    iget-object v0, v1, Ln3/y/b/a/t0/e;->p:Ln3/y/b/a/l0$c;

    .line 3
    iget-wide v5, v0, Ln3/y/b/a/l0$c;->k:J

    .line 4
    iget-object v0, v1, Ln3/y/b/a/t0/e;->q:Ln3/y/b/a/t0/e$a;

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Ln3/y/b/a/t0/e;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Ln3/y/b/a/t0/e;->m:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-wide v2, v1, Ln3/y/b/a/t0/e;->s:J

    sub-long/2addr v2, v5

    .line 6
    iget-wide v9, v1, Ln3/y/b/a/t0/e;->k:J

    cmp-long v0, v9, v7

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-wide v7, v1, Ln3/y/b/a/t0/e;->t:J

    sub-long/2addr v7, v5

    :goto_0
    move-wide v5, v2

    goto :goto_5

    .line 8
    :cond_2
    :goto_1
    iget-wide v9, v1, Ln3/y/b/a/t0/e;->j:J

    .line 9
    iget-wide v11, v1, Ln3/y/b/a/t0/e;->k:J

    .line 10
    iget-boolean v0, v1, Ln3/y/b/a/t0/e;->n:Z

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, v1, Ln3/y/b/a/t0/e;->p:Ln3/y/b/a/l0$c;

    .line 12
    iget-wide v13, v0, Ln3/y/b/a/l0$c;->i:J

    add-long/2addr v9, v13

    add-long/2addr v13, v11

    goto :goto_2

    :cond_3
    move-wide v13, v11

    :goto_2
    add-long v2, v5, v9

    .line 13
    iput-wide v2, v1, Ln3/y/b/a/t0/e;->s:J

    cmp-long v2, v11, v7

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    add-long v7, v5, v13

    .line 14
    :goto_3
    iput-wide v7, v1, Ln3/y/b/a/t0/e;->t:J

    .line 15
    iget-object v2, v1, Ln3/y/b/a/t0/e;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_5

    .line 16
    iget-object v3, v1, Ln3/y/b/a/t0/e;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/y/b/a/t0/d;

    iget-wide v5, v1, Ln3/y/b/a/t0/e;->s:J

    iget-wide v7, v1, Ln3/y/b/a/t0/e;->t:J

    .line 17
    iput-wide v5, v3, Ln3/y/b/a/t0/d;->e:J

    .line 18
    iput-wide v7, v3, Ln3/y/b/a/t0/d;->f:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move-wide v5, v9

    move-wide v7, v13

    .line 19
    :goto_5
    :try_start_0
    new-instance v0, Ln3/y/b/a/t0/e$a;

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Ln3/y/b/a/t0/e$a;-><init>(Ln3/y/b/a/l0;JJ)V

    iput-object v0, v1, Ln3/y/b/a/t0/e;->q:Ln3/y/b/a/t0/e$a;
    :try_end_0
    .catch Ln3/y/b/a/t0/e$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    invoke-virtual {p0, v0}, Ln3/y/b/a/t0/b;->n(Ln3/y/b/a/l0;)V

    return-void

    :catch_0
    move-exception v0

    .line 21
    iput-object v0, v1, Ln3/y/b/a/t0/e;->r:Ln3/y/b/a/t0/e$b;

    return-void
.end method
