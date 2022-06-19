.class public final Lg/g/a/a/l/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/a/l/a;->a:Landroid/content/Context;

    return-void
.end method

.method private final a(Ljava/lang/String;Lg/g/a/e/e/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lg/g/a/a/i/g;
    .locals 12

    .line 1
    new-instance v11, Lg/g/a/a/i/g;

    .line 2
    invoke-virtual {p2}, Lg/g/a/e/e/o;->d()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Lg/g/a/e/e/o;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Lg/g/a/e/b;->b(J)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p2}, Lg/g/a/e/e/o;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object v0, v11

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 5
    invoke-direct/range {v0 .. v10}, Lg/g/a/a/i/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    return-object v11
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/a/e/e/o;)Lg/g/a/a/i/g;
    .locals 12

    .line 1
    new-instance v11, Lg/g/a/a/i/g;

    .line 2
    invoke-virtual/range {p4 .. p4}, Lg/g/a/e/e/o;->d()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual/range {p4 .. p4}, Lg/g/a/e/e/o;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Lg/g/a/e/b;->b(J)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual/range {p4 .. p4}, Lg/g/a/e/e/o;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    .line 5
    invoke-direct/range {v0 .. v10}, Lg/g/a/a/i/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    return-object v11
.end method

.method private final d(Lg/g/a/e/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/e/e/k;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Lg/g/a/a/i/g;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v3, p2

    move-object/from16 v2, p3

    move-object/from16 v7, p4

    .line 1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lg/g/a/e/e/k;->a()Lg/g/a/e/e/o;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v3, v2, v7, v1}, Lg/g/a/a/l/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/a/e/e/o;)Lg/g/a/a/i/g;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lg/g/a/e/e/k;->c()Lg/g/a/e/e/o;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0, v3, v2, v7, v1}, Lg/g/a/a/l/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/a/e/e/o;)Lg/g/a/a/i/g;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lg/g/a/e/e/k;->d()Lg/g/a/e/e/o;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-direct {p0, v3, v2, v7, v1}, Lg/g/a/a/l/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/a/e/e/o;)Lg/g/a/a/i/g;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lg/g/a/e/e/k;->b()Lg/g/a/e/e/o;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-direct {p0, v3, v2, v7, v1}, Lg/g/a/a/l/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/a/e/e/o;)Lg/g/a/a/i/g;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lg/g/a/e/e/k;->b()Lg/g/a/e/e/o;

    move-result-object v1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lg/g/a/e/e/o;->b()J

    move-result-wide v8

    goto :goto_0

    :cond_4
    move-wide v8, v4

    :goto_0
    sub-long v8, v8, p5

    .line 11
    new-instance v13, Lg/g/a/a/i/g;

    .line 12
    invoke-virtual/range {p1 .. p1}, Lg/g/a/e/e/k;->b()Lg/g/a/e/e/o;

    move-result-object v1

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lg/g/a/e/e/o;->b()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :cond_5
    move-object v1, v6

    :goto_1
    if-nez v1, :cond_6

    move-object v10, v6

    goto :goto_2

    .line 13
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lg/g/a/e/e/k;->b()Lg/g/a/e/e/o;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lg/g/a/e/e/o;->b()J

    move-result-wide v10

    invoke-static {v10, v11}, Lg/g/a/e/b;->b(J)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    :goto_2
    cmp-long v1, v8, v4

    if-gtz v1, :cond_7

    goto :goto_3

    .line 14
    :cond_7
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v6, v1

    :goto_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0xc0

    const/4 v14, 0x0

    const-string v5, "OnNetwork"

    move-object v1, v13

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v7, p4

    move v10, v11

    move-object v11, v14

    .line 15
    invoke-direct/range {v1 .. v11}, Lg/g/a/a/i/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    .line 16
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v12

    .line 17
    :cond_8
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v6
.end method


# virtual methods
.method public final c(Lg/g/a/e/e/c;)[Lg/g/a/a/i/g;
    .locals 13

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v2, p0, Lg/g/a/a/l/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lg/g/b/e/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 3
    invoke-virtual {p1}, Lg/g/a/e/e/c;->l()Lg/g/a/e/e/k;

    move-result-object v3

    const-wide/16 v10, 0x0

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {p1}, Lg/g/a/e/e/c;->d()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Lg/g/a/e/e/c;->n()Lg/g/a/e/e/o;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lg/g/a/e/e/o;->c()J

    move-result-wide v5

    move-wide v7, v5

    goto :goto_0

    :cond_0
    move-wide v7, v10

    :goto_0
    const-string v5, "NameFound"

    move-object v2, p0

    move-object v6, v9

    .line 6
    invoke-direct/range {v2 .. v8}, Lg/g/a/a/l/a;->d(Lg/g/a/e/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_1
    invoke-virtual {p1}, Lg/g/a/e/e/c;->k()Lg/g/a/e/e/k;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {p1}, Lg/g/a/e/e/c;->d()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {p1}, Lg/g/a/e/e/c;->e()Lg/g/a/e/e/o;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lg/g/a/e/e/o;->b()J

    move-result-wide v5

    move-wide v7, v5

    goto :goto_1

    :cond_2
    move-wide v7, v10

    :goto_1
    const-string v5, "ImageFound"

    move-object v2, p0

    move-object v6, v9

    .line 11
    invoke-direct/range {v2 .. v8}, Lg/g/a/a/l/a;->d(Lg/g/a/e/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_3
    invoke-virtual {p1}, Lg/g/a/e/e/c;->i()Lg/g/a/e/e/o;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 14
    invoke-virtual {p1}, Lg/g/a/e/e/c;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {p1}, Lg/g/a/e/e/c;->c()Lg/g/a/e/e/j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    const-string v5, "OnDevice"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lg/g/a/a/l/a;->a(Ljava/lang/String;Lg/g/a/e/e/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lg/g/a/a/i/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_4
    invoke-virtual {p1}, Lg/g/a/e/e/c;->j()Lg/g/a/e/e/o;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    if-eqz v4, :cond_7

    .line 16
    invoke-virtual {p1}, Lg/g/a/e/e/c;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 17
    invoke-virtual {p1}, Lg/g/a/e/e/c;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lg/g/a/e/e/c;->m()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_3

    :cond_6
    move-object v6, v8

    :goto_3
    const/4 v7, 0x0

    move-object v2, p0

    .line 18
    invoke-direct/range {v2 .. v7}, Lg/g/a/a/l/a;->a(Ljava/lang/String;Lg/g/a/e/e/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lg/g/a/a/i/g;

    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_7
    invoke-virtual {p1}, Lg/g/a/e/e/c;->h()Lg/g/a/e/e/o;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 21
    invoke-virtual {p1}, Lg/g/a/e/e/c;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {p1}, Lg/g/a/e/e/c;->c()Lg/g/a/e/e/j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    const-string v5, "OnDevice"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lg/g/a/a/l/a;->a(Ljava/lang/String;Lg/g/a/e/e/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lg/g/a/a/i/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_8
    invoke-virtual {p1}, Lg/g/a/e/e/c;->f()Lg/g/a/e/e/o;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 23
    invoke-virtual {p1}, Lg/g/a/e/e/c;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 24
    invoke-virtual {p1}, Lg/g/a/e/e/c;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_9

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_a

    invoke-virtual {p1}, Lg/g/a/e/e/c;->m()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_5

    :cond_a
    move-object v6, v8

    :goto_5
    const/4 v7, 0x0

    move-object v2, p0

    .line 25
    invoke-direct/range {v2 .. v7}, Lg/g/a/a/l/a;->a(Ljava/lang/String;Lg/g/a/e/e/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lg/g/a/a/i/g;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_b
    invoke-virtual {p1}, Lg/g/a/e/e/c;->n()Lg/g/a/e/e/o;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 28
    invoke-virtual {v3}, Lg/g/a/e/e/o;->a()J

    move-result-wide v4

    cmp-long v2, v4, v10

    if-eqz v2, :cond_c

    .line 29
    invoke-virtual {p1}, Lg/g/a/e/e/c;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lg/g/a/a/l/a;->a(Ljava/lang/String;Lg/g/a/e/e/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lg/g/a/a/i/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lg/g/a/a/i/g;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "events.toArray(arrayOfNulls(events.size))"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Lg/g/a/a/i/g;

    return-object v0
.end method
