.class final Li/a/d/f/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/d/f/l;


# static fields
.field private static final t:Ljava/util/logging/Logger;


# instance fields
.field private final a:Li/a/d/f/s;

.field private final b:Li/a/a/f/n;

.field private final c:Li/a/a/f/n;

.field private final d:Li/a/d/f/v;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I

.field private final g:Li/a/a/f/q;

.field private final h:Li/a/d/c/d;

.field private final i:Li/a/d/e/d;

.field private final j:Li/a/d/c/f;

.field private final k:J

.field private final l:Ljava/lang/Object;

.field private m:Ljava/lang/String;

.field private n:Li/a/d/f/d;

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/a/d/f/y/d;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:Li/a/d/f/y/j;

.field private r:J

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Li/a/d/f/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Li/a/d/f/n;->t:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Li/a/a/f/n;Ljava/lang/String;Li/a/d/c/f;Li/a/a/f/q;Li/a/a/f/n;Li/a/d/f/s;Li/a/d/f/v;Li/a/d/c/d;Li/a/d/e/d;Li/a/d/f/d;Ljava/util/List;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/a/f/n;",
            "Ljava/lang/String;",
            "Li/a/d/c/f;",
            "Li/a/a/f/q;",
            "Li/a/a/f/n;",
            "Li/a/d/f/s;",
            "Li/a/d/f/v;",
            "Li/a/d/c/d;",
            "Li/a/d/e/d;",
            "Li/a/d/f/d;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;IJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Li/a/d/f/n;->l:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Li/a/d/f/n;->p:I

    .line 4
    invoke-static {}, Li/a/d/f/y/i;->d()Li/a/d/f/y/j;

    move-result-object v2

    iput-object v2, v0, Li/a/d/f/n;->q:Li/a/d/f/y/j;

    move-object v2, p1

    .line 5
    iput-object v2, v0, Li/a/d/f/n;->b:Li/a/a/f/n;

    move-object v2, p3

    .line 6
    iput-object v2, v0, Li/a/d/f/n;->j:Li/a/d/c/f;

    move-object v2, p5

    .line 7
    iput-object v2, v0, Li/a/d/f/n;->c:Li/a/a/f/n;

    move-object v2, p11

    .line 8
    iput-object v2, v0, Li/a/d/f/n;->e:Ljava/util/List;

    move v2, p12

    .line 9
    iput v2, v0, Li/a/d/f/n;->f:I

    move-object v2, p2

    .line 10
    iput-object v2, v0, Li/a/d/f/n;->m:Ljava/lang/String;

    move-object v2, p4

    .line 11
    iput-object v2, v0, Li/a/d/f/n;->g:Li/a/a/f/q;

    move-object v2, p7

    .line 12
    iput-object v2, v0, Li/a/d/f/n;->d:Li/a/d/f/v;

    move-object v2, p9

    .line 13
    iput-object v2, v0, Li/a/d/f/n;->i:Li/a/d/e/d;

    .line 14
    iput-boolean v1, v0, Li/a/d/f/n;->s:Z

    move-object v1, p8

    .line 15
    iput-object v1, v0, Li/a/d/f/n;->h:Li/a/d/c/d;

    move-wide/from16 v1, p13

    .line 16
    iput-wide v1, v0, Li/a/d/f/n;->k:J

    move-object v1, p10

    .line 17
    iput-object v1, v0, Li/a/d/f/n;->n:Li/a/d/f/d;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Li/a/d/f/n;->o:Ljava/util/List;

    move-object v1, p6

    .line 19
    iput-object v1, v0, Li/a/d/f/n;->a:Li/a/d/f/s;

    return-void
.end method

.method private l(Li/a/d/f/y/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li/a/d/f/n;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Li/a/d/f/n;->s:Z

    if-eqz v1, :cond_0

    .line 3
    sget-object p1, Li/a/d/f/n;->t:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Calling addEvent() on an ended Span."

    invoke-virtual {p1, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Li/a/d/f/n;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Li/a/d/f/n;->a:Li/a/d/f/s;

    invoke-virtual {v2}, Li/a/d/f/s;->f()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6
    iget-object v1, p0, Li/a/d/f/n;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget p1, p0, Li/a/d/f/n;->p:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Li/a/d/f/n;->p:I

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private m(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/d/f/n;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Li/a/d/f/n;->s:Z

    if-eqz v1, :cond_0

    .line 3
    sget-object p1, Li/a/d/f/n;->t:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "Calling end() on an ended Span."

    invoke-virtual {p1, p2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iput-wide p1, p0, Li/a/d/f/n;->r:J

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Li/a/d/f/n;->s:Z

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Li/a/d/f/n;->d:Li/a/d/f/v;

    invoke-interface {p1, p0}, Li/a/d/f/v;->u1(Li/a/d/f/m;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private o()Li/a/a/c/j;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/n;->n:Li/a/d/f/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Li/a/d/f/n;->s:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Li/a/d/f/n;->n:Li/a/d/f/d;

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Li/a/d/f/n;->n:Li/a/d/f/d;

    invoke-virtual {v0}, Li/a/d/f/d;->e()Li/a/a/c/j;

    move-result-object v0

    return-object v0

    .line 5
    :cond_2
    :goto_0
    invoke-static {}, Li/a/a/c/i;->b()Li/a/a/c/j;

    move-result-object v0

    return-object v0
.end method

.method private p()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li/a/d/f/y/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/a/d/f/n;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Li/a/d/f/n;->s:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Li/a/d/f/n;->o:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Li/a/d/f/n;->o:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private u()Li/a/d/f/y/j;
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/d/f/n;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Li/a/d/f/n;->q:Li/a/d/f/y/j;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static z(Li/a/a/f/n;Ljava/lang/String;Li/a/d/c/f;Li/a/a/f/q;Li/a/a/f/n;Li/a/b/e;Li/a/d/f/s;Li/a/d/f/v;Li/a/d/c/d;Li/a/d/e/d;Li/a/d/f/d;Ljava/util/List;IJ)Li/a/d/f/n;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/a/f/n;",
            "Ljava/lang/String;",
            "Li/a/d/c/f;",
            "Li/a/a/f/q;",
            "Li/a/a/f/n;",
            "Li/a/b/e;",
            "Li/a/d/f/s;",
            "Li/a/d/f/v;",
            "Li/a/d/c/d;",
            "Li/a/d/e/d;",
            "Li/a/d/f/d;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;IJ)",
            "Li/a/d/f/n;"
        }
    .end annotation

    .line 1
    new-instance v15, Li/a/d/f/n;

    const-wide/16 v0, 0x0

    cmp-long v2, p13, v0

    if-nez v2, :cond_0

    .line 2
    invoke-interface/range {p8 .. p8}, Li/a/d/c/d;->b()J

    move-result-wide v0

    move-wide v13, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p13

    :goto_0
    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v14}, Li/a/d/f/n;-><init>(Li/a/a/f/n;Ljava/lang/String;Li/a/d/c/f;Li/a/a/f/q;Li/a/a/f/n;Li/a/d/f/s;Li/a/d/f/v;Li/a/d/c/d;Li/a/d/e/d;Li/a/d/f/d;Ljava/util/List;IJ)V

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    .line 3
    invoke-interface {v1, v0, v15}, Li/a/d/f/v;->j0(Li/a/b/e;Li/a/d/f/l;)V

    return-object v15
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/d/f/n;->h:Li/a/d/c/d;

    invoke-interface {v0}, Li/a/d/c/d;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Li/a/d/f/n;->m(J)V

    return-void
.end method

.method public b()Li/a/a/f/n;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/n;->b:Li/a/a/f/n;

    return-object v0
.end method

.method public synthetic c()Li/a/b/p;
    .locals 1

    invoke-static {p0}, Li/a/b/m;->a(Li/a/b/n;)Li/a/b/p;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/String;)Li/a/a/f/k;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li/a/d/f/n;->k(Ljava/lang/String;)Li/a/d/f/l;

    return-object p0
.end method

.method public e()Li/a/d/f/y/h;
    .locals 12

    .line 1
    iget-object v0, p0, Li/a/d/f/n;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v2, p0, Li/a/d/f/n;->e:Ljava/util/List;

    .line 3
    invoke-direct {p0}, Li/a/d/f/n;->p()Ljava/util/List;

    move-result-object v3

    .line 4
    invoke-direct {p0}, Li/a/d/f/n;->o()Li/a/a/c/j;

    move-result-object v4

    .line 5
    iget-object v1, p0, Li/a/d/f/n;->n:Li/a/d/f/d;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Li/a/d/f/d;->b()I

    move-result v1

    move v5, v1

    :goto_0
    iget v6, p0, Li/a/d/f/n;->p:I

    .line 6
    invoke-direct {p0}, Li/a/d/f/n;->u()Li/a/d/f/y/j;

    move-result-object v7

    iget-object v8, p0, Li/a/d/f/n;->m:Ljava/lang/String;

    iget-wide v9, p0, Li/a/d/f/n;->r:J

    iget-boolean v11, p0, Li/a/d/f/n;->s:Z

    move-object v1, p0

    .line 7
    invoke-static/range {v1 .. v11}, Li/a/d/f/w;->o(Li/a/d/f/n;Ljava/util/List;Ljava/util/List;Li/a/a/c/j;IILi/a/d/f/y/j;Ljava/lang/String;JZ)Li/a/d/f/w;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic f(Li/a/b/e;)Li/a/b/e;
    .locals 0

    invoke-static {p0, p1}, Li/a/a/f/j;->c(Li/a/a/f/k;Li/a/b/e;)Li/a/b/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Li/a/a/c/f;Ljava/lang/Object;)Li/a/a/f/k;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Li/a/d/f/n;->x(Li/a/a/c/f;Ljava/lang/Object;)Li/a/d/f/l;

    return-object p0
.end method

.method public bridge synthetic h(Li/a/a/f/r;Ljava/lang/String;)Li/a/a/f/k;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Li/a/d/f/n;->y(Li/a/a/f/r;Ljava/lang/String;)Li/a/d/f/l;

    return-object p0
.end method

.method public synthetic i(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/k;
    .locals 0

    invoke-static {p0, p1, p2}, Li/a/a/f/j;->a(Li/a/a/f/k;Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/k;

    move-result-object p1

    return-object p1
.end method

.method public synthetic j(Ljava/lang/String;Z)Li/a/a/f/k;
    .locals 0

    invoke-static {p0, p1, p2}, Li/a/a/f/j;->b(Li/a/a/f/k;Ljava/lang/String;Z)Li/a/a/f/k;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;)Li/a/d/f/l;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Li/a/d/f/n;->h:Li/a/d/c/d;

    invoke-interface {v0}, Li/a/d/c/d;->b()J

    move-result-wide v0

    invoke-static {}, Li/a/a/c/i;->b()Li/a/a/c/j;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Li/a/d/f/y/c;->a(JLjava/lang/String;Li/a/a/c/j;I)Li/a/d/f/y/d;

    move-result-object p1

    invoke-direct {p0, p1}, Li/a/d/f/n;->l(Li/a/d/f/y/d;)V

    return-object p0
.end method

.method n()Li/a/d/c/d;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/n;->h:Li/a/d/c/d;

    return-object v0
.end method

.method public q()Li/a/d/c/f;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/n;->j:Li/a/d/c/f;

    return-object v0
.end method

.method public r()Li/a/a/f/q;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/n;->g:Li/a/a/f/q;

    return-object v0
.end method

.method s()Li/a/a/f/n;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/n;->c:Li/a/a/f/n;

    return-object v0
.end method

.method t()Li/a/d/e/d;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/n;->i:Li/a/d/e/d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Li/a/d/f/n;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Li/a/d/f/n;->m:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Li/a/d/f/n;->n:Li/a/d/f/d;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Li/a/d/f/n;->q:Li/a/d/f/y/j;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5
    iget v4, p0, Li/a/d/f/n;->p:I

    int-to-long v4, v4

    .line 6
    iget-wide v6, p0, Li/a/d/f/n;->r:J

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RecordEventsReadableSpan{traceId="

    .line 9
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v8, p0, Li/a/d/f/n;->b:Li/a/a/f/n;

    invoke-interface {v8}, Li/a/a/f/n;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", spanId="

    .line 11
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v8, p0, Li/a/d/f/n;->b:Li/a/a/f/n;

    invoke-interface {v8}, Li/a/a/f/n;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", parentSpanContext="

    .line 13
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v8, p0, Li/a/d/f/n;->c:Li/a/a/f/n;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", name="

    .line 15
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", kind="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Li/a/d/f/n;->g:Li/a/a/f/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attributes="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalRecordedEvents="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalRecordedLinks="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Li/a/d/f/n;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startEpochNanos="

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-wide v1, p0, Li/a/d/f/n;->k:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endEpochNanos="

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method v()J
    .locals 2

    .line 1
    iget-wide v0, p0, Li/a/d/f/n;->k:J

    return-wide v0
.end method

.method w()I
    .locals 1

    .line 1
    iget v0, p0, Li/a/d/f/n;->f:I

    return v0
.end method

.method public x(Li/a/a/c/f;Ljava/lang/Object;)Li/a/d/f/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/a/a/c/f<",
            "TT;>;TT;)",
            "Li/a/d/f/l;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Li/a/a/c/f;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Li/a/a/c/f;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Li/a/d/f/n;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Li/a/d/f/n;->s:Z

    if-eqz v1, :cond_1

    .line 4
    sget-object p1, Li/a/d/f/n;->t:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "Calling setAttribute() on an ended Span."

    invoke-virtual {p1, p2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 5
    monitor-exit v0

    return-object p0

    .line 6
    :cond_1
    iget-object v1, p0, Li/a/d/f/n;->n:Li/a/d/f/d;

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Li/a/d/f/d;

    iget-object v2, p0, Li/a/d/f/n;->a:Li/a/d/f/s;

    invoke-virtual {v2}, Li/a/d/f/s;->c()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Li/a/d/f/d;-><init>(J)V

    iput-object v1, p0, Li/a/d/f/n;->n:Li/a/d/f/d;

    .line 8
    :cond_2
    iget-object v1, p0, Li/a/d/f/n;->n:Li/a/d/f/d;

    invoke-virtual {v1, p1, p2}, Li/a/d/f/d;->f(Li/a/a/c/f;Ljava/lang/Object;)V

    .line 9
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-object p0
.end method

.method public y(Li/a/a/f/r;Ljava/lang/String;)Li/a/d/f/l;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Li/a/d/f/n;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Li/a/d/f/n;->s:Z

    if-eqz v1, :cond_1

    .line 3
    sget-object p1, Li/a/d/f/n;->t:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "Calling setStatus() on an ended Span."

    invoke-virtual {p1, p2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-object p0

    .line 5
    :cond_1
    invoke-static {p1, p2}, Li/a/d/f/y/i;->a(Li/a/a/f/r;Ljava/lang/String;)Li/a/d/f/y/j;

    move-result-object p1

    iput-object p1, p0, Li/a/d/f/n;->q:Li/a/d/f/y/j;

    .line 6
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
