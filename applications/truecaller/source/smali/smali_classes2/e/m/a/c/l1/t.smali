.class public final Le/m/a/c/l1/t;
.super Le/m/a/c/l1/k;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/l1/s$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/l1/t$a;
    }
.end annotation


# instance fields
.field public final f:Landroid/net/Uri;

.field public final g:Le/m/a/c/p1/l$a;

.field public final h:Le/m/a/c/g1/j;

.field public final i:Le/m/a/c/f1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/c/f1/e<",
            "*>;"
        }
    .end annotation
.end field

.field public final j:Le/m/a/c/p1/b0;

.field public final k:Ljava/lang/String;

.field public final l:I

.field public final m:Ljava/lang/Object;

.field public n:J

.field public o:Z

.field public p:Z

.field public q:Le/m/a/c/p1/f0;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Le/m/a/c/p1/l$a;Le/m/a/c/g1/j;Le/m/a/c/f1/e;Le/m/a/c/p1/b0;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Le/m/a/c/p1/l$a;",
            "Le/m/a/c/g1/j;",
            "Le/m/a/c/f1/e<",
            "*>;",
            "Le/m/a/c/p1/b0;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/m/a/c/l1/k;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/l1/t;->f:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Le/m/a/c/l1/t;->g:Le/m/a/c/p1/l$a;

    .line 4
    iput-object p3, p0, Le/m/a/c/l1/t;->h:Le/m/a/c/g1/j;

    .line 5
    iput-object p4, p0, Le/m/a/c/l1/t;->i:Le/m/a/c/f1/e;

    .line 6
    iput-object p5, p0, Le/m/a/c/l1/t;->j:Le/m/a/c/p1/b0;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Le/m/a/c/l1/t;->k:Ljava/lang/String;

    .line 8
    iput p7, p0, Le/m/a/c/l1/t;->l:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p2, p0, Le/m/a/c/l1/t;->n:J

    .line 10
    iput-object p1, p0, Le/m/a/c/l1/t;->m:Ljava/lang/Object;

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

.method public e(Le/m/a/c/l1/p$a;Le/m/a/c/p1/d;J)Le/m/a/c/l1/o;
    .locals 19

    move-object/from16 v11, p0

    .line 1
    iget-object v0, v11, Le/m/a/c/l1/t;->g:Le/m/a/c/p1/l$a;

    invoke-interface {v0}, Le/m/a/c/p1/l$a;->a()Le/m/a/c/p1/l;

    move-result-object v2

    .line 2
    iget-object v0, v11, Le/m/a/c/l1/t;->q:Le/m/a/c/p1/f0;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v2, v0}, Le/m/a/c/p1/l;->c(Le/m/a/c/p1/f0;)V

    .line 4
    :cond_0
    new-instance v12, Le/m/a/c/l1/s;

    iget-object v1, v11, Le/m/a/c/l1/t;->f:Landroid/net/Uri;

    iget-object v0, v11, Le/m/a/c/l1/t;->h:Le/m/a/c/g1/j;

    .line 5
    invoke-interface {v0}, Le/m/a/c/g1/j;->a()[Le/m/a/c/g1/h;

    move-result-object v3

    iget-object v4, v11, Le/m/a/c/l1/t;->i:Le/m/a/c/f1/e;

    iget-object v5, v11, Le/m/a/c/l1/t;->j:Le/m/a/c/p1/b0;

    .line 6
    iget-object v0, v11, Le/m/a/c/l1/k;->c:Le/m/a/c/l1/q$a;

    .line 7
    new-instance v6, Le/m/a/c/l1/q$a;

    iget-object v14, v0, Le/m/a/c/l1/q$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    move-object v13, v6

    move-object/from16 v16, p1

    invoke-direct/range {v13 .. v18}, Le/m/a/c/l1/q$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILe/m/a/c/l1/p$a;J)V

    .line 8
    iget-object v9, v11, Le/m/a/c/l1/t;->k:Ljava/lang/String;

    iget v10, v11, Le/m/a/c/l1/t;->l:I

    move-object v0, v12

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-direct/range {v0 .. v10}, Le/m/a/c/l1/s;-><init>(Landroid/net/Uri;Le/m/a/c/p1/l;[Le/m/a/c/g1/h;Le/m/a/c/f1/e;Le/m/a/c/p1/b0;Le/m/a/c/l1/q$a;Le/m/a/c/l1/s$c;Le/m/a/c/p1/d;Ljava/lang/String;I)V

    return-object v12
.end method

.method public g(Le/m/a/c/l1/o;)V
    .locals 6

    .line 1
    check-cast p1, Le/m/a/c/l1/s;

    .line 2
    iget-boolean v0, p1, Le/m/a/c/l1/s;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p1, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {v4}, Le/m/a/c/l1/v;->f()V

    .line 5
    iget-object v5, v4, Le/m/a/c/l1/v;->f:Le/m/a/c/f1/c;

    if-eqz v5, :cond_0

    .line 6
    invoke-interface {v5}, Le/m/a/c/f1/c;->release()V

    .line 7
    iput-object v1, v4, Le/m/a/c/l1/v;->f:Le/m/a/c/f1/c;

    .line 8
    iput-object v1, v4, Le/m/a/c/l1/v;->e:Lcom/google/android/exoplayer2/Format;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p1, Le/m/a/c/l1/s;->j:Le/m/a/c/p1/c0;

    .line 10
    iget-object v2, v0, Le/m/a/c/p1/c0;->b:Le/m/a/c/p1/c0$d;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2, v3}, Le/m/a/c/p1/c0$d;->a(Z)V

    .line 12
    :cond_2
    iget-object v2, v0, Le/m/a/c/p1/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Le/m/a/c/p1/c0$g;

    invoke-direct {v4, p1}, Le/m/a/c/p1/c0$g;-><init>(Le/m/a/c/p1/c0$f;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, v0, Le/m/a/c/p1/c0;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 14
    iget-object v0, p1, Le/m/a/c/l1/s;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 15
    iput-object v1, p1, Le/m/a/c/l1/s;->p:Le/m/a/c/l1/o$a;

    .line 16
    iput-boolean v3, p1, Le/m/a/c/l1/s;->P:Z

    .line 17
    iget-object p1, p1, Le/m/a/c/l1/s;->e:Le/m/a/c/l1/q$a;

    .line 18
    iget-object v0, p1, Le/m/a/c/l1/q$a;->b:Le/m/a/c/l1/p$a;

    .line 19
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v1, p1, Le/m/a/c/l1/q$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/l1/q$a$a;

    .line 21
    iget-object v3, v2, Le/m/a/c/l1/q$a$a;->b:Le/m/a/c/l1/q;

    .line 22
    iget-object v2, v2, Le/m/a/c/l1/q$a$a;->a:Landroid/os/Handler;

    new-instance v4, Le/m/a/c/l1/e;

    invoke-direct {v4, p1, v3, v0}, Le/m/a/c/l1/e;-><init>(Le/m/a/c/l1/q$a;Le/m/a/c/l1/q;Le/m/a/c/l1/p$a;)V

    invoke-virtual {p1, v2, v4}, Le/m/a/c/l1/q$a;->b(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final h(JZZ)V
    .locals 8

    .line 1
    iput-wide p1, p0, Le/m/a/c/l1/t;->n:J

    .line 2
    iput-boolean p3, p0, Le/m/a/c/l1/t;->o:Z

    .line 3
    iput-boolean p4, p0, Le/m/a/c/l1/t;->p:Z

    .line 4
    new-instance p1, Le/m/a/c/l1/y;

    iget-wide v1, p0, Le/m/a/c/l1/t;->n:J

    iget-boolean v3, p0, Le/m/a/c/l1/t;->o:Z

    iget-boolean v5, p0, Le/m/a/c/l1/t;->p:Z

    iget-object v7, p0, Le/m/a/c/l1/t;->m:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Le/m/a/c/l1/y;-><init>(JZZZLjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iput-object p1, p0, Le/m/a/c/l1/k;->e:Le/m/a/c/y0;

    .line 6
    iget-object p2, p0, Le/m/a/c/l1/k;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/m/a/c/l1/p$b;

    .line 7
    invoke-interface {p3, p0, p1}, Le/m/a/c/l1/p$b;->a(Le/m/a/c/l1/p;Le/m/a/c/y0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(JZZ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1
    iget-wide p1, p0, Le/m/a/c/l1/t;->n:J

    .line 2
    :cond_0
    iget-wide v0, p0, Le/m/a/c/l1/t;->n:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Le/m/a/c/l1/t;->o:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Le/m/a/c/l1/t;->p:Z

    if-ne v0, p4, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Le/m/a/c/l1/t;->h(JZZ)V

    return-void
.end method
