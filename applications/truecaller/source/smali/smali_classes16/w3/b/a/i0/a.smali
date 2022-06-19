.class public Lw3/b/a/i0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lw3/b/a/i0/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lw3/b/a/i0/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lw3/b/a/i0/b;
    .locals 15

    if-eqz p0, :cond_21

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_21

    .line 2
    sget-object v0, Lw3/b/a/i0/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/b/a/i0/b;

    if-nez v0, :cond_20

    .line 3
    new-instance v0, Lw3/b/a/i0/c;

    invoke-direct {v0}, Lw3/b/a/i0/c;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    new-array v9, v8, [I

    const/4 v10, 0x0

    move v1, v10

    :goto_0
    if-ge v1, v7, :cond_1f

    aput v1, v9, v10

    .line 5
    invoke-static {p0, v9}, Lw3/b/a/i0/a;->c(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v1

    .line 6
    aget v11, v9, v10

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 8
    :cond_0
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x27

    if-eq v3, v4, :cond_1d

    const/16 v4, 0x4b

    const/4 v5, 0x2

    if-eq v3, v4, :cond_1c

    const/16 v4, 0x4d

    const/4 v6, 0x3

    const/4 v12, 0x4

    if-eq v3, v4, :cond_19

    const/16 v4, 0x53

    if-eq v3, v4, :cond_18

    const/16 v4, 0x61

    if-eq v3, v4, :cond_17

    const/16 v4, 0x68

    if-eq v3, v4, :cond_16

    const/16 v4, 0x6b

    if-eq v3, v4, :cond_15

    const/16 v4, 0x6d

    if-eq v3, v4, :cond_14

    const/16 v4, 0x73

    if-eq v3, v4, :cond_13

    const/16 v4, 0x47

    if-eq v3, v4, :cond_12

    const/16 v4, 0x48

    if-eq v3, v4, :cond_11

    const/16 v4, 0x59

    const/4 v13, 0x0

    if-eq v3, v4, :cond_8

    const/16 v14, 0x5a

    if-eq v3, v14, :cond_5

    const/16 v14, 0x64

    if-eq v3, v14, :cond_4

    const/16 v14, 0x65

    if-eq v3, v14, :cond_3

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    .line 9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal pattern component: "

    invoke-static {v0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-lt v2, v12, :cond_1

    .line 10
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->m:Lw3/b/a/d;

    invoke-virtual {v0, v1}, Lw3/b/a/i0/c;->n(Lw3/b/a/d;)Lw3/b/a/i0/c;

    goto/16 :goto_2

    .line 11
    :cond_1
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->m:Lw3/b/a/d;

    invoke-virtual {v0, v1}, Lw3/b/a/i0/c;->l(Lw3/b/a/d;)Lw3/b/a/i0/c;

    goto/16 :goto_2

    .line 12
    :pswitch_1
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->g:Lw3/b/a/d;

    invoke-virtual {v0, v1, v2, v6}, Lw3/b/a/i0/c;->e(Lw3/b/a/d;II)Lw3/b/a/i0/c;

    goto/16 :goto_2

    .line 13
    :pswitch_2
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->d:Lw3/b/a/d;

    invoke-virtual {v0, v1, v2, v2}, Lw3/b/a/i0/c;->m(Lw3/b/a/d;II)Lw3/b/a/i0/c;

    goto/16 :goto_2

    :pswitch_3
    if-lt v2, v12, :cond_2

    .line 14
    new-instance v1, Lw3/b/a/i0/c$k;

    invoke-direct {v1, v10, v13}, Lw3/b/a/i0/c$k;-><init>(ILjava/util/Map;)V

    .line 15
    iput-object v13, v0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 16
    iget-object v2, v0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v1, v0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 18
    :cond_2
    new-instance v1, Lw3/b/a/i0/c$k;

    invoke-direct {v1, v8, v13}, Lw3/b/a/i0/c$k;-><init>(ILjava/util/Map;)V

    .line 19
    iput-object v13, v0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 20
    iget-object v2, v0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v2, v0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 22
    :pswitch_4
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->l:Lw3/b/a/d;

    invoke-virtual {v0, v1, v2, v5}, Lw3/b/a/i0/c;->e(Lw3/b/a/d;II)Lw3/b/a/i0/c;

    goto/16 :goto_2

    .line 23
    :cond_3
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->m:Lw3/b/a/d;

    invoke-virtual {v0, v1, v2, v8}, Lw3/b/a/i0/c;->e(Lw3/b/a/d;II)Lw3/b/a/i0/c;

    goto/16 :goto_2

    .line 24
    :cond_4
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->i:Lw3/b/a/d;

    invoke-virtual {v0, v1, v2, v5}, Lw3/b/a/i0/c;->e(Lw3/b/a/d;II)Lw3/b/a/i0/c;

    goto/16 :goto_2

    :cond_5
    if-ne v2, v8, :cond_6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x2

    const-string v3, "Z"

    move-object v1, v0

    .line 25
    invoke-virtual/range {v1 .. v6}, Lw3/b/a/i0/c;->o(Ljava/lang/String;Ljava/lang/String;ZII)Lw3/b/a/i0/c;

    goto/16 :goto_2

    :cond_6
    if-ne v2, v5, :cond_7

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x2

    const-string v3, "Z"

    move-object v1, v0

    .line 26
    invoke-virtual/range {v1 .. v6}, Lw3/b/a/i0/c;->o(Ljava/lang/String;Ljava/lang/String;ZII)Lw3/b/a/i0/c;

    goto/16 :goto_2

    .line 27
    :cond_7
    sget-object v1, Lw3/b/a/i0/c$j;->a:Lw3/b/a/i0/c$j;

    .line 28
    iput-object v13, v0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 29
    iget-object v2, v0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v2, v0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_8
    :pswitch_5
    const/16 v1, 0x78

    if-ne v2, v5, :cond_b

    add-int/lit8 v2, v11, 0x1

    if-ge v2, v7, :cond_9

    .line 31
    aget v2, v9, v10

    add-int/2addr v2, v8

    aput v2, v9, v10

    .line 32
    invoke-static {p0, v9}, Lw3/b/a/i0/a;->c(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lw3/b/a/i0/a;->b(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v8

    .line 33
    aget v4, v9, v10

    sub-int/2addr v4, v8

    aput v4, v9, v10

    goto :goto_1

    :cond_9
    move v2, v8

    :goto_1
    if-eq v3, v1, :cond_a

    .line 34
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    invoke-virtual {v1}, Lw3/b/a/e0/a;->u()I

    move-result v1

    add-int/lit8 v1, v1, -0x1e

    .line 35
    new-instance v3, Lw3/b/a/i0/c$m;

    sget-object v4, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v4, Lw3/b/a/d;->f:Lw3/b/a/d;

    invoke-direct {v3, v4, v1, v2}, Lw3/b/a/i0/c$m;-><init>(Lw3/b/a/d;IZ)V

    .line 36
    iput-object v13, v0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 37
    iget-object v1, v0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v1, v0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 39
    :cond_a
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    .line 40
    iget-object v3, v1, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 41
    invoke-virtual {v3}, Lw3/b/a/a;->N()Lw3/b/a/c;

    move-result-object v3

    .line 42
    iget-wide v4, v1, Lw3/b/a/e0/e;->a:J

    .line 43
    invoke-virtual {v3, v4, v5}, Lw3/b/a/c;->c(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1e

    .line 44
    new-instance v3, Lw3/b/a/i0/c$m;

    sget-object v4, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v4, Lw3/b/a/d;->k:Lw3/b/a/d;

    invoke-direct {v3, v4, v1, v2}, Lw3/b/a/i0/c$m;-><init>(Lw3/b/a/d;IZ)V

    .line 45
    iput-object v13, v0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 46
    iget-object v1, v0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v1, v0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    const/16 v5, 0x9

    add-int/lit8 v6, v11, 0x1

    if-ge v6, v7, :cond_d

    .line 48
    aget v6, v9, v10

    add-int/2addr v6, v8

    aput v6, v9, v10

    .line 49
    invoke-static {p0, v9}, Lw3/b/a/i0/a;->c(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lw3/b/a/i0/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    move v5, v2

    .line 50
    :cond_c
    aget v6, v9, v10

    sub-int/2addr v6, v8

    aput v6, v9, v10

    :cond_d
    if-eq v3, v4, :cond_10

    if-eq v3, v1, :cond_f

    const/16 v1, 0x79

    if-eq v3, v1, :cond_e

    goto/16 :goto_2

    .line 51
    :cond_e
    invoke-virtual {v0, v2, v5}, Lw3/b/a/i0/c;->s(II)Lw3/b/a/i0/c;

    goto/16 :goto_2

    .line 52
    :cond_f
    invoke-virtual {v0, v2, v5}, Lw3/b/a/i0/c;->r(II)Lw3/b/a/i0/c;

    goto/16 :goto_2

    .line 53
    :cond_10
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->c:Lw3/b/a/d;

    invoke-virtual {v0, v1, v2, v5}, Lw3/b/a/i0/c;->e(Lw3/b/a/d;II)Lw3/b/a/i0/c;

    goto/16 :goto_2

    .line 54
    :cond_11
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->r:Lw3/b/a/d;

    invoke-virtual {v0, v1, v2, v5}, Lw3/b/a/i0/c;->e(Lw3/b/a/d;II)Lw3/b/a/i0/c;

    goto/16 :goto_2

    .line 55
    :cond_12
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    invoke-virtual {v0, v1}, Lw3/b/a/i0/c;->n(Lw3/b/a/d;)Lw3/b/a/i0/c;

    goto/16 :goto_2

    .line 56
    :cond_13
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->v:Lw3/b/a/d;

    invoke-virtual {v0, v1, v2, v5}, Lw3/b/a/i0/c;->e(Lw3/b/a/d;II)Lw3/b/a/i0/c;

    goto :goto_2

    .line 57
    :cond_14
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->t:Lw3/b/a/d;

    invoke-virtual {v0, v1, v2, v5}, Lw3/b/a/i0/c;->e(Lw3/b/a/d;II)Lw3/b/a/i0/c;

    goto :goto_2

    .line 58
    :cond_15
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->q:Lw3/b/a/d;

    invoke-virtual {v0, v1, v2, v5}, Lw3/b/a/i0/c;->e(Lw3/b/a/d;II)Lw3/b/a/i0/c;

    goto :goto_2

    .line 59
    :cond_16
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->p:Lw3/b/a/d;

    invoke-virtual {v0, v1, v2, v5}, Lw3/b/a/i0/c;->e(Lw3/b/a/d;II)Lw3/b/a/i0/c;

    goto :goto_2

    .line 60
    :cond_17
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->n:Lw3/b/a/d;

    invoke-virtual {v0, v1}, Lw3/b/a/i0/c;->n(Lw3/b/a/d;)Lw3/b/a/i0/c;

    goto :goto_2

    .line 61
    :cond_18
    invoke-virtual {v0, v2, v2}, Lw3/b/a/i0/c;->h(II)Lw3/b/a/i0/c;

    goto :goto_2

    :cond_19
    if-lt v2, v6, :cond_1b

    if-lt v2, v12, :cond_1a

    .line 62
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->h:Lw3/b/a/d;

    invoke-virtual {v0, v1}, Lw3/b/a/i0/c;->n(Lw3/b/a/d;)Lw3/b/a/i0/c;

    goto :goto_2

    .line 63
    :cond_1a
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->h:Lw3/b/a/d;

    invoke-virtual {v0, v1}, Lw3/b/a/i0/c;->l(Lw3/b/a/d;)Lw3/b/a/i0/c;

    goto :goto_2

    .line 64
    :cond_1b
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->h:Lw3/b/a/d;

    invoke-virtual {v0, v1, v2, v5}, Lw3/b/a/i0/c;->e(Lw3/b/a/d;II)Lw3/b/a/i0/c;

    goto :goto_2

    .line 65
    :cond_1c
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->o:Lw3/b/a/d;

    invoke-virtual {v0, v1, v2, v5}, Lw3/b/a/i0/c;->e(Lw3/b/a/d;II)Lw3/b/a/i0/c;

    goto :goto_2

    .line 66
    :cond_1d
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v8, :cond_1e

    .line 68
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lw3/b/a/i0/c;->i(C)Lw3/b/a/i0/c;

    goto :goto_2

    .line 69
    :cond_1e
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lw3/b/a/i0/c;->j(Ljava/lang/String;)Lw3/b/a/i0/c;

    :goto_2
    add-int/lit8 v1, v11, 0x1

    goto/16 :goto_0

    .line 70
    :cond_1f
    :goto_3
    invoke-virtual {v0}, Lw3/b/a/i0/c;->x()Lw3/b/a/i0/b;

    move-result-object v0

    .line 71
    sget-object v1, Lw3/b/a/i0/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    const/16 v3, 0x1f4

    if-ge v2, v3, :cond_20

    .line 72
    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw3/b/a/i0/b;

    if-eqz p0, :cond_20

    move-object v0, p0

    :cond_20
    return-object v0

    .line 73
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid pattern specification"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x77
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/4 v2, 0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 p0, 0x2

    if-gt v0, p0, :cond_0

    :sswitch_1
    return v2

    :cond_0
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x44 -> :sswitch_1
        0x46 -> :sswitch_1
        0x48 -> :sswitch_1
        0x4b -> :sswitch_1
        0x4d -> :sswitch_0
        0x53 -> :sswitch_1
        0x57 -> :sswitch_1
        0x59 -> :sswitch_1
        0x63 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x68 -> :sswitch_1
        0x6b -> :sswitch_1
        0x6d -> :sswitch_1
        0x73 -> :sswitch_1
        0x77 -> :sswitch_1
        0x78 -> :sswitch_1
        0x79 -> :sswitch_1
    .end sparse-switch
.end method

.method public static c(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    aget v2, p1, v1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5a

    const/16 v6, 0x41

    if-lt v4, v6, :cond_0

    if-le v4, v5, :cond_1

    :cond_0
    const/16 v7, 0x7a

    const/16 v8, 0x61

    if-lt v4, v8, :cond_2

    if-gt v4, v7, :cond_2

    .line 5
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v3, :cond_8

    .line 6
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_8

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v5

    goto :goto_0

    :cond_2
    const/16 v4, 0x27

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v1

    :goto_1
    if-ge v2, v3, :cond_8

    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v4, :cond_4

    add-int/lit8 v11, v2, 0x1

    if-ge v11, v3, :cond_3

    .line 10
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v4, :cond_3

    .line 11
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v11

    goto :goto_2

    :cond_3
    xor-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    if-nez v9, :cond_7

    if-lt v10, v6, :cond_5

    if-le v10, v5, :cond_6

    :cond_5
    if-lt v10, v8, :cond_7

    if-gt v10, v7, :cond_7

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 12
    :cond_7
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :cond_8
    :goto_3
    aput v2, p1, v1

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
