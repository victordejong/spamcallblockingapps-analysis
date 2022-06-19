.class public final Lg/g/b/a/g/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lg/g/b/a/g/a/b;->a:I

    const/16 v1, 0x8

    new-array v2, v1, [Ljava/lang/Integer;

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const/16 v0, 0x3eb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v2, v1

    const/16 v0, 0x3ec

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v2, v1

    const/16 v0, 0x3ed

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v2, v1

    const/16 v0, 0x3ee

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v2, v1

    const/16 v0, 0x3ef

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v2, v1

    invoke-static {v2}, Lkotlin/s/k;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/g/b/a/g/a/b;->b:Ljava/util/List;

    return-void
.end method

.method private final a(Lg/g/b/c/m;)Lg/g/b/c/f;
    .locals 29

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/m;->e()I

    move-result v1

    invoke-direct {v0, v1}, Lg/g/b/a/g/a/b;->c(I)Lg/g/b/c/q;

    move-result-object v10

    .line 2
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v6, ""

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/m;->d()Ljava/lang/String;

    move-result-object v1

    const-string v3, "~Disp9"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/m;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/m;->e()I

    move-result v1

    iget v2, v0, Lg/g/b/a/g/a/b;->a:I

    if-ne v1, v2, :cond_2

    move-object v12, v6

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/m;->a()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v12, v1

    .line 5
    :goto_2
    new-instance v1, Lg/g/b/c/f;

    move-object v2, v1

    .line 6
    sget-object v3, Lg/g/b/c/i;->UNKNOWN:Lg/g/b/c/i;

    .line 7
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/m;->e()I

    move-result v4

    .line 8
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/m;->a()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-direct {v0, v10}, Lg/g/b/a/g/a/b;->b(Lg/g/b/c/q;)Lg/g/b/c/o;

    move-result-object v11

    .line 10
    new-instance v7, Lg/g/b/c/e;

    move-object/from16 v16, v7

    invoke-direct {v7, v6, v6, v6}, Lg/g/b/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/m;->b()Ljava/lang/String;

    move-result-object v18

    const-wide v19, 0x7fffffffffffffffL

    .line 12
    sget-object v21, Lg/g/b/c/r;->LOCAL_OVERRIDE:Lg/g/b/c/r;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/high16 v27, 0x380000

    const/16 v28, 0x0

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v17, "localOverride"

    .line 14
    invoke-direct/range {v2 .. v28}, Lg/g/b/c/f;-><init>(Lg/g/b/c/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/q;Lg/g/b/c/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/e;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/r;JLjava/lang/String;Lg/g/b/c/h;ZILkotlin/w/c/g;)V

    return-object v1
.end method

.method private final b(Lg/g/b/c/q;)Lg/g/b/c/o;
    .locals 1

    .line 1
    sget-object v0, Lg/g/b/a/g/a/a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2
    sget-object p1, Lg/g/b/c/o;->NONE:Lg/g/b/c/o;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lg/g/b/c/o;->STOP:Lg/g/b/c/o;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lg/g/b/c/o;->WARN:Lg/g/b/c/o;

    :goto_0
    return-object p1
.end method

.method private final c(I)Lg/g/b/c/q;
    .locals 1

    .line 1
    iget v0, p0, Lg/g/b/a/g/a/b;->a:I

    if-ne p1, v0, :cond_0

    sget-object p1, Lg/g/b/c/q;->OK:Lg/g/b/c/q;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lg/g/b/a/g/a/b;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lg/g/b/c/q;->FRAUD:Lg/g/b/c/q;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lg/g/b/c/q;->SPAM:Lg/g/b/c/q;

    :goto_0
    return-object p1
.end method

.method private final e(Lg/g/b/c/f;Lg/g/b/c/m;)Lg/g/b/c/f;
    .locals 31

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p2 .. p2}, Lg/g/b/c/m;->e()I

    move-result v1

    iget v2, v0, Lg/g/b/a/g/a/b;->a:I

    const-string v3, ""

    if-ne v1, v2, :cond_0

    move-object v7, v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lg/g/b/c/m;->a()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 2
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lg/g/b/c/m;->e()I

    move-result v1

    iget v2, v0, Lg/g/b/a/g/a/b;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_2

    .line 3
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object v1

    invoke-static {v1}, Lg/g/b/a/g/a/c;->a(Lg/g/b/c/q;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v14, v1

    goto :goto_4

    .line 5
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lg/g/b/c/m;->e()I

    move-result v1

    iget v2, v0, Lg/g/b/a/g/a/b;->a:I

    if-ne v1, v2, :cond_4

    :cond_3
    move-object v14, v3

    goto :goto_4

    .line 6
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lg/g/b/c/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual/range {p2 .. p2}, Lg/g/b/c/m;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "~Disp9"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_6

    invoke-virtual/range {p2 .. p2}, Lg/g/b/c/m;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 7
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lg/g/b/c/m;->e()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    invoke-virtual/range {p2 .. p2}, Lg/g/b/c/m;->e()I

    move-result v1

    iget v2, v0, Lg/g/b/a/g/a/b;->a:I

    if-eq v1, v2, :cond_7

    move-object v14, v7

    goto :goto_4

    .line 8
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v4, 0x1

    :cond_8
    if-eqz v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 9
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->u()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lg/g/b/c/m;->e()I

    move-result v2

    if-eq v1, v2, :cond_9

    move-object v4, v3

    move-object v15, v4

    move-object/from16 v16, v15

    goto :goto_5

    .line 10
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->h()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->g()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->i()Ljava/lang/String;

    move-result-object v4

    move-object v15, v1

    move-object/from16 v16, v2

    .line 13
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lg/g/b/c/m;->e()I

    move-result v1

    invoke-direct {v0, v1}, Lg/g/b/a/g/a/b;->c(I)Lg/g/b/c/q;

    move-result-object v12

    .line 14
    new-instance v1, Lg/g/b/c/f;

    .line 15
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->n()Lg/g/b/c/i;

    move-result-object v5

    .line 16
    invoke-virtual/range {p2 .. p2}, Lg/g/b/c/m;->e()I

    move-result v6

    .line 17
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->r()Ljava/lang/String;

    move-result-object v9

    .line 18
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->j()Ljava/lang/String;

    move-result-object v10

    .line 19
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->k()Ljava/lang/String;

    move-result-object v11

    .line 20
    invoke-direct {v0, v12}, Lg/g/b/a/g/a/b;->b(Lg/g/b/c/q;)Lg/g/b/c/o;

    move-result-object v13

    .line 21
    invoke-static {v12}, Lg/g/b/a/g/a/c;->a(Lg/g/b/c/q;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v17, v3

    goto :goto_6

    :cond_a
    move-object/from16 v17, v4

    .line 22
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->c()Lg/g/b/c/e;

    move-result-object v18

    .line 23
    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/f;->m()Ljava/lang/String;

    move-result-object v20

    const-wide v21, 0x7fffffffffffffffL

    .line 24
    sget-object v23, Lg/g/b/c/r;->LOCAL_OVERRIDE:Lg/g/b/c/r;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/high16 v29, 0x380000

    const/16 v30, 0x0

    const-string v8, ""

    const-string v19, "localOverride"

    move-object v4, v1

    .line 26
    invoke-direct/range {v4 .. v30}, Lg/g/b/c/f;-><init>(Lg/g/b/c/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/q;Lg/g/b/c/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/e;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/r;JLjava/lang/String;Lg/g/b/c/h;ZILkotlin/w/c/g;)V

    return-object v1
.end method


# virtual methods
.method public final d(Lg/g/b/c/f;Lg/g/b/c/m;)Lg/g/b/c/f;
    .locals 1

    const-string v0, "localOverrideId"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lg/g/b/a/g/a/b;->e(Lg/g/b/c/f;Lg/g/b/c/m;)Lg/g/b/c/f;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lg/g/b/a/g/a/b;->a(Lg/g/b/c/m;)Lg/g/b/c/f;

    move-result-object p1

    :goto_0
    return-object p1
.end method
