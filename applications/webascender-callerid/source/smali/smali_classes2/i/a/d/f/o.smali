.class final Li/a/d/f/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/f/l;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Li/a/d/c/f;

.field private final c:Li/a/d/f/x;

.field private final d:Li/a/d/f/s;

.field private e:Li/a/b/e;

.field private f:Li/a/a/f/q;

.field private g:Li/a/d/f/d;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:J

.field private k:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Li/a/d/c/f;Li/a/d/f/x;Li/a/d/f/s;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Li/a/a/f/q;->INTERNAL:Li/a/a/f/q;

    iput-object v0, p0, Li/a/d/f/o;->f:Li/a/a/f/q;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Li/a/d/f/o;->i:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Li/a/d/f/o;->j:J

    .line 5
    iput-object p1, p0, Li/a/d/f/o;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Li/a/d/f/o;->b:Li/a/d/c/f;

    .line 7
    iput-object p3, p0, Li/a/d/f/o;->c:Li/a/d/f/x;

    .line 8
    iput-object p4, p0, Li/a/d/f/o;->d:Li/a/d/f/s;

    return-void
.end method

.method private static d(Li/a/a/f/k;Li/a/d/c/d;)Li/a/d/c/d;
    .locals 1

    .line 1
    instance-of v0, p0, Li/a/d/f/n;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Li/a/d/f/n;

    .line 3
    invoke-virtual {p0}, Li/a/d/f/n;->n()Li/a/d/c/d;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p1}, Li/a/d/d/e;->c(Li/a/d/c/d;)Li/a/d/d/e;

    move-result-object p0

    return-object p0
.end method

.method static e(Li/a/d/f/b0/i;)Z
    .locals 1

    .line 1
    sget-object v0, Li/a/d/f/b0/i;->RECORD_ONLY:Li/a/d/f/b0/i;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Li/a/d/f/b0/i;->RECORD_AND_SAMPLE:Li/a/d/f/b0/i;

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static f(Li/a/d/f/b0/i;)Z
    .locals 1

    .line 1
    sget-object v0, Li/a/d/f/b0/i;->RECORD_AND_SAMPLE:Li/a/d/f/b0/i;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic g(Li/a/a/c/f;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/o;->g:Li/a/d/f/d;

    invoke-virtual {v0, p1, p2}, Li/a/d/f/d;->f(Li/a/a/c/f;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Li/a/a/f/k;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Li/a/d/f/o;->k:Z

    if-eqz v1, :cond_0

    invoke-static {}, Li/a/b/d;->d()Li/a/b/e;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Li/a/d/f/o;->e:Li/a/b/e;

    if-nez v1, :cond_1

    invoke-static {}, Li/a/b/d;->c()Li/a/b/e;

    move-result-object v1

    .line 2
    :cond_1
    :goto_0
    invoke-static {v1}, Li/a/a/f/j;->e(Li/a/b/e;)Li/a/a/f/k;

    move-result-object v9

    .line 3
    invoke-interface {v9}, Li/a/a/f/k;->b()Li/a/a/f/n;

    move-result-object v10

    .line 4
    iget-object v2, v0, Li/a/d/f/o;->c:Li/a/d/f/x;

    invoke-virtual {v2}, Li/a/d/f/x;->c()Li/a/d/f/h;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Li/a/d/f/h;->generateSpanId()Ljava/lang/String;

    move-result-object v11

    .line 6
    invoke-interface {v10}, Li/a/a/f/n;->isValid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    invoke-interface {v2}, Li/a/d/f/h;->generateTraceId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {v10}, Li/a/a/f/n;->d()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v12, v2

    .line 9
    iget-object v2, v0, Li/a/d/f/o;->h:Ljava/util/List;

    if-nez v2, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_2
    move-object v13, v2

    const/4 v14, 0x0

    .line 10
    iput-object v14, v0, Li/a/d/f/o;->h:Ljava/util/List;

    .line 11
    iget-object v2, v0, Li/a/d/f/o;->g:Li/a/d/f/d;

    if-nez v2, :cond_4

    invoke-static {}, Li/a/a/c/i;->b()Li/a/a/c/j;

    move-result-object v2

    :cond_4
    move-object v7, v2

    .line 12
    iget-object v2, v0, Li/a/d/f/o;->c:Li/a/d/f/x;

    .line 13
    invoke-virtual {v2}, Li/a/d/f/x;->e()Li/a/d/f/b0/h;

    move-result-object v2

    iget-object v5, v0, Li/a/d/f/o;->a:Ljava/lang/String;

    iget-object v6, v0, Li/a/d/f/o;->f:Li/a/a/f/q;

    move-object v3, v1

    move-object v4, v12

    move-object v8, v13

    .line 14
    invoke-interface/range {v2 .. v8}, Li/a/d/f/b0/h;->shouldSample(Li/a/b/e;Ljava/lang/String;Ljava/lang/String;Li/a/a/f/q;Li/a/a/c/j;Ljava/util/List;)Li/a/d/f/b0/k;

    move-result-object v2

    .line 15
    invoke-interface {v2}, Li/a/d/f/b0/k;->c()Li/a/d/f/b0/i;

    move-result-object v3

    .line 16
    invoke-interface {v10}, Li/a/a/f/n;->g()Li/a/a/f/w;

    move-result-object v4

    invoke-interface {v2, v4}, Li/a/d/f/b0/k;->b(Li/a/a/f/w;)Li/a/a/f/w;

    .line 17
    invoke-static {v3}, Li/a/d/f/o;->f(Li/a/d/f/b0/i;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Li/a/a/f/s;->b()Li/a/a/f/t;

    move-result-object v5

    goto :goto_3

    :cond_5
    invoke-static {}, Li/a/a/f/s;->a()Li/a/a/f/t;

    move-result-object v5

    .line 18
    :goto_3
    invoke-static {v12, v11, v5, v4}, Li/a/a/f/m;->b(Ljava/lang/String;Ljava/lang/String;Li/a/a/f/t;Li/a/a/f/w;)Li/a/a/f/n;

    move-result-object v4

    .line 19
    invoke-static {v3}, Li/a/d/f/o;->e(Li/a/d/f/b0/i;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 20
    invoke-static {v4}, Li/a/a/f/j;->g(Li/a/a/f/n;)Li/a/a/f/k;

    move-result-object v1

    return-object v1

    .line 21
    :cond_6
    invoke-interface {v2}, Li/a/d/f/b0/k;->a()Li/a/a/c/j;

    move-result-object v2

    .line 22
    invoke-interface {v2}, Li/a/a/c/j;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 23
    iget-object v3, v0, Li/a/d/f/o;->g:Li/a/d/f/d;

    if-nez v3, :cond_7

    .line 24
    new-instance v3, Li/a/d/f/d;

    iget-object v5, v0, Li/a/d/f/o;->d:Li/a/d/f/s;

    invoke-virtual {v5}, Li/a/d/f/s;->c()I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v3, v5, v6}, Li/a/d/f/d;-><init>(J)V

    iput-object v3, v0, Li/a/d/f/o;->g:Li/a/d/f/d;

    .line 25
    :cond_7
    new-instance v3, Li/a/d/f/a;

    invoke-direct {v3, v0}, Li/a/d/f/a;-><init>(Li/a/d/f/o;)V

    invoke-interface {v2, v3}, Li/a/a/c/j;->forEach(Ljava/util/function/BiConsumer;)V

    .line 26
    :cond_8
    iget-object v12, v0, Li/a/d/f/o;->g:Li/a/d/f/d;

    .line 27
    iput-object v14, v0, Li/a/d/f/o;->g:Li/a/d/f/d;

    .line 28
    iget-object v3, v0, Li/a/d/f/o;->a:Ljava/lang/String;

    iget-object v5, v0, Li/a/d/f/o;->b:Li/a/d/c/f;

    iget-object v6, v0, Li/a/d/f/o;->f:Li/a/a/f/q;

    iget-object v8, v0, Li/a/d/f/o;->d:Li/a/d/f/s;

    iget-object v2, v0, Li/a/d/f/o;->c:Li/a/d/f/x;

    .line 29
    invoke-virtual {v2}, Li/a/d/f/x;->a()Li/a/d/f/v;

    move-result-object v11

    iget-object v2, v0, Li/a/d/f/o;->c:Li/a/d/f/x;

    .line 30
    invoke-virtual {v2}, Li/a/d/f/x;->b()Li/a/d/c/d;

    move-result-object v2

    invoke-static {v9, v2}, Li/a/d/f/o;->d(Li/a/a/f/k;Li/a/d/c/d;)Li/a/d/c/d;

    move-result-object v14

    iget-object v2, v0, Li/a/d/f/o;->c:Li/a/d/f/x;

    .line 31
    invoke-virtual {v2}, Li/a/d/f/x;->d()Li/a/d/e/d;

    move-result-object v15

    iget v9, v0, Li/a/d/f/o;->i:I

    move-object/from16 v17, v12

    move-object/from16 v16, v13

    iget-wide v12, v0, Li/a/d/f/o;->j:J

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v10

    move-object v7, v1

    move v1, v9

    move-object v9, v11

    move-object v10, v14

    move-object v11, v15

    move-wide/from16 v18, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v16

    move v14, v1

    move-wide/from16 v15, v18

    .line 32
    invoke-static/range {v2 .. v16}, Li/a/d/f/n;->z(Li/a/a/f/n;Ljava/lang/String;Li/a/d/c/f;Li/a/a/f/q;Li/a/a/f/n;Li/a/b/e;Li/a/d/f/s;Li/a/d/f/v;Li/a/d/c/d;Li/a/d/e/d;Li/a/d/f/d;Ljava/util/List;IJ)Li/a/d/f/n;

    move-result-object v1

    return-object v1
.end method

.method public b()Li/a/a/f/l;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/a/d/f/o;->k:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Li/a/d/f/o;->e:Li/a/b/e;

    return-object p0
.end method

.method public c(Li/a/b/e;)Li/a/a/f/l;
    .locals 1

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Li/a/d/f/o;->k:Z

    .line 3
    iput-object p1, p0, Li/a/d/f/o;->e:Li/a/b/e;

    return-object p0
.end method

.method public synthetic h(Li/a/a/c/f;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li/a/d/f/o;->g(Li/a/a/c/f;Ljava/lang/Object;)V

    return-void
.end method
