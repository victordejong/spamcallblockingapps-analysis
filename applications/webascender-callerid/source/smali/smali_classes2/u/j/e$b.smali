.class final Lu/j/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/j/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field e:J

.field f:J

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lu/g;)V
    .locals 16

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 1
    iput-wide v1, v0, Lu/j/e$b;->f:J

    iput-wide v1, v0, Lu/j/e$b;->e:J

    iput-wide v1, v0, Lu/j/e$b;->d:J

    iput-wide v1, v0, Lu/j/e$b;->c:J

    iput-wide v1, v0, Lu/j/e$b;->b:J

    iput-wide v1, v0, Lu/j/e$b;->a:J

    const/4 v3, 0x0

    .line 2
    iput-object v3, v0, Lu/j/e$b;->i:Ljava/lang/String;

    iput-object v3, v0, Lu/j/e$b;->h:Ljava/lang/String;

    iput-object v3, v0, Lu/j/e$b;->g:Ljava/lang/String;

    .line 3
    invoke-virtual/range {p1 .. p1}, Lu/g;->p()J

    move-result-wide v4

    iput-wide v4, v0, Lu/j/e$b;->a:J

    cmp-long v6, v4, v1

    if-eqz v6, :cond_0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lu/g;->c()J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-eqz v6, :cond_0

    iget-wide v4, v0, Lu/j/e$b;->a:J

    invoke-virtual/range {p1 .. p1}, Lu/g;->c()J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_0

    :cond_0
    move-wide v4, v1

    :goto_0
    iput-wide v4, v0, Lu/j/e$b;->b:J

    .line 5
    invoke-virtual/range {p1 .. p1}, Lu/g;->e()Lu/g$b;

    move-result-object v4

    const/4 v5, 0x0

    .line 6
    invoke-virtual/range {p1 .. p1}, Lu/g;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    :goto_1
    const-string v7, "wr"

    const-string v8, "ws"

    const-string v9, "ms"

    const-string v10, "ss"

    const-string v11, "cr"

    const-string v12, "sr"

    const-string v13, "cs"

    const/4 v14, 0x2

    const-string v15, "mr"

    if-ge v5, v6, :cond_b

    .line 7
    invoke-virtual/range {p1 .. p1}, Lu/g;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu/a;

    .line 8
    invoke-virtual {v3}, Lu/a;->j()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v14, :cond_1

    goto/16 :goto_3

    .line 10
    :cond_1
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    sget-object v1, Lu/g$b;->CLIENT:Lu/g$b;

    .line 12
    invoke-virtual {v3}, Lu/a;->h()J

    move-result-wide v7

    iget-wide v9, v0, Lu/j/e$b;->a:J

    cmp-long v2, v7, v9

    if-gez v2, :cond_2

    invoke-virtual {v3}, Lu/a;->h()J

    move-result-wide v2

    iput-wide v2, v0, Lu/j/e$b;->a:J

    :cond_2
    :goto_2
    move-object v4, v1

    goto/16 :goto_3

    .line 13
    :cond_3
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    sget-object v1, Lu/g$b;->SERVER:Lu/g$b;

    .line 15
    invoke-virtual {v3}, Lu/a;->h()J

    move-result-wide v7

    iget-wide v9, v0, Lu/j/e$b;->a:J

    cmp-long v2, v7, v9

    if-gez v2, :cond_2

    invoke-virtual {v3}, Lu/a;->h()J

    move-result-wide v2

    iput-wide v2, v0, Lu/j/e$b;->a:J

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 17
    sget-object v1, Lu/g$b;->SERVER:Lu/g$b;

    .line 18
    invoke-virtual {v3}, Lu/a;->h()J

    move-result-wide v7

    iget-wide v9, v0, Lu/j/e$b;->b:J

    cmp-long v2, v7, v9

    if-lez v2, :cond_2

    invoke-virtual {v3}, Lu/a;->h()J

    move-result-wide v2

    iput-wide v2, v0, Lu/j/e$b;->b:J

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 20
    sget-object v1, Lu/g$b;->CLIENT:Lu/g$b;

    .line 21
    invoke-virtual {v3}, Lu/a;->h()J

    move-result-wide v7

    iget-wide v9, v0, Lu/j/e$b;->b:J

    cmp-long v2, v7, v9

    if-lez v2, :cond_2

    invoke-virtual {v3}, Lu/a;->h()J

    move-result-wide v2

    iput-wide v2, v0, Lu/j/e$b;->b:J

    goto :goto_2

    .line 22
    :cond_6
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 23
    sget-object v1, Lu/g$b;->PRODUCER:Lu/g$b;

    .line 24
    invoke-virtual {v3}, Lu/a;->h()J

    move-result-wide v2

    iput-wide v2, v0, Lu/j/e$b;->c:J

    goto :goto_2

    .line 25
    :cond_7
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 26
    sget-object v1, Lu/g$b;->CONSUMER:Lu/g$b;

    .line 27
    invoke-virtual {v3}, Lu/a;->h()J

    move-result-wide v2

    iput-wide v2, v0, Lu/j/e$b;->f:J

    goto :goto_2

    .line 28
    :cond_8
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 29
    invoke-virtual {v3}, Lu/a;->h()J

    move-result-wide v1

    iput-wide v1, v0, Lu/j/e$b;->d:J

    goto :goto_3

    .line 30
    :cond_9
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 31
    invoke-virtual {v3}, Lu/a;->h()J

    move-result-wide v1

    iput-wide v1, v0, Lu/j/e$b;->e:J

    :cond_a
    :goto_3
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 32
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lu/g;->l()Lu/f;

    move-result-object v1

    const-string v2, "sa"

    if-eqz v1, :cond_c

    iput-object v2, v0, Lu/j/e$b;->i:Ljava/lang/String;

    :cond_c
    if-nez v4, :cond_d

    return-void

    .line 33
    :cond_d
    sget-object v1, Lu/j/e$a;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1a

    if-eq v1, v14, :cond_19

    const/4 v2, 0x3

    const-string v3, "ma"

    if-eq v1, v2, :cond_15

    const/4 v2, 0x4

    if-ne v1, v2, :cond_14

    .line 34
    iput-object v3, v0, Lu/j/e$b;->i:Ljava/lang/String;

    .line 35
    iget-wide v1, v0, Lu/j/e$b;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_e

    iget-wide v5, v0, Lu/j/e$b;->e:J

    cmp-long v8, v5, v3

    if-eqz v8, :cond_f

    cmp-long v3, v5, v1

    if-gez v3, :cond_f

    .line 36
    :cond_e
    iget-wide v1, v0, Lu/j/e$b;->e:J

    iput-wide v1, v0, Lu/j/e$b;->a:J

    .line 37
    :cond_f
    iget-wide v1, v0, Lu/j/e$b;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_10

    iget-wide v5, v0, Lu/j/e$b;->f:J

    cmp-long v8, v5, v3

    if-eqz v8, :cond_11

    cmp-long v3, v5, v1

    if-lez v3, :cond_11

    .line 38
    :cond_10
    iget-wide v1, v0, Lu/j/e$b;->f:J

    iput-wide v1, v0, Lu/j/e$b;->b:J

    .line 39
    :cond_11
    iget-wide v1, v0, Lu/j/e$b;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_13

    iget-wide v1, v0, Lu/j/e$b;->e:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_12

    goto :goto_4

    .line 40
    :cond_12
    iput-object v15, v0, Lu/j/e$b;->g:Ljava/lang/String;

    goto :goto_5

    .line 41
    :cond_13
    :goto_4
    iput-object v7, v0, Lu/j/e$b;->g:Ljava/lang/String;

    .line 42
    iput-object v15, v0, Lu/j/e$b;->h:Ljava/lang/String;

    goto :goto_5

    .line 43
    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "update kind mapping"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 44
    :cond_15
    iput-object v3, v0, Lu/j/e$b;->i:Ljava/lang/String;

    .line 45
    iput-object v9, v0, Lu/j/e$b;->g:Ljava/lang/String;

    .line 46
    iput-object v8, v0, Lu/j/e$b;->h:Ljava/lang/String;

    .line 47
    iget-wide v1, v0, Lu/j/e$b;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_16

    iget-wide v5, v0, Lu/j/e$b;->c:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_17

    cmp-long v3, v5, v1

    if-gez v3, :cond_17

    .line 48
    :cond_16
    iget-wide v1, v0, Lu/j/e$b;->c:J

    iput-wide v1, v0, Lu/j/e$b;->a:J

    .line 49
    :cond_17
    iget-wide v1, v0, Lu/j/e$b;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_18

    iget-wide v5, v0, Lu/j/e$b;->d:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_1b

    cmp-long v3, v5, v1

    if-lez v3, :cond_1b

    .line 50
    :cond_18
    iget-wide v1, v0, Lu/j/e$b;->d:J

    iput-wide v1, v0, Lu/j/e$b;->b:J

    goto :goto_5

    :cond_19
    const-string v1, "ca"

    .line 51
    iput-object v1, v0, Lu/j/e$b;->i:Ljava/lang/String;

    .line 52
    iput-object v12, v0, Lu/j/e$b;->g:Ljava/lang/String;

    .line 53
    iput-object v10, v0, Lu/j/e$b;->h:Ljava/lang/String;

    goto :goto_5

    .line 54
    :cond_1a
    iput-object v2, v0, Lu/j/e$b;->i:Ljava/lang/String;

    .line 55
    iput-object v13, v0, Lu/j/e$b;->g:Ljava/lang/String;

    .line 56
    iput-object v11, v0, Lu/j/e$b;->h:Ljava/lang/String;

    .line 57
    :cond_1b
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lu/g;->l()Lu/f;

    move-result-object v1

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    iput-object v1, v0, Lu/j/e$b;->i:Ljava/lang/String;

    :cond_1c
    return-void
.end method
