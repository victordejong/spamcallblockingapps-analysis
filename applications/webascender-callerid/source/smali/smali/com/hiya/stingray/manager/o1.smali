.class public Lcom/hiya/stingray/manager/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/t/i1/e;

.field private final c:Lcom/hiya/stingray/t/i1/r0;

.field private final d:Lcom/hiya/stingray/t/i1/g;

.field private final e:Lcom/hiya/stingray/manager/h4;

.field private final f:Lcom/hiya/stingray/q/b/k;

.field private final g:Lcom/hiya/stingray/q/a/i;

.field private final h:Lcom/hiya/stingray/q/b/n;

.field private final i:Lcom/hiya/stingray/q/b/l;

.field private final j:Lcom/hiya/stingray/q/d/f;

.field private final k:Lcom/hiya/stingray/q/b/p;

.field private final l:Lcom/hiya/stingray/manager/o2;

.field private final m:Lcom/hiya/stingray/t/i1/f0;

.field private final n:Lcom/hiya/stingray/manager/w1;

.field private o:Lcom/hiya/stingray/q/b/s;

.field private p:Lcom/hiya/stingray/q/d/a;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/b/s;Lcom/hiya/stingray/t/i1/e;Lcom/hiya/stingray/t/i1/r0;Lcom/hiya/stingray/t/i1/g;Lcom/hiya/stingray/q/b/k;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/q/a/i;Lcom/hiya/stingray/q/b/n;Lcom/hiya/stingray/manager/h4;Landroid/content/Context;Lcom/hiya/stingray/q/b/l;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/q/b/p;Lcom/hiya/stingray/manager/o2;Lcom/hiya/stingray/t/i1/f0;Lcom/hiya/stingray/manager/w1;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/hiya/stingray/manager/o1;->o:Lcom/hiya/stingray/q/b/s;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/hiya/stingray/manager/o1;->b:Lcom/hiya/stingray/t/i1/e;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/hiya/stingray/manager/o1;->c:Lcom/hiya/stingray/t/i1/r0;

    move-object v1, p5

    .line 5
    iput-object v1, v0, Lcom/hiya/stingray/manager/o1;->f:Lcom/hiya/stingray/q/b/k;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lcom/hiya/stingray/manager/o1;->d:Lcom/hiya/stingray/t/i1/g;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/hiya/stingray/manager/o1;->p:Lcom/hiya/stingray/q/d/a;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/hiya/stingray/manager/o1;->g:Lcom/hiya/stingray/q/a/i;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/hiya/stingray/manager/o1;->h:Lcom/hiya/stingray/q/b/n;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/hiya/stingray/manager/o1;->e:Lcom/hiya/stingray/manager/h4;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/hiya/stingray/manager/o1;->a:Landroid/content/Context;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/hiya/stingray/manager/o1;->i:Lcom/hiya/stingray/q/b/l;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/hiya/stingray/manager/o1;->j:Lcom/hiya/stingray/q/d/f;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/hiya/stingray/manager/o1;->k:Lcom/hiya/stingray/q/b/p;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/hiya/stingray/manager/o1;->m:Lcom/hiya/stingray/t/i1/f0;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/hiya/stingray/manager/o1;->n:Lcom/hiya/stingray/manager/w1;

    return-void
.end method

.method private synthetic A(Ljava/lang/String;Ljava/util/Map;)Li/c/b0/b/a0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/manager/o1;->k0(Ljava/lang/String;Ljava/util/Map;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method static synthetic C(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic D(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-object p0
.end method

.method private synthetic E(Ljava/util/List;)Li/c/b0/b/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/hiya/stingray/manager/o1;->i0(Li/c/b0/b/v;Ljava/util/Map;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private synthetic G(ZZZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v10, Lcom/hiya/stingray/manager/c;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p9

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/hiya/stingray/manager/c;-><init>(Lcom/hiya/stingray/manager/o1;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;ZZZ)V

    move-object v0, p4

    invoke-static {p4, v10}, Lcom/google/common/collect/Lists;->l(Ljava/util/List;Lcom/google/common/base/g;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic I(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Lcom/hiya/stingray/manager/p;->a:Lcom/hiya/stingray/manager/p;

    invoke-static {p0, v0}, Lcom/google/common/collect/a0;->d(Ljava/lang/Iterable;Lcom/google/common/base/n;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private synthetic J(Lcom/hiya/stingray/q/c/a;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->d:Lcom/hiya/stingray/t/i1/g;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/i1/g;->a(Lcom/hiya/stingray/q/c/a;)Lcom/hiya/stingray/t/e0;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method static synthetic L(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-object p0
.end method

.method static synthetic M(JJLcom/hiya/stingray/t/e0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Lcom/hiya/stingray/t/e0;->b()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long p4, p0, p2

    if-gez p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic N(JLcom/hiya/stingray/t/e0;Lcom/hiya/stingray/t/e0;)I
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/hiya/stingray/t/e0;->b()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual {p3}, Lcom/hiya/stingray/t/e0;->b()J

    move-result-wide p2

    sub-long/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private synthetic O(ZZZLjava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/hiya/stingray/manager/h;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/manager/h;-><init>(Lcom/hiya/stingray/manager/o1;Ljava/util/Map;ZZZ)V

    invoke-static {p4, v6}, Lcom/google/common/collect/a0;->h(Ljava/lang/Iterable;Lcom/google/common/base/g;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private synthetic Q(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;ZZZLcom/hiya/stingray/q/c/d;)Lcom/hiya/stingray/t/d0;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/y0;->b()Lcom/hiya/stingray/t/y0$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/stingray/t/y0$a;->a()Lcom/hiya/stingray/t/y0;

    move-result-object v3

    .line 2
    invoke-virtual/range {p9 .. p9}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual/range {p9 .. p9}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/c/i/c;

    .line 4
    iget-object v3, v0, Lcom/hiya/stingray/manager/o1;->c:Lcom/hiya/stingray/t/i1/r0;

    invoke-virtual {v3, v1}, Lcom/hiya/stingray/t/i1/r0;->a(Lcom/hiya/stingray/q/c/i/c;)Lcom/hiya/stingray/t/y0;

    move-result-object v3

    move-object v8, v1

    move-object v9, v3

    goto :goto_0

    :cond_0
    move-object v9, v3

    move-object v8, v5

    .line 5
    :goto_0
    invoke-virtual/range {p9 .. p9}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual/range {p9 .. p9}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/hiya/stingray/q/c/i/b;

    :cond_1
    move-object v15, v5

    .line 7
    invoke-virtual/range {p9 .. p9}, Lcom/hiya/stingray/q/c/d;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/hiya/stingray/t/w0;

    .line 8
    iget-object v1, v0, Lcom/hiya/stingray/manager/o1;->n:Lcom/hiya/stingray/manager/w1;

    invoke-virtual/range {p9 .. p9}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p4

    invoke-virtual {v1, v3, v2}, Lcom/hiya/stingray/manager/w1;->d(Ljava/util/Set;Ljava/lang/String;)[Ljava/lang/Boolean;

    move-result-object v1

    .line 9
    iget-object v6, v0, Lcom/hiya/stingray/manager/o1;->b:Lcom/hiya/stingray/t/i1/e;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual/range {p9 .. p9}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p5

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    move-object/from16 v7, p9

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    .line 12
    invoke-virtual/range {v6 .. v17}, Lcom/hiya/stingray/t/i1/e;->g(Lcom/hiya/stingray/q/c/d;Lcom/hiya/stingray/q/c/i/c;Lcom/hiya/stingray/t/y0;ZZZZZLcom/hiya/stingray/q/c/i/b;Lcom/hiya/stingray/t/w0;Z)Lcom/hiya/stingray/t/d0;

    move-result-object v1

    return-object v1
.end method

.method private synthetic S(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;ZZZLcom/hiya/stingray/q/c/d;)Lcom/hiya/stingray/t/d0;
    .locals 14

    move-object v0, p0

    .line 1
    invoke-virtual/range {p9 .. p9}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/hiya/stingray/q/c/i/c;

    .line 2
    invoke-virtual/range {p9 .. p9}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/hiya/stingray/q/c/i/b;

    .line 3
    iget-object v1, v0, Lcom/hiya/stingray/manager/o1;->c:Lcom/hiya/stingray/t/i1/r0;

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/t/i1/r0;->a(Lcom/hiya/stingray/q/c/i/c;)Lcom/hiya/stingray/t/y0;

    move-result-object v5

    .line 4
    invoke-virtual/range {p9 .. p9}, Lcom/hiya/stingray/q/c/d;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/hiya/stingray/t/w0;

    .line 5
    iget-object v1, v0, Lcom/hiya/stingray/manager/o1;->n:Lcom/hiya/stingray/manager/w1;

    invoke-virtual/range {p9 .. p9}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p4

    invoke-virtual {v1, v3, v2}, Lcom/hiya/stingray/manager/w1;->d(Ljava/util/Set;Ljava/lang/String;)[Ljava/lang/Boolean;

    move-result-object v1

    .line 6
    iget-object v2, v0, Lcom/hiya/stingray/manager/o1;->b:Lcom/hiya/stingray/t/i1/e;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual/range {p9 .. p9}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v7, p5

    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v3, 0x1

    aget-object v1, v1, v3

    .line 8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move-object/from16 v3, p9

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 9
    invoke-virtual/range {v2 .. v13}, Lcom/hiya/stingray/t/i1/e;->g(Lcom/hiya/stingray/q/c/d;Lcom/hiya/stingray/q/c/i/c;Lcom/hiya/stingray/t/y0;ZZZZZLcom/hiya/stingray/q/c/i/b;Lcom/hiya/stingray/t/w0;Z)Lcom/hiya/stingray/t/d0;

    move-result-object v1

    return-object v1
.end method

.method private synthetic U(Ljava/util/Map;ZZZLcom/hiya/stingray/q/c/d;)Lcom/hiya/stingray/t/d0;
    .locals 13

    .line 1
    invoke-virtual/range {p5 .. p5}, Lcom/hiya/stingray/q/c/d;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/hiya/stingray/t/w0;

    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/hiya/stingray/manager/o1;->b:Lcom/hiya/stingray/t/i1/e;

    .line 3
    invoke-static {}, Lcom/hiya/stingray/t/y0;->b()Lcom/hiya/stingray/t/y0$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hiya/stingray/t/y0$a;->a()Lcom/hiya/stingray/t/y0;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p5

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    .line 4
    invoke-virtual/range {v1 .. v12}, Lcom/hiya/stingray/t/i1/e;->g(Lcom/hiya/stingray/q/c/d;Lcom/hiya/stingray/q/c/i/c;Lcom/hiya/stingray/t/y0;ZZZZZLcom/hiya/stingray/q/c/i/b;Lcom/hiya/stingray/t/w0;Z)Lcom/hiya/stingray/t/d0;

    move-result-object v1

    return-object v1
.end method

.method static synthetic W(Lcom/hiya/stingray/t/d0;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/stingray/util/p;->w(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/t/d0;->h()Lcom/hiya/stingray/t/b0;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/t/b0;->NOT_BLOCKED:Lcom/hiya/stingray/t/b0;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hiya/stingray/t/d0;->h()Lcom/hiya/stingray/t/b0;

    move-result-object p0

    sget-object v0, Lcom/hiya/stingray/t/b0;->WHITE_LISTED:Lcom/hiya/stingray/t/b0;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic X(Ljava/util/List;)Li/c/b0/b/a0;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/c0;->u()Lcom/google/common/collect/c0;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/t/d0;

    .line 3
    invoke-virtual {v1}, Lcom/hiya/stingray/t/d0;->s()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/hiya/stingray/util/p;->e(JZ)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/c0;->z(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method private synthetic Y(Ljava/util/Map;Lcom/google/common/collect/c0;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/g0;->f()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/common/collect/g0;->e()Ljava/util/HashMap;

    move-result-object v1

    .line 3
    invoke-direct {p0, p2, v0, v1, p1}, Lcom/hiya/stingray/manager/o1;->c(Lcom/google/common/collect/c0;Ljava/util/LinkedHashMap;Ljava/util/Map;Ljava/util/Map;)V

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 8
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hiya/stingray/t/d0;

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method static synthetic a(Lcom/hiya/stingray/manager/o1;Ljava/util/List;)Li/c/b0/b/v;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/o1;->g(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a0(Ljava/lang/String;Lg/g/b/c/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->m:Lcom/hiya/stingray/t/i1/f0;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/t/i1/f0;->c(Ljava/lang/String;Lg/g/b/c/f;)Lcom/hiya/stingray/q/c/i/c;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/manager/o1;->k:Lcom/hiya/stingray/q/b/p;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/hiya/stingray/q/c/i/c;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/hiya/stingray/q/b/p;->f(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method static synthetic b(Lcom/hiya/stingray/manager/o1;)Lcom/hiya/stingray/q/b/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/o1;->h:Lcom/hiya/stingray/q/b/n;

    return-object p0
.end method

.method private c(Lcom/google/common/collect/c0;Ljava/util/LinkedHashMap;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c0<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/d0;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/d0;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/t/d0;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/common/collect/c0;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/common/collect/c0;->x(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/stingray/t/d0;

    const/4 v4, 0x0

    .line 4
    invoke-interface {p4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 6
    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 7
    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 8
    invoke-virtual {v3}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 9
    invoke-virtual {v3}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 10
    invoke-virtual {v3}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v3}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_4
    invoke-static {}, Lcom/google/common/collect/g0;->f()Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 13
    invoke-virtual {v3}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p2, v1, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :goto_1
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 16
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 17
    invoke-virtual {v3}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 18
    invoke-virtual {v3}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 19
    :cond_5
    invoke-static {}, Lcom/google/common/collect/g0;->e()Ljava/util/HashMap;

    move-result-object v4

    .line 20
    invoke-virtual {v3}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-interface {p3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method static synthetic c0(Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hiya/stingray/manager/z0;->f:Lcom/hiya/stingray/manager/z0;

    invoke-static {p0, v0}, Lcom/google/common/collect/a0;->h(Ljava/lang/Iterable;Lcom/google/common/base/g;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private d(Li/c/b0/b/v;Li/c/b0/b/v;Li/c/b0/b/v;Li/c/b0/b/v;Li/c/b0/b/v;ZZZLi/c/b0/b/v;)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/d;",
            ">;>;",
            "Li/c/b0/b/v<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/q/c/i/c;",
            ">;>;",
            "Li/c/b0/b/v<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/q/c/i/b;",
            ">;>;",
            "Li/c/b0/b/v<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Li/c/b0/b/v<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;ZZZ",
            "Li/c/b0/b/v<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/hiya/stingray/t/w0;",
            ">;>;)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/d0;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/hiya/stingray/manager/v;

    move-object v7, p0

    move v0, p6

    move v1, p7

    move/from16 v2, p8

    invoke-direct {v6, p0, p6, p7, v2}, Lcom/hiya/stingray/manager/v;-><init>(Lcom/hiya/stingray/manager/o1;ZZZ)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p9

    invoke-static/range {v0 .. v6}, Li/c/b0/b/v;->combineLatest(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/k;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method private synthetic d0(Ljava/util/ArrayList;)Li/c/b0/b/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->h:Lcom/hiya/stingray/q/b/n;

    invoke-static {p1}, Lcom/google/common/collect/t0;->d(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/b/n;->d(Ljava/util/Set;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private e(Li/c/b0/b/v;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/a;",
            ">;>;)",
            "Li/c/b0/b/v<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/o1$g;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/o1$g;-><init>(Lcom/hiya/stingray/manager/o1;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/manager/o1$f;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/o1$f;-><init>(Lcom/hiya/stingray/manager/o1;)V

    .line 2
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Li/c/b0/b/v;->toList()Li/c/b0/b/e0;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/manager/o1$e;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/o1$e;-><init>(Lcom/hiya/stingray/manager/o1;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Li/c/b0/b/e0;->K()Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private synthetic f0(ZZZZLjava/util/LinkedHashMap;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-virtual/range {p5 .. p5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hiya/stingray/t/d0;

    invoke-virtual {v4}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p8

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hiya/stingray/q/c/i/b;

    .line 4
    iget-object v6, v0, Lcom/hiya/stingray/manager/o1;->n:Lcom/hiya/stingray/manager/w1;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hiya/stingray/t/d0;

    invoke-virtual {v7}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p6

    invoke-virtual {v6, v8, v7}, Lcom/hiya/stingray/manager/w1;->d(Ljava/util/Set;Ljava/lang/String;)[Ljava/lang/Boolean;

    move-result-object v6

    .line 5
    iget-object v9, v0, Lcom/hiya/stingray/manager/o1;->b:Lcom/hiya/stingray/t/i1/e;

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/hiya/stingray/t/d0;

    const/4 v7, 0x0

    aget-object v7, v6, v7

    .line 7
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hiya/stingray/t/d0;

    invoke-virtual {v7}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v15, p7

    invoke-interface {v15, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    .line 9
    invoke-virtual {v0, v4}, Lcom/hiya/stingray/manager/o1;->u(Lcom/hiya/stingray/q/c/i/b;)Z

    move-result v16

    const/4 v4, 0x1

    aget-object v4, v6, v4

    .line 10
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v17, p4

    .line 11
    invoke-virtual/range {v9 .. v18}, Lcom/hiya/stingray/t/i1/e;->c(Lcom/hiya/stingray/t/d0;ZZZZZZZZ)Lcom/hiya/stingray/t/d0;

    move-result-object v4

    .line 12
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 13
    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private g(Ljava/util/List;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/d;",
            ">;)",
            "Li/c/b0/b/v<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/q/c/i/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/q;->g(Ljava/lang/Iterable;)Lcom/google/common/collect/q;

    move-result-object p1

    sget-object v0, Lcom/hiya/stingray/manager/y0;->f:Lcom/hiya/stingray/manager/y0;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/common/collect/q;->k(Lcom/google/common/base/g;)Lcom/google/common/collect/q;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/q;->i()Lcom/google/common/collect/x;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/common/collect/t0;->i(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->k:Lcom/hiya/stingray/q/b/p;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/b/p;->d(Ljava/util/Set;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private synthetic v(ZZZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v10, Lcom/hiya/stingray/manager/s;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p9

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/hiya/stingray/manager/s;-><init>(Lcom/hiya/stingray/manager/o1;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;ZZZ)V

    move-object v0, p4

    invoke-static {p4, v10}, Lcom/google/common/collect/a0;->h(Ljava/lang/Iterable;Lcom/google/common/base/g;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic x(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method private synthetic y(Ljava/util/Map;Ljava/util/List;)Li/c/b0/b/a0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/hiya/stingray/manager/o1;->i0(Li/c/b0/b/v;Ljava/util/Map;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic B(Ljava/lang/String;Ljava/util/Map;)Li/c/b0/b/a0;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/o1;->A(Ljava/lang/String;Ljava/util/Map;)Li/c/b0/b/a0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic F(Ljava/util/List;)Li/c/b0/b/a0;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/o1;->E(Ljava/util/List;)Li/c/b0/b/a0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic H(ZZZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)Ljava/util/List;
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/hiya/stingray/manager/o1;->G(ZZZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic K(Lcom/hiya/stingray/q/c/a;)Li/c/b0/b/v;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/o1;->J(Lcom/hiya/stingray/q/c/a;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public synthetic P(ZZZLjava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/hiya/stingray/manager/o1;->O(ZZZLjava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic R(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;ZZZLcom/hiya/stingray/q/c/d;)Lcom/hiya/stingray/t/d0;
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/hiya/stingray/manager/o1;->Q(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;ZZZLcom/hiya/stingray/q/c/d;)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic T(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;ZZZLcom/hiya/stingray/q/c/d;)Lcom/hiya/stingray/t/d0;
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/hiya/stingray/manager/o1;->S(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;ZZZLcom/hiya/stingray/q/c/d;)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic V(Ljava/util/Map;ZZZLcom/hiya/stingray/q/c/d;)Lcom/hiya/stingray/t/d0;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/hiya/stingray/manager/o1;->U(Ljava/util/Map;ZZZLcom/hiya/stingray/q/c/d;)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic Z(Ljava/util/Map;Lcom/google/common/collect/c0;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/o1;->Y(Ljava/util/Map;Lcom/google/common/collect/c0;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b0(Ljava/lang/String;Lg/g/b/c/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/o1;->a0(Ljava/lang/String;Lg/g/b/c/f;)V

    return-void
.end method

.method public synthetic e0(Ljava/util/ArrayList;)Li/c/b0/b/a0;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/o1;->d0(Ljava/util/ArrayList;)Li/c/b0/b/a0;

    move-result-object p1

    return-object p1
.end method

.method f(Li/c/b0/b/v;Ljava/lang/String;)Li/c/b0/b/v;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/d;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/d0;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/o1$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/o1$b;-><init>(Lcom/hiya/stingray/manager/o1;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->startWithItem(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v4

    .line 3
    new-instance v0, Lcom/hiya/stingray/manager/o1$d;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/o1$d;-><init>(Lcom/hiya/stingray/manager/o1;)V

    .line 4
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/manager/o1$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/o1$c;-><init>(Lcom/hiya/stingray/manager/o1;)V

    .line 5
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->startWithItem(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v5

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->e:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/h4;->b()Z

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/hiya/stingray/manager/o1;->g:Lcom/hiya/stingray/q/a/i;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    .line 9
    invoke-virtual {v6}, Lcom/hiya/stingray/manager/o2;->n()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-interface {v1, p2, v6}, Lcom/hiya/stingray/q/a/i;->k(Ljava/lang/String;Z)Li/c/b0/b/v;

    move-result-object v1

    new-instance v6, Lcom/hiya/stingray/manager/f4;

    iget-object v7, p0, Lcom/hiya/stingray/manager/o1;->e:Lcom/hiya/stingray/manager/h4;

    iget-object v8, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    invoke-direct {v6, v7, v2, v8}, Lcom/hiya/stingray/manager/f4;-><init>(Lcom/hiya/stingray/manager/h4;ZLcom/hiya/stingray/manager/o2;)V

    .line 10
    invoke-virtual {v1, v6}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v1

    .line 11
    invoke-direct {p0, v1}, Lcom/hiya/stingray/manager/o1;->e(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v1

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v1, v6}, Li/c/b0/b/v;->startWithIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;

    move-result-object v1

    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v6

    invoke-virtual {v1, v6}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v6

    .line 13
    iget-object v1, p0, Lcom/hiya/stingray/manager/o1;->g:Lcom/hiya/stingray/q/a/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    .line 14
    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o2;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1, p2, v2}, Lcom/hiya/stingray/q/a/i;->d(Ljava/lang/String;Z)Li/c/b0/b/v;

    move-result-object p2

    new-instance v0, Lcom/hiya/stingray/manager/f4;

    iget-object v1, p0, Lcom/hiya/stingray/manager/o1;->e:Lcom/hiya/stingray/manager/h4;

    iget-object v2, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    invoke-direct {v0, v1, v3, v2}, Lcom/hiya/stingray/manager/f4;-><init>(Lcom/hiya/stingray/manager/h4;ZLcom/hiya/stingray/manager/o2;)V

    .line 15
    invoke-virtual {p2, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p2

    .line 16
    invoke-direct {p0, p2}, Lcom/hiya/stingray/manager/o1;->e(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p2

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2, v0}, Li/c/b0/b/v;->startWithIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;

    move-result-object p2

    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p2, v0}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v7

    .line 18
    iget-object p2, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->a:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/hiya/stingray/manager/o2;->u(Landroid/content/Context;)Z

    move-result v8

    .line 19
    iget-object p2, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->a:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/hiya/stingray/manager/o2;->B(Landroid/content/Context;)Z

    move-result v9

    .line 20
    iget-object p2, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->a:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/hiya/stingray/manager/o2;->y(Landroid/content/Context;)Z

    move-result v10

    .line 21
    iget-object p2, p0, Lcom/hiya/stingray/manager/o1;->i:Lcom/hiya/stingray/q/b/l;

    invoke-virtual {p2}, Lcom/hiya/stingray/q/b/l;->c()Li/c/b0/b/v;

    move-result-object v11

    move-object v2, p0

    move-object v3, p1

    .line 22
    invoke-direct/range {v2 .. v11}, Lcom/hiya/stingray/manager/o1;->d(Li/c/b0/b/v;Li/c/b0/b/v;Li/c/b0/b/v;Li/c/b0/b/v;Li/c/b0/b/v;ZZZLi/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public synthetic g0(ZZZZLjava/util/LinkedHashMap;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/hiya/stingray/manager/o1;->f0(ZZZZLjava/util/LinkedHashMap;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/util/Map;)Li/c/b0/b/v;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/t/d0;",
            "Ljava/lang/Integer;",
            ">;)",
            "Li/c/b0/b/v<",
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/t/d0;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->i(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/t/d0;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/d0;->s()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/hiya/stingray/manager/o1;->o:Lcom/hiya/stingray/q/b/s;

    .line 4
    invoke-virtual {v3}, Lcom/hiya/stingray/q/b/s;->h()Lcom/hiya/stingray/q/b/s$g;

    move-result-object v3

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Lcom/hiya/stingray/q/b/s$g;->f(I)Lcom/hiya/stingray/q/b/s$g;

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v3, v4}, Lcom/hiya/stingray/q/b/s$g;->e(Z)Lcom/hiya/stingray/q/b/s$g;

    .line 6
    invoke-virtual {v3, v1, v2}, Lcom/hiya/stingray/q/b/s$g;->g(J)Lcom/hiya/stingray/q/b/s$g;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v3, v1}, Lcom/hiya/stingray/q/b/s$g;->d(Z)Lcom/hiya/stingray/q/b/s$g;

    .line 8
    invoke-virtual {v3}, Lcom/hiya/stingray/q/b/s$g;->c()Li/c/b0/b/v;

    move-result-object v1

    invoke-virtual {v1}, Li/c/b0/b/v;->cache()Li/c/b0/b/v;

    move-result-object v1

    .line 9
    invoke-virtual {p0, v1, p1}, Lcom/hiya/stingray/manager/o1;->f(Li/c/b0/b/v;Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/manager/u;

    invoke-direct {v2, v0}, Lcom/hiya/stingray/manager/u;-><init>(Ljava/util/List;)V

    .line 10
    invoke-virtual {v1, v2}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/manager/e;

    invoke-direct {v1, p0, p2}, Lcom/hiya/stingray/manager/e;-><init>(Lcom/hiya/stingray/manager/o1;Ljava/util/Map;)V

    .line 11
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p2

    new-instance v0, Lcom/hiya/stingray/manager/g;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/manager/g;-><init>(Lcom/hiya/stingray/manager/o1;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public h0(I)Li/c/b0/b/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->i:Lcom/hiya/stingray/q/b/l;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/b/l;->e(I)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;IJ)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/e0;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->f:Lcom/hiya/stingray/q/b/k;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hiya/stingray/q/b/k;->b(Ljava/util/List;IJ)Li/c/b0/b/v;

    move-result-object p1

    sget-object p2, Lcom/hiya/stingray/manager/t;->f:Lcom/hiya/stingray/manager/t;

    .line 2
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->filter(Li/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object p1

    sget-object p2, Lcom/hiya/stingray/manager/k;->f:Lcom/hiya/stingray/manager/k;

    .line 3
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->flatMapIterable(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    iget-object p2, p0, Lcom/hiya/stingray/manager/o1;->d:Lcom/hiya/stingray/t/i1/g;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/hiya/stingray/manager/t0;

    invoke-direct {p3, p2}, Lcom/hiya/stingray/manager/t0;-><init>(Lcom/hiya/stingray/t/i1/g;)V

    .line 4
    invoke-virtual {p1, p3}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Li/c/b0/b/v;->toList()Li/c/b0/b/e0;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Li/c/b0/b/e0;->K()Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method i0(Li/c/b0/b/v;Ljava/util/Map;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/d0;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/t/d0;",
            "Ljava/lang/Integer;",
            ">;)",
            "Li/c/b0/b/v<",
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/t/d0;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hiya/stingray/manager/i;->f:Lcom/hiya/stingray/manager/i;

    .line 2
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/manager/q;

    invoke-direct {v0, p0, p2}, Lcom/hiya/stingray/manager/q;-><init>(Lcom/hiya/stingray/manager/o1;Ljava/util/Map;)V

    .line 3
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/t/d0;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    const/16 v0, 0x1f4

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/hiya/stingray/manager/o1;->k(Ljava/lang/String;I)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public j0(Ljava/lang/String;Lg/g/b/c/f;)Li/c/b0/b/e;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lcom/hiya/stingray/manager/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/stingray/manager/j;-><init>(Lcom/hiya/stingray/manager/o1;Ljava/lang/String;Lg/g/b/c/f;)V

    invoke-static {v0}, Li/c/b0/b/e;->s(Li/c/b0/d/a;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;I)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Li/c/b0/b/v<",
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/t/d0;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->o:Lcom/hiya/stingray/q/b/s;

    .line 2
    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/s;->h()Lcom/hiya/stingray/q/b/s$g;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p2}, Lcom/hiya/stingray/q/b/s$g;->f(I)Lcom/hiya/stingray/q/b/s$g;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {v0, p2}, Lcom/hiya/stingray/q/b/s$g;->e(Z)Lcom/hiya/stingray/q/b/s$g;

    const/4 p2, 0x1

    .line 5
    invoke-virtual {v0, p2}, Lcom/hiya/stingray/q/b/s$g;->d(Z)Lcom/hiya/stingray/q/b/s$g;

    .line 6
    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/s$g;->c()Li/c/b0/b/v;

    move-result-object p2

    invoke-virtual {p2}, Li/c/b0/b/v;->cache()Li/c/b0/b/v;

    move-result-object p2

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/hiya/stingray/manager/o1;->f(Li/c/b0/b/v;Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/manager/f;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/manager/f;-><init>(Lcom/hiya/stingray/manager/o1;)V

    .line 8
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/exception/c;

    sget-object v0, Lg/g/a/a/c;->MATERIALIZE_CALL_LOGS:Lg/g/a/a/c;

    invoke-direct {p2, v0}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    .line 9
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public k0(Ljava/lang/String;Ljava/util/Map;)Li/c/b0/b/v;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/t/d0;",
            "Ljava/lang/Integer;",
            ">;)",
            "Li/c/b0/b/v<",
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/t/d0;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->g:Lcom/hiya/stingray/q/a/i;

    iget-object v1, p0, Lcom/hiya/stingray/manager/o1;->e:Lcom/hiya/stingray/manager/h4;

    .line 2
    invoke-virtual {v1}, Lcom/hiya/stingray/manager/h4;->b()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/o2;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, v1}, Lcom/hiya/stingray/q/a/i;->k(Ljava/lang/String;Z)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/manager/f4;

    iget-object v4, p0, Lcom/hiya/stingray/manager/o1;->e:Lcom/hiya/stingray/manager/h4;

    iget-object v5, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    invoke-direct {v1, v4, v2, v5}, Lcom/hiya/stingray/manager/f4;-><init>(Lcom/hiya/stingray/manager/h4;ZLcom/hiya/stingray/manager/o2;)V

    .line 3
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Lcom/hiya/stingray/manager/o1;->e(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    .line 5
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/hiya/stingray/manager/o1;->g:Lcom/hiya/stingray/q/a/i;

    iget-object v4, p0, Lcom/hiya/stingray/manager/o1;->e:Lcom/hiya/stingray/manager/h4;

    .line 7
    invoke-virtual {v4}, Lcom/hiya/stingray/manager/h4;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v4}, Lcom/hiya/stingray/manager/o2;->o()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1, p1, v2}, Lcom/hiya/stingray/q/a/i;->d(Ljava/lang/String;Z)Li/c/b0/b/v;

    move-result-object p1

    new-instance v1, Lcom/hiya/stingray/manager/f4;

    iget-object v2, p0, Lcom/hiya/stingray/manager/o1;->e:Lcom/hiya/stingray/manager/h4;

    iget-object v4, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    invoke-direct {v1, v2, v3, v4}, Lcom/hiya/stingray/manager/f4;-><init>(Lcom/hiya/stingray/manager/h4;ZLcom/hiya/stingray/manager/o2;)V

    .line 8
    invoke-virtual {p1, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/o1;->e(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    .line 10
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {p1, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    .line 11
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 12
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 13
    invoke-static {p2}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p2

    sget-object v2, Lcom/hiya/stingray/manager/r;->f:Lcom/hiya/stingray/manager/r;

    .line 14
    invoke-virtual {p2, v2}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p2

    new-instance v2, Lcom/hiya/stingray/manager/m;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/manager/m;-><init>(Lcom/hiya/stingray/manager/o1;)V

    .line 15
    invoke-virtual {p2, v2}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p2

    .line 16
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {p2, v2}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p2

    .line 17
    iget-object v2, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    iget-object v3, p0, Lcom/hiya/stingray/manager/o1;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/manager/o2;->u(Landroid/content/Context;)Z

    move-result v6

    .line 18
    iget-object v2, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    iget-object v3, p0, Lcom/hiya/stingray/manager/o1;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/manager/o2;->B(Landroid/content/Context;)Z

    move-result v7

    .line 19
    iget-object v2, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    iget-object v3, p0, Lcom/hiya/stingray/manager/o1;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/manager/o2;->y(Landroid/content/Context;)Z

    move-result v8

    .line 20
    iget-object v2, p0, Lcom/hiya/stingray/manager/o1;->j:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v2}, Lcom/hiya/stingray/q/d/f;->s()Z

    move-result v9

    .line 21
    invoke-static {v1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/manager/o;

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/hiya/stingray/manager/o;-><init>(Lcom/hiya/stingray/manager/o1;ZZZZ)V

    invoke-static {v1, v0, p1, p2, v2}, Li/c/b0/b/v;->zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/i;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;ILjava/lang/String;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/d0;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/hiya/stingray/util/p;->w(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/manager/o1;->b:Lcom/hiya/stingray/t/i1/e;

    iget-object p3, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->a:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/hiya/stingray/manager/o2;->y(Landroid/content/Context;)Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/hiya/stingray/t/i1/e;->h(Ljava/lang/String;Z)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 4
    invoke-static {v0}, Lcom/google/common/collect/Lists;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/hiya/stingray/manager/o1;->m(Ljava/util/List;ILjava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/util/List;ILjava/lang/String;)Li/c/b0/b/v;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/d0;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/manager/o1;->o:Lcom/hiya/stingray/q/b/s;

    .line 3
    invoke-virtual {v2}, Lcom/hiya/stingray/q/b/s;->h()Lcom/hiya/stingray/q/b/s$g;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Lcom/hiya/stingray/q/b/s$g;->h(Ljava/util/List;)Lcom/hiya/stingray/q/b/s$g;

    .line 5
    invoke-virtual {v2, p2}, Lcom/hiya/stingray/q/b/s$g;->f(I)Lcom/hiya/stingray/q/b/s$g;

    .line 6
    invoke-virtual {v2, v1}, Lcom/hiya/stingray/q/b/s$g;->e(Z)Lcom/hiya/stingray/q/b/s$g;

    .line 7
    invoke-virtual {v2, v0}, Lcom/hiya/stingray/q/b/s$g;->d(Z)Lcom/hiya/stingray/q/b/s$g;

    .line 8
    invoke-virtual {v2}, Lcom/hiya/stingray/q/b/s$g;->c()Li/c/b0/b/v;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Li/c/b0/b/v;->cache()Li/c/b0/b/v;

    move-result-object p2

    .line 10
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {p2, v2}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v3

    .line 11
    new-instance p2, Lcom/hiya/stingray/manager/o1$a;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/manager/o1$a;-><init>(Lcom/hiya/stingray/manager/o1;)V

    invoke-virtual {v3, p2}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p2

    .line 12
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {p2, v2}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v4

    .line 13
    iget-object p2, p0, Lcom/hiya/stingray/manager/o1;->h:Lcom/hiya/stingray/q/b/n;

    invoke-static {p1}, Lcom/google/common/collect/t0;->d(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/hiya/stingray/q/b/n;->d(Ljava/util/Set;)Li/c/b0/b/v;

    move-result-object p1

    .line 14
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v5

    .line 15
    iget-object p1, p0, Lcom/hiya/stingray/manager/o1;->g:Lcom/hiya/stingray/q/a/i;

    iget-object p2, p0, Lcom/hiya/stingray/manager/o1;->e:Lcom/hiya/stingray/manager/h4;

    .line 16
    invoke-virtual {p2}, Lcom/hiya/stingray/manager/h4;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {p2}, Lcom/hiya/stingray/manager/o2;->n()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1, p3, p2}, Lcom/hiya/stingray/q/a/i;->k(Ljava/lang/String;Z)Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/manager/f4;

    iget-object v2, p0, Lcom/hiya/stingray/manager/o1;->e:Lcom/hiya/stingray/manager/h4;

    iget-object v6, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    invoke-direct {p2, v2, v0, v6}, Lcom/hiya/stingray/manager/f4;-><init>(Lcom/hiya/stingray/manager/h4;ZLcom/hiya/stingray/manager/o2;)V

    .line 17
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/o1;->e(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    .line 19
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v6

    .line 20
    iget-object p1, p0, Lcom/hiya/stingray/manager/o1;->g:Lcom/hiya/stingray/q/a/i;

    iget-object p2, p0, Lcom/hiya/stingray/manager/o1;->e:Lcom/hiya/stingray/manager/h4;

    .line 21
    invoke-virtual {p2}, Lcom/hiya/stingray/manager/h4;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {p2}, Lcom/hiya/stingray/manager/o2;->o()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p1, p3, v0}, Lcom/hiya/stingray/q/a/i;->d(Ljava/lang/String;Z)Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/manager/f4;

    iget-object p3, p0, Lcom/hiya/stingray/manager/o1;->e:Lcom/hiya/stingray/manager/h4;

    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    invoke-direct {p2, p3, v1, v0}, Lcom/hiya/stingray/manager/f4;-><init>(Lcom/hiya/stingray/manager/h4;ZLcom/hiya/stingray/manager/o2;)V

    .line 22
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/o1;->e(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    .line 24
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v7

    .line 25
    iget-object p1, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    iget-object p2, p0, Lcom/hiya/stingray/manager/o1;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/manager/o2;->u(Landroid/content/Context;)Z

    move-result p1

    .line 26
    iget-object p2, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    iget-object p3, p0, Lcom/hiya/stingray/manager/o1;->a:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/hiya/stingray/manager/o2;->B(Landroid/content/Context;)Z

    move-result p2

    .line 27
    iget-object p3, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->a:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/hiya/stingray/manager/o2;->y(Landroid/content/Context;)Z

    move-result p3

    .line 28
    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->i:Lcom/hiya/stingray/q/b/l;

    .line 29
    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/l;->c()Li/c/b0/b/v;

    move-result-object v8

    new-instance v9, Lcom/hiya/stingray/manager/z;

    invoke-direct {v9, p0, p1, p2, p3}, Lcom/hiya/stingray/manager/z;-><init>(Lcom/hiya/stingray/manager/o1;ZZZ)V

    .line 30
    invoke-static/range {v3 .. v9}, Li/c/b0/b/v;->zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/k;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/d0;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/o1;->j(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    sget-object v0, Lcom/hiya/stingray/manager/n;->f:Lcom/hiya/stingray/manager/n;

    .line 2
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/d0;",
            ">;>;"
        }
    .end annotation

    const/16 v0, 0x1f4

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/hiya/stingray/manager/o1;->p(Ljava/lang/String;I)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/String;I)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/d0;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->o:Lcom/hiya/stingray/q/b/s;

    .line 2
    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/s;->h()Lcom/hiya/stingray/q/b/s$g;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p2}, Lcom/hiya/stingray/q/b/s$g;->f(I)Lcom/hiya/stingray/q/b/s$g;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {v0, p2}, Lcom/hiya/stingray/q/b/s$g;->e(Z)Lcom/hiya/stingray/q/b/s$g;

    const/4 p2, 0x1

    .line 5
    invoke-virtual {v0, p2}, Lcom/hiya/stingray/q/b/s$g;->d(Z)Lcom/hiya/stingray/q/b/s$g;

    .line 6
    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/s$g;->c()Li/c/b0/b/v;

    move-result-object p2

    invoke-virtual {p2}, Li/c/b0/b/v;->cache()Li/c/b0/b/v;

    move-result-object p2

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/hiya/stingray/manager/o1;->f(Li/c/b0/b/v;Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/exception/c;

    sget-object v0, Lg/g/a/a/c;->MATERIALIZE_CALL_LOGS:Lg/g/a/a/c;

    invoke-direct {p2, v0}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    .line 8
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public q(Z)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/t/e0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/hiya/stingray/manager/o1;->r(ZLcom/hiya/stingray/util/i$a;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public r(ZLcom/hiya/stingray/util/i$a;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/hiya/stingray/util/i$a;",
            ")",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/t/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->f:Lcom/hiya/stingray/q/b/k;

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/manager/o1;->p:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {p1}, Lcom/hiya/stingray/q/d/a;->n()J

    move-result-wide v1

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p2, p1}, Lcom/hiya/stingray/q/b/k;->c(JLcom/hiya/stingray/util/i$a;Ljava/lang/Integer;)Li/c/b0/b/e0;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Li/c/b0/b/e0;->K()Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/manager/l;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/manager/l;-><init>(Lcom/hiya/stingray/manager/o1;)V

    .line 3
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/String;IJJ)Li/c/b0/b/e0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJ)",
            "Li/c/b0/b/e0<",
            "Lcom/google/common/base/j<",
            "Lcom/hiya/stingray/t/e0;",
            ">;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, p3

    :goto_0
    sub-long/2addr v2, p5

    .line 2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/hiya/stingray/manager/o1;->i(Ljava/lang/String;IJ)Li/c/b0/b/v;

    move-result-object p1

    sget-object p2, Lcom/hiya/stingray/manager/w;->f:Lcom/hiya/stingray/manager/w;

    .line 3
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->flatMapIterable(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/manager/y;

    invoke-direct {p2, p3, p4, p5, p6}, Lcom/hiya/stingray/manager/y;-><init>(JJ)V

    .line 4
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->filter(Li/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/manager/d;

    invoke-direct {p2, p3, p4}, Lcom/hiya/stingray/manager/d;-><init>(J)V

    .line 5
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->sorted(Ljava/util/Comparator;)Li/c/b0/b/v;

    move-result-object p1

    sget-object p2, Lcom/hiya/stingray/manager/s0;->f:Lcom/hiya/stingray/manager/s0;

    .line 6
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/google/common/base/j;->a()Lcom/google/common/base/j;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->first(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/util/List;I)Li/c/b0/b/v;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/d0;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    iget-object v2, p0, Lcom/hiya/stingray/manager/o1;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/manager/o2;->u(Landroid/content/Context;)Z

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    iget-object v3, p0, Lcom/hiya/stingray/manager/o1;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/manager/o2;->B(Landroid/content/Context;)Z

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/hiya/stingray/manager/o1;->l:Lcom/hiya/stingray/manager/o2;

    iget-object v4, p0, Lcom/hiya/stingray/manager/o1;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/hiya/stingray/manager/o2;->y(Landroid/content/Context;)Z

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/hiya/stingray/manager/o1;->o:Lcom/hiya/stingray/q/b/s;

    .line 7
    invoke-virtual {v4}, Lcom/hiya/stingray/q/b/s;->h()Lcom/hiya/stingray/q/b/s$g;

    move-result-object v4

    .line 8
    invoke-virtual {v4, p1}, Lcom/hiya/stingray/q/b/s$g;->h(Ljava/util/List;)Lcom/hiya/stingray/q/b/s$g;

    .line 9
    invoke-virtual {v4, p2}, Lcom/hiya/stingray/q/b/s$g;->f(I)Lcom/hiya/stingray/q/b/s$g;

    .line 10
    invoke-virtual {v4, v1}, Lcom/hiya/stingray/q/b/s$g;->e(Z)Lcom/hiya/stingray/q/b/s$g;

    .line 11
    invoke-virtual {v4, v1}, Lcom/hiya/stingray/q/b/s$g;->d(Z)Lcom/hiya/stingray/q/b/s$g;

    .line 12
    invoke-virtual {v4}, Lcom/hiya/stingray/q/b/s$g;->c()Li/c/b0/b/v;

    move-result-object p1

    iget-object p2, p0, Lcom/hiya/stingray/manager/o1;->i:Lcom/hiya/stingray/q/b/l;

    .line 13
    invoke-virtual {p2}, Lcom/hiya/stingray/q/b/l;->c()Li/c/b0/b/v;

    move-result-object p2

    new-instance v1, Lcom/hiya/stingray/manager/x;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/hiya/stingray/manager/x;-><init>(Lcom/hiya/stingray/manager/o1;ZZZ)V

    invoke-virtual {p1, p2, v1}, Li/c/b0/b/v;->zipWith(Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method protected u(Lcom/hiya/stingray/q/c/i/b;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/b;->Q0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/b;->O0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public synthetic w(ZZZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)Ljava/util/List;
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/hiya/stingray/manager/o1;->v(ZZZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic z(Ljava/util/Map;Ljava/util/List;)Li/c/b0/b/a0;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/o1;->y(Ljava/util/Map;Ljava/util/List;)Li/c/b0/b/a0;

    move-result-object p1

    return-object p1
.end method
